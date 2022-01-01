import 'package:astro_tak/app/data/api_helper.dart';
import 'package:astro_tak/app/models/location/location_data.dart';
import 'package:astro_tak/app/models/panchang/panchang_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ApiHelper _apiHelper = Get.find();

  final dateController = TextEditingController();
  final locationController = TextEditingController();

  DateTime selectedDateTime = DateTime.now();

  final RxList<LocationData> _locationsList = <LocationData>[].obs;
  List<LocationData> get locationsList => _locationsList;
  set locationsList(List<LocationData> v) => _locationsList.assignAll(v);

  final Rx<PanchangData> _panchang = PanchangData().obs;
  PanchangData get panchang => _panchang.value;
  set panchang(PanchangData v) => _panchang.value = v;

  Map<String, dynamic> body = {};

  @override
  void onReady() {
    super.onReady();

    locationListener();
  }

  @override
  void onClose() {
    super.onClose();

    locationController
      ..removeListener(() {})
      ..dispose();
  }

  void onDateSelect() {
    Utils.datePicker(
      (dateTime) {
        selectedDateTime = dateTime;

        dateController.text = dateTime.formatedDate(
          dateFormat: 'dd MMMM, yyyy',
        );

        body['day'] = selectedDateTime.day.toString();
        body['month'] = selectedDateTime.month.toString();
        body['year'] = selectedDateTime.year.toString();

        if (locationController.text.isNotEmpty && body.containsKey('placeId')) {
          getPanchang();
        }
      },
      firstDate: DateTime(2000),
    );
  }

  void getLocation() {
    _apiHelper
        .getLocation(
      locationController.text.toLowerCase(),
    )
        .then(
      (value) async {
        locationsList = value.body?.data ?? <LocationData>[];
      },
    ).catchError((e) {
      locationsList.clear();
    });
  }

  void locationListener() {
    locationController.addListener(() {
      if (locationController.text.isEmpty) {
        locationsList.clear();
      } else {
        getLocation();
      }
    });
  }

  onLocationSelect(LocationData locationData) {
    Utils.closeKeyboard();

    body['placeId'] = locationData.placeId;

    if (dateController.text.isNotEmpty) {
      getPanchang();
    }
  }

  void getPanchang() {
    _apiHelper.getHoroscope(body).futureValue(
      (value) {
        panchang = value.data ?? PanchangData();
      },
      retryFunction: getPanchang,
    );
  }
}
