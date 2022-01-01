import 'package:collection/collection.dart';

class YamghantKaal {
  String? start;
  String? end;

  YamghantKaal({this.start, this.end});

  @override
  String toString() => 'YamghantKaal(start: $start, end: $end)';

  factory YamghantKaal.fromJson(Map<String, dynamic> json) => YamghantKaal(
        start: json['start'] as String?,
        end: json['end'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'start': start,
        'end': end,
      };

  YamghantKaal copyWith({
    String? start,
    String? end,
  }) {
    return YamghantKaal(
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! YamghantKaal) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => start.hashCode ^ end.hashCode;
}
