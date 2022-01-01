import 'package:collection/collection.dart';

import 'astrologer_image.dart';

class Images {
  AstrologerImage? small;
  AstrologerImage? large;
  AstrologerImage? medium;

  AstrologerImage? astrologerImage;

  Images({
    this.small,
    this.large,
    this.medium,
    this.astrologerImage,
  });

  @override
  String toString() {
    return 'Images(small: $small, large: $large, medium: $medium)';
  }

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      small: json['small'] == null
          ? null
          : AstrologerImage.fromJson(json['small'] as Map<String, dynamic>),
      large: json['large'] == null
          ? null
          : AstrologerImage.fromJson(json['large'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : AstrologerImage.fromJson(json['medium'] as Map<String, dynamic>),
      astrologerImage: json['medium'] == null
          ? null
          : AstrologerImage.fromJson(json['medium'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'small': small?.toJson(),
        'large': large?.toJson(),
        'medium': medium?.toJson(),
      };

  Images copyWith({
    AstrologerImage? small,
    AstrologerImage? large,
    AstrologerImage? medium,
  }) {
    return Images(
      small: small ?? this.small,
      large: large ?? this.large,
      medium: medium ?? this.medium,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Images) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => small.hashCode ^ large.hashCode ^ medium.hashCode;
}
