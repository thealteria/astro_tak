import 'package:collection/collection.dart';

import 'astrologer_data.dart';

class Astrologer {
  String? httpStatus;
  int? httpStatusCode;
  bool? success;
  String? message;
  String? apiName;
  List<AstrologerData>? data;

  Astrologer({
    this.httpStatus,
    this.httpStatusCode,
    this.success,
    this.message,
    this.apiName,
    this.data,
  });

  @override
  String toString() {
    return 'Astrologer(httpStatus: $httpStatus, httpStatusCode: $httpStatusCode, success: $success, message: $message, apiName: $apiName, data: $data)';
  }

  factory Astrologer.fromJson(Map<String, dynamic> json) => Astrologer(
        httpStatus: json['httpStatus'] as String?,
        httpStatusCode: json['httpStatusCode'] as int?,
        success: json['success'] as bool?,
        message: json['message'] as String?,
        apiName: json['apiName'] as String?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => AstrologerData.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'httpStatus': httpStatus,
        'httpStatusCode': httpStatusCode,
        'success': success,
        'message': message,
        'apiName': apiName,
        'data': data?.map((e) => e.toJson()).toList(),
      };

  Astrologer copyWith({
    String? httpStatus,
    int? httpStatusCode,
    bool? success,
    String? message,
    String? apiName,
    List<AstrologerData>? data,
  }) {
    return Astrologer(
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
    if (other is! Astrologer) return false;
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
