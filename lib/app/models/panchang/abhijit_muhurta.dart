import 'package:collection/collection.dart';

class AbhijitMuhurta {
  String? start;
  String? end;

  AbhijitMuhurta({this.start, this.end});

  @override
  String toString() => 'AbhijitMuhurta(start: $start, end: $end)';

  factory AbhijitMuhurta.fromJson(Map<String, dynamic> json) {
    return AbhijitMuhurta(
      start: json['start'] as String?,
      end: json['end'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'start': start,
        'end': end,
      };

  AbhijitMuhurta copyWith({
    String? start,
    String? end,
  }) {
    return AbhijitMuhurta(
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AbhijitMuhurta) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => start.hashCode ^ end.hashCode;
}
