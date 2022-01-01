import 'package:astro_tak/app/models/astrologer/astrologer.dart';
import 'package:astro_tak/app/models/location/location.dart';
import 'package:get/get.dart';

export 'package:astro_tak/app/common/util/extensions.dart';
export 'package:astro_tak/app/common/util/utils.dart';

abstract class ApiHelper {
  Future<Response<Astrologer>> getAstrologers();
  Future<Response<Location>> getLocation(String query);
}
