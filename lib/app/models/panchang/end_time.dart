import 'package:collection/collection.dart';

class EndTime {
  int? hour;
  int? minute;
  int? second;

  EndTime({this.hour, this.minute, this.second});

  @override
  String toString() {
    return 'EndTime(hour: $hour, minute: $minute, second: $second)';
  }

  factory EndTime.fromJson(Map<String, dynamic> json) => EndTime(
        hour: json['hour'] as int?,
        minute: json['minute'] as int?,
        second: json['second'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'hour': hour,
        'minute': minute,
        'second': second,
      };

  EndTime copyWith({
    int? hour,
    int? minute,
    int? second,
  }) {
    return EndTime(
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
      second: second ?? this.second,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! EndTime) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => hour.hashCode ^ minute.hashCode ^ second.hashCode;
}
