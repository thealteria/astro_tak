import 'package:collection/collection.dart';

import 'abhijit_muhurta.dart';
import 'guli_kaal.dart';
import 'hindu_maah.dart';
import 'karan.dart';
import 'nak_shool.dart';
import 'nakshatra.dart';
import 'rahukaal.dart';
import 'tithi.dart';
import 'yamghant_kaal.dart';
import 'yog.dart';

class PanchangData {
  String? day;
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? vedicSunrise;
  String? vedicSunset;
  Tithi? tithi;
  Nakshatra? nakshatra;
  Yog? yog;
  Karan? karan;
  HinduMaah? hinduMaah;
  String? paksha;
  String? ritu;
  String? sunSign;
  String? moonSign;
  String? ayana;
  String? panchangYog;
  int? vikramSamvat;
  int? shakaSamvat;
  String? vkramSamvatName;
  String? shakaSamvatName;
  String? dishaShool;
  String? dishaShoolRemedies;
  NakShool? nakShool;
  String? moonNivas;
  AbhijitMuhurta? abhijitMuhurta;
  Rahukaal? rahukaal;
  GuliKaal? guliKaal;
  YamghantKaal? yamghantKaal;

  PanchangData({
    this.day,
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.vedicSunrise,
    this.vedicSunset,
    this.tithi,
    this.nakshatra,
    this.yog,
    this.karan,
    this.hinduMaah,
    this.paksha,
    this.ritu,
    this.sunSign,
    this.moonSign,
    this.ayana,
    this.panchangYog,
    this.vikramSamvat,
    this.shakaSamvat,
    this.vkramSamvatName,
    this.shakaSamvatName,
    this.dishaShool,
    this.dishaShoolRemedies,
    this.nakShool,
    this.moonNivas,
    this.abhijitMuhurta,
    this.rahukaal,
    this.guliKaal,
    this.yamghantKaal,
  });

  @override
  String toString() {
    return 'Data(day: $day, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, vedicSunrise: $vedicSunrise, vedicSunset: $vedicSunset, tithi: $tithi, nakshatra: $nakshatra, yog: $yog, karan: $karan, hinduMaah: $hinduMaah, paksha: $paksha, ritu: $ritu, sunSign: $sunSign, moonSign: $moonSign, ayana: $ayana, panchangYog: $panchangYog, vikramSamvat: $vikramSamvat, shakaSamvat: $shakaSamvat, vkramSamvatName: $vkramSamvatName, shakaSamvatName: $shakaSamvatName, dishaShool: $dishaShool, dishaShoolRemedies: $dishaShoolRemedies, nakShool: $nakShool, moonNivas: $moonNivas, abhijitMuhurta: $abhijitMuhurta, rahukaal: $rahukaal, guliKaal: $guliKaal, yamghantKaal: $yamghantKaal)';
  }

  factory PanchangData.fromJson(Map<String, dynamic> json) => PanchangData(
        day: json['day'] as String?,
        sunrise: json['sunrise'] as String?,
        sunset: json['sunset'] as String?,
        moonrise: json['moonrise'] as String?,
        moonset: json['moonset'] as String?,
        vedicSunrise: json['vedic_sunrise'] as String?,
        vedicSunset: json['vedic_sunset'] as String?,
        tithi: json['tithi'] == null
            ? null
            : Tithi.fromJson(json['tithi'] as Map<String, dynamic>),
        nakshatra: json['nakshatra'] == null
            ? null
            : Nakshatra.fromJson(json['nakshatra'] as Map<String, dynamic>),
        yog: json['yog'] == null
            ? null
            : Yog.fromJson(json['yog'] as Map<String, dynamic>),
        karan: json['karan'] == null
            ? null
            : Karan.fromJson(json['karan'] as Map<String, dynamic>),
        hinduMaah: json['hindu_maah'] == null
            ? null
            : HinduMaah.fromJson(json['hindu_maah'] as Map<String, dynamic>),
        paksha: json['paksha'] as String?,
        ritu: json['ritu'] as String?,
        sunSign: json['sun_sign'] as String?,
        moonSign: json['moon_sign'] as String?,
        ayana: json['ayana'] as String?,
        panchangYog: json['panchang_yog'] as String?,
        vikramSamvat: json['vikram_samvat'] as int?,
        shakaSamvat: json['shaka_samvat'] as int?,
        vkramSamvatName: json['vkram_samvat_name'] as String?,
        shakaSamvatName: json['shaka_samvat_name'] as String?,
        dishaShool: json['disha_shool'] as String?,
        dishaShoolRemedies: json['disha_shool_remedies'] as String?,
        nakShool: json['nak_shool'] == null
            ? null
            : NakShool.fromJson(json['nak_shool'] as Map<String, dynamic>),
        moonNivas: json['moon_nivas'] as String?,
        abhijitMuhurta: json['abhijit_muhurta'] == null
            ? null
            : AbhijitMuhurta.fromJson(
                json['abhijit_muhurta'] as Map<String, dynamic>),
        rahukaal: json['rahukaal'] == null
            ? null
            : Rahukaal.fromJson(json['rahukaal'] as Map<String, dynamic>),
        guliKaal: json['guliKaal'] == null
            ? null
            : GuliKaal.fromJson(json['guliKaal'] as Map<String, dynamic>),
        yamghantKaal: json['yamghant_kaal'] == null
            ? null
            : YamghantKaal.fromJson(
                json['yamghant_kaal'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'day': day,
        'sunrise': sunrise,
        'sunset': sunset,
        'moonrise': moonrise,
        'moonset': moonset,
        'vedic_sunrise': vedicSunrise,
        'vedic_sunset': vedicSunset,
        'tithi': tithi?.toJson(),
        'nakshatra': nakshatra?.toJson(),
        'yog': yog?.toJson(),
        'karan': karan?.toJson(),
        'hindu_maah': hinduMaah?.toJson(),
        'paksha': paksha,
        'ritu': ritu,
        'sun_sign': sunSign,
        'moon_sign': moonSign,
        'ayana': ayana,
        'panchang_yog': panchangYog,
        'vikram_samvat': vikramSamvat,
        'shaka_samvat': shakaSamvat,
        'vkram_samvat_name': vkramSamvatName,
        'shaka_samvat_name': shakaSamvatName,
        'disha_shool': dishaShool,
        'disha_shool_remedies': dishaShoolRemedies,
        'nak_shool': nakShool?.toJson(),
        'moon_nivas': moonNivas,
        'abhijit_muhurta': abhijitMuhurta?.toJson(),
        'rahukaal': rahukaal?.toJson(),
        'guliKaal': guliKaal?.toJson(),
        'yamghant_kaal': yamghantKaal?.toJson(),
      };

  PanchangData copyWith({
    String? day,
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? vedicSunrise,
    String? vedicSunset,
    Tithi? tithi,
    Nakshatra? nakshatra,
    Yog? yog,
    Karan? karan,
    HinduMaah? hinduMaah,
    String? paksha,
    String? ritu,
    String? sunSign,
    String? moonSign,
    String? ayana,
    String? panchangYog,
    int? vikramSamvat,
    int? shakaSamvat,
    String? vkramSamvatName,
    String? shakaSamvatName,
    String? dishaShool,
    String? dishaShoolRemedies,
    NakShool? nakShool,
    String? moonNivas,
    AbhijitMuhurta? abhijitMuhurta,
    Rahukaal? rahukaal,
    GuliKaal? guliKaal,
    YamghantKaal? yamghantKaal,
  }) {
    return PanchangData(
      day: day ?? this.day,
      sunrise: sunrise ?? this.sunrise,
      sunset: sunset ?? this.sunset,
      moonrise: moonrise ?? this.moonrise,
      moonset: moonset ?? this.moonset,
      vedicSunrise: vedicSunrise ?? this.vedicSunrise,
      vedicSunset: vedicSunset ?? this.vedicSunset,
      tithi: tithi ?? this.tithi,
      nakshatra: nakshatra ?? this.nakshatra,
      yog: yog ?? this.yog,
      karan: karan ?? this.karan,
      hinduMaah: hinduMaah ?? this.hinduMaah,
      paksha: paksha ?? this.paksha,
      ritu: ritu ?? this.ritu,
      sunSign: sunSign ?? this.sunSign,
      moonSign: moonSign ?? this.moonSign,
      ayana: ayana ?? this.ayana,
      panchangYog: panchangYog ?? this.panchangYog,
      vikramSamvat: vikramSamvat ?? this.vikramSamvat,
      shakaSamvat: shakaSamvat ?? this.shakaSamvat,
      vkramSamvatName: vkramSamvatName ?? this.vkramSamvatName,
      shakaSamvatName: shakaSamvatName ?? this.shakaSamvatName,
      dishaShool: dishaShool ?? this.dishaShool,
      dishaShoolRemedies: dishaShoolRemedies ?? this.dishaShoolRemedies,
      nakShool: nakShool ?? this.nakShool,
      moonNivas: moonNivas ?? this.moonNivas,
      abhijitMuhurta: abhijitMuhurta ?? this.abhijitMuhurta,
      rahukaal: rahukaal ?? this.rahukaal,
      guliKaal: guliKaal ?? this.guliKaal,
      yamghantKaal: yamghantKaal ?? this.yamghantKaal,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PanchangData) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      day.hashCode ^
      sunrise.hashCode ^
      sunset.hashCode ^
      moonrise.hashCode ^
      moonset.hashCode ^
      vedicSunrise.hashCode ^
      vedicSunset.hashCode ^
      tithi.hashCode ^
      nakshatra.hashCode ^
      yog.hashCode ^
      karan.hashCode ^
      hinduMaah.hashCode ^
      paksha.hashCode ^
      ritu.hashCode ^
      sunSign.hashCode ^
      moonSign.hashCode ^
      ayana.hashCode ^
      panchangYog.hashCode ^
      vikramSamvat.hashCode ^
      shakaSamvat.hashCode ^
      vkramSamvatName.hashCode ^
      shakaSamvatName.hashCode ^
      dishaShool.hashCode ^
      dishaShoolRemedies.hashCode ^
      nakShool.hashCode ^
      moonNivas.hashCode ^
      abhijitMuhurta.hashCode ^
      rahukaal.hashCode ^
      guliKaal.hashCode ^
      yamghantKaal.hashCode;
}
