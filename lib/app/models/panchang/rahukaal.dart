import 'package:collection/collection.dart';

class Rahukaal {
  String? start;
  String? end;

  Rahukaal({this.start, this.end});

  @override
  String toString() => 'Rahukaal(start: $start, end: $end)';

  factory Rahukaal.fromJson(Map<String, dynamic> json) => Rahukaal(
        start: json['start'] as String?,
        end: json['end'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'start': start,
        'end': end,
      };

  Rahukaal copyWith({
    String? start,
    String? end,
  }) {
    return Rahukaal(
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Rahukaal) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => start.hashCode ^ end.hashCode;
}
