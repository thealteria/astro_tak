import 'dart:async';

import 'package:astro_tak/app/common/constants.dart';
import 'package:astro_tak/app/models/astrologer/astrologer.dart';
import 'package:astro_tak/app/models/location/location.dart';
import 'package:get/get.dart';

import 'api_helper.dart';
import 'interceptor.dart';

class ApiHelperImpl extends GetConnect with ApiHelper {
  @override
  void onInit() {
    httpClient.baseUrl = Constants.BASE_URL;
    httpClient.timeout = Constants.timeout;

    addRequestModifier();

    httpClient.addResponseModifier(
      (request, response) => interceptor(
        httpClient,
        request,
        response,
      ),
    );
  }

  void addRequestModifier() {
    httpClient.addRequestModifier<dynamic>((request) {
      printInfo(
        info: 'REQUEST ║ ${request.method.toUpperCase()}\n'
            'url: ${request.url}\n'
            'Headers: ${request.headers}\n'
            'Body: ${request.files?.toString() ?? ''}\n',
      );

      return request;
    });
  }

  @override
  Future<Response<Astrologer>> getAstrologers() {
    return get(
      Constants.ASTROLOGER,
      decoder: (data) => Astrologer.fromJson(data),
    );
  }

  @override
  Future<Response<Location>> getLocation(String query) {
    return get(
      '${Constants.LOCATION}?inputPlace=$query',
      decoder: (data) => Location.fromJson(data),
    );
  }
}
