import 'package:collection/collection.dart';

class HinduMaah {
  bool? adhikStatus;
  String? purnimanta;
  String? amanta;
  int? amantaId;
  int? purnimantaId;

  HinduMaah({
    this.adhikStatus,
    this.purnimanta,
    this.amanta,
    this.amantaId,
    this.purnimantaId,
  });

  @override
  String toString() {
    return 'HinduMaah(adhikStatus: $adhikStatus, purnimanta: $purnimanta, amanta: $amanta, amantaId: $amantaId, purnimantaId: $purnimantaId)';
  }

  factory HinduMaah.fromJson(Map<String, dynamic> json) => HinduMaah(
        adhikStatus: json['adhik_status'] as bool?,
        purnimanta: json['purnimanta'] as String?,
        amanta: json['amanta'] as String?,
        amantaId: json['amanta_id'] as int?,
        purnimantaId: json['purnimanta_id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'adhik_status': adhikStatus,
        'purnimanta': purnimanta,
        'amanta': amanta,
        'amanta_id': amantaId,
        'purnimanta_id': purnimantaId,
      };

  HinduMaah copyWith({
    bool? adhikStatus,
    String? purnimanta,
    String? amanta,
    int? amantaId,
    int? purnimantaId,
  }) {
    return HinduMaah(
      adhikStatus: adhikStatus ?? this.adhikStatus,
      purnimanta: purnimanta ?? this.purnimanta,
      amanta: amanta ?? this.amanta,
      amantaId: amantaId ?? this.amantaId,
      purnimantaId: purnimantaId ?? this.purnimantaId,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! HinduMaah) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      adhikStatus.hashCode ^
      purnimanta.hashCode ^
      amanta.hashCode ^
      amantaId.hashCode ^
      purnimantaId.hashCode;
}
