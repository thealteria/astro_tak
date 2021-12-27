import 'package:astro_tak/app/common/util/exports.dart';

class Validators {
  const Validators._();

  static String? validateEmpty(String? v) {
    if (v!.isEmpty) {
      return Strings.fieldCantBeEmpty;
    } else {
      return null;
    }
  }
}
