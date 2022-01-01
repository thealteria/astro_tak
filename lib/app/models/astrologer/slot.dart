import 'package:collection/collection.dart';

class Slot {
  String? toFormat;
  String? fromFormat;
  String? from;
  String? to;

  Slot({this.toFormat, this.fromFormat, this.from, this.to});

  @override
  String toString() {
    return 'Slot(toFormat: $toFormat, fromFormat: $fromFormat, from: $from, to: $to)';
  }

  factory Slot.fromJson(Map<String, dynamic> json) => Slot(
        toFormat: json['toFormat'] as String?,
        fromFormat: json['fromFormat'] as String?,
        from: json['from'] as String?,
        to: json['to'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'toFormat': toFormat,
        'fromFormat': fromFormat,
        'from': from,
        'to': to,
      };

  Slot copyWith({
    String? toFormat,
    String? fromFormat,
    String? from,
    String? to,
  }) {
    return Slot(
      toFormat: toFormat ?? this.toFormat,
      fromFormat: fromFormat ?? this.fromFormat,
      from: from ?? this.from,
      to: to ?? this.to,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Slot) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      toFormat.hashCode ^ fromFormat.hashCode ^ from.hashCode ^ to.hashCode;
}
