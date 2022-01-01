import 'package:collection/collection.dart';

class GuliKaal {
  String? start;
  String? end;

  GuliKaal({this.start, this.end});

  @override
  String toString() => 'GuliKaal(start: $start, end: $end)';

  factory GuliKaal.fromJson(Map<String, dynamic> json) => GuliKaal(
        start: json['start'] as String?,
        end: json['end'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'start': start,
        'end': end,
      };

  GuliKaal copyWith({
    String? start,
    String? end,
  }) {
    return GuliKaal(
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! GuliKaal) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => start.hashCode ^ end.hashCode;
}
