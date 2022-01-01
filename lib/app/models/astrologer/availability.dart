import 'package:collection/collection.dart';

import 'slot.dart';

class Availability {
  List<String>? days;
  Slot? slot;

  Availability({this.days, this.slot});

  @override
  String toString() => 'Availability(days: $days, slot: $slot)';

  factory Availability.fromJson(Map<String, dynamic> json) => Availability(
        days: json['days'].cast<String>(),
        slot: json['slot'] == null
            ? null
            : Slot.fromJson(
                json['slot'] as Map<String, dynamic>,
              ),
      );

  Map<String, dynamic> toJson() => {
        'days': days,
        'slot': slot?.toJson(),
      };

  Availability copyWith({
    List<String>? days,
    Slot? slot,
  }) {
    return Availability(
      days: days ?? this.days,
      slot: slot ?? this.slot,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Availability) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => days.hashCode ^ slot.hashCode;
}
