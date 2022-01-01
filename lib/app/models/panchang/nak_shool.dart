import 'package:collection/collection.dart';

class NakShool {
  String? direction;
  String? remedies;

  NakShool({this.direction, this.remedies});

  @override
  String toString() {
    return 'NakShool(direction: $direction, remedies: $remedies)';
  }

  factory NakShool.fromJson(Map<String, dynamic> json) => NakShool(
        direction: json['direction'] as String?,
        remedies: json['remedies'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'direction': direction,
        'remedies': remedies,
      };

  NakShool copyWith({
    String? direction,
    String? remedies,
  }) {
    return NakShool(
      direction: direction ?? this.direction,
      remedies: remedies ?? this.remedies,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! NakShool) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => direction.hashCode ^ remedies.hashCode;
}
