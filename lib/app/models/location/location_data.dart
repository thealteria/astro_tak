import 'package:collection/collection.dart';

class LocationData {
  String? placeName;
  String? placeId;

  LocationData({this.placeName, this.placeId});

  @override
  String toString() => 'Datum(placeName: $placeName, placeId: $placeId)';

  factory LocationData.fromJson(Map<String, dynamic> json) => LocationData(
        placeName: json['placeName'] as String?,
        placeId: json['placeId'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'placeName': placeName,
        'placeId': placeId,
      };

  LocationData copyWith({
    String? placeName,
    String? placeId,
  }) {
    return LocationData(
      placeName: placeName ?? this.placeName,
      placeId: placeId ?? this.placeId,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! LocationData) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => placeName.hashCode ^ placeId.hashCode;
}
