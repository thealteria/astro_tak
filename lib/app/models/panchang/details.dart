import 'package:collection/collection.dart';

class Details {
  int? tithiNumber;
  String? tithiName;
  String? special;
  String? summary;
  String? deity;

  Details({
    this.tithiNumber,
    this.tithiName,
    this.special,
    this.summary,
    this.deity,
  });

  @override
  String toString() {
    return 'Details(tithiNumber: $tithiNumber, tithiName: $tithiName, special: $special, summary: $summary, deity: $deity)';
  }

  factory Details.fromJson(Map<String, dynamic> json) => Details(
        tithiNumber: json['tithi_number'] as int?,
        tithiName: json['tithi_name'] as String?,
        special: json['special'] as String?,
        summary: json['summary'] as String?,
        deity: json['deity'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'tithi_number': tithiNumber,
        'tithi_name': tithiName,
        'special': special,
        'summary': summary,
        'deity': deity,
      };

  Details copyWith({
    int? tithiNumber,
    String? tithiName,
    String? special,
    String? summary,
    String? deity,
  }) {
    return Details(
      tithiNumber: tithiNumber ?? this.tithiNumber,
      tithiName: tithiName ?? this.tithiName,
      special: special ?? this.special,
      summary: summary ?? this.summary,
      deity: deity ?? this.deity,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Details) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      tithiNumber.hashCode ^
      tithiName.hashCode ^
      special.hashCode ^
      summary.hashCode ^
      deity.hashCode;
}
