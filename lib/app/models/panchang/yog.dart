import 'package:collection/collection.dart';

import 'details.dart';
import 'end_time.dart';

class Yog {
  Details? details;
  EndTime? endTime;
  int? endTimeMs;

  Yog({this.details, this.endTime, this.endTimeMs});

  @override
  String toString() {
    return 'Yog(details: $details, endTime: $endTime, endTimeMs: $endTimeMs)';
  }

  factory Yog.fromJson(Map<String, dynamic> json) => Yog(
        details: json['details'] == null
            ? null
            : Details.fromJson(json['details'] as Map<String, dynamic>),
        endTime: json['end_time'] == null
            ? null
            : EndTime.fromJson(json['end_time'] as Map<String, dynamic>),
        endTimeMs: json['end_time_ms'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'details': details?.toJson(),
        'end_time': endTime?.toJson(),
        'end_time_ms': endTimeMs,
      };

  Yog copyWith({
    Details? details,
    EndTime? endTime,
    int? endTimeMs,
  }) {
    return Yog(
      details: details ?? this.details,
      endTime: endTime ?? this.endTime,
      endTimeMs: endTimeMs ?? this.endTimeMs,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Yog) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => details.hashCode ^ endTime.hashCode ^ endTimeMs.hashCode;
}
