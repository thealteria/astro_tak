import 'package:collection/collection.dart';

import 'panchang_data.dart';

class Panchang {
  String? httpStatus;
  int? httpStatusCode;
  bool? success;
  String? message;
  String? apiName;
  PanchangData? data;

  Panchang({
    this.httpStatus,
    this.httpStatusCode,
    this.success,
    this.message,
    this.apiName,
    this.data,
  });

  @override
  String toString() {
    return 'Panchang(httpStatus: $httpStatus, httpStatusCode: $httpStatusCode, success: $success, message: $message, apiName: $apiName, data: $data)';
  }

  factory Panchang.fromJson(Map<String, dynamic> json) => Panchang(
        httpStatus: json['httpStatus'] as String?,
        httpStatusCode: json['httpStatusCode'] as int?,
        success: json['success'] as bool?,
        message: json['message'] as String?,
        apiName: json['apiName'] as String?,
        data: json['data'] == null
            ? null
            : PanchangData.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'httpStatus': httpStatus,
        'httpStatusCode': httpStatusCode,
        'success': success,
        'message': message,
        'apiName': apiName,
        'data': data?.toJson(),
      };

  Panchang copyWith({
    String? httpStatus,
    int? httpStatusCode,
    bool? success,
    String? message,
    String? apiName,
    PanchangData? data,
  }) {
    return Panchang(
      httpStatus: httpStatus ?? this.httpStatus,
      httpStatusCode: httpStatusCode ?? this.httpStatusCode,
      success: success ?? this.success,
      message: message ?? this.message,
      apiName: apiName ?? this.apiName,
      data: data ?? this.data,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Panchang) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      httpStatus.hashCode ^
      httpStatusCode.hashCode ^
      success.hashCode ^
      message.hashCode ^
      apiName.hashCode ^
      data.hashCode;
}
