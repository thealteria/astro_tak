import 'package:collection/collection.dart';

import 'availability.dart';
import 'images.dart';
import 'language.dart';
import 'skill.dart';

class AstrologerData {
  num? id;
  String? urlSlug;
  dynamic namePrefix;
  String? firstName;
  String? lastName;
  String? aboutMe;
  dynamic profliePicUrl;
  num? experience;
  List<Language>? languages;
  num? minimumCallDuration;
  num? minimumCallDurationCharges;
  num? additionalPerMinuteCharges;
  bool? isAvailable;
  dynamic rating;
  List<Skill>? skills;
  bool? isOnCall;
  num? freeMinutes;
  num? additionalMinute;
  Images? images;
  Availability? availability;

  AstrologerData({
    this.id,
    this.urlSlug,
    this.namePrefix,
    this.firstName,
    this.lastName,
    this.aboutMe,
    this.profliePicUrl,
    this.experience,
    this.languages,
    this.minimumCallDuration,
    this.minimumCallDurationCharges,
    this.additionalPerMinuteCharges,
    this.isAvailable,
    this.rating,
    this.skills,
    this.isOnCall,
    this.freeMinutes,
    this.additionalMinute,
    this.images,
    this.availability,
  });

  @override
  String toString() {
    return 'AstrologerData(id: $id, urlSlug: $urlSlug, namePrefix: $namePrefix, '
        'firstName: $firstName, lastName: $lastName, aboutMe: $aboutMe, '
        'profliePicUrl: $profliePicUrl, experience: $experience, languages: $languages, '
        'minimumCallDuration: $minimumCallDuration, minimumCallDurationCharges: '
        '$minimumCallDurationCharges, additionalPerMinuteCharges: '
        '$additionalPerMinuteCharges, isAvailable: $isAvailable, rating: $rating, '
        'skills: $skills, isOnCall: $isOnCall, freeMinutes: $freeMinutes, '
        'additionalMinute: $additionalMinute, images: $images, availability: $availability)';
  }

  factory AstrologerData.fromJson(Map<String, dynamic> json) => AstrologerData(
        id: json['id'] as num?,
        urlSlug: json['urlSlug'] as String?,
        namePrefix: json['namePrefix'] as dynamic,
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        aboutMe: json['aboutMe'] as String?,
        profliePicUrl: json['profliePicUrl'] as dynamic,
        experience: json['experience'] as num?,
        languages: (json['languages'] as List<dynamic>?)
            ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
            .toList(),
        minimumCallDuration: json['minimumCallDuration'] as num?,
        minimumCallDurationCharges: json['minimumCallDurationCharges'] as num?,
        additionalPerMinuteCharges: json['additionalPerMinuteCharges'] as num?,
        isAvailable: json['isAvailable'] as bool?,
        rating: json['rating'] as dynamic,
        skills: (json['skills'] as List<dynamic>?)
            ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
            .toList(),
        isOnCall: json['isOnCall'] as bool?,
        freeMinutes: json['freeMinutes'] as num?,
        additionalMinute: json['additionalMinute'] as num?,
        images: json['images'] == null
            ? null
            : Images.fromJson(json['images'] as Map<String, dynamic>),
        availability: json['availability'] == null
            ? null
            : Availability.fromJson(
                json['availability'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'urlSlug': urlSlug,
        'namePrefix': namePrefix,
        'firstName': firstName,
        'lastName': lastName,
        'aboutMe': aboutMe,
        'profliePicUrl': profliePicUrl,
        'experience': experience,
        'languages': languages?.map((e) => e.toJson()).toList(),
        'minimumCallDuration': minimumCallDuration,
        'minimumCallDurationCharges': minimumCallDurationCharges,
        'additionalPerMinuteCharges': additionalPerMinuteCharges,
        'isAvailable': isAvailable,
        'rating': rating,
        'skills': skills?.map((e) => e.toJson()).toList(),
        'isOnCall': isOnCall,
        'freeMinutes': freeMinutes,
        'additionalMinute': additionalMinute,
        'images': images?.toJson(),
        'availability': availability?.toJson(),
      };

  AstrologerData copyWith({
    num? id,
    String? urlSlug,
    dynamic namePrefix,
    String? firstName,
    String? lastName,
    String? aboutMe,
    dynamic profliePicUrl,
    num? experience,
    List<Language>? languages,
    num? minimumCallDuration,
    num? minimumCallDurationCharges,
    num? additionalPerMinuteCharges,
    bool? isAvailable,
    dynamic rating,
    List<Skill>? skills,
    bool? isOnCall,
    num? freeMinutes,
    num? additionalMinute,
    Images? images,
    Availability? availability,
  }) {
    return AstrologerData(
      id: id ?? this.id,
      urlSlug: urlSlug ?? this.urlSlug,
      namePrefix: namePrefix ?? this.namePrefix,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      aboutMe: aboutMe ?? this.aboutMe,
      profliePicUrl: profliePicUrl ?? this.profliePicUrl,
      experience: experience ?? this.experience,
      languages: languages ?? this.languages,
      minimumCallDuration: minimumCallDuration ?? this.minimumCallDuration,
      minimumCallDurationCharges:
          minimumCallDurationCharges ?? this.minimumCallDurationCharges,
      additionalPerMinuteCharges:
          additionalPerMinuteCharges ?? this.additionalPerMinuteCharges,
      isAvailable: isAvailable ?? this.isAvailable,
      rating: rating ?? this.rating,
      skills: skills ?? this.skills,
      isOnCall: isOnCall ?? this.isOnCall,
      freeMinutes: freeMinutes ?? this.freeMinutes,
      additionalMinute: additionalMinute ?? this.additionalMinute,
      images: images ?? this.images,
      availability: availability ?? this.availability,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AstrologerData) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      urlSlug.hashCode ^
      namePrefix.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      aboutMe.hashCode ^
      profliePicUrl.hashCode ^
      experience.hashCode ^
      languages.hashCode ^
      minimumCallDuration.hashCode ^
      minimumCallDurationCharges.hashCode ^
      additionalPerMinuteCharges.hashCode ^
      isAvailable.hashCode ^
      rating.hashCode ^
      skills.hashCode ^
      isOnCall.hashCode ^
      freeMinutes.hashCode ^
      additionalMinute.hashCode ^
      images.hashCode ^
      availability.hashCode;
}
