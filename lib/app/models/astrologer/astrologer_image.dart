import 'package:collection/collection.dart';

class AstrologerImage {
  String? imageUrl;
  int? id;

  AstrologerImage({this.imageUrl, this.id});

  @override
  String toString() => 'Medium(imageUrl: $imageUrl, id: $id)';

  factory AstrologerImage.fromJson(Map<String, dynamic> json) =>
      AstrologerImage(
        imageUrl: json['imageUrl'] as String?,
        id: json['id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'imageUrl': imageUrl,
        'id': id,
      };

  AstrologerImage copyWith({
    String? imageUrl,
    int? id,
  }) {
    return AstrologerImage(
      imageUrl: imageUrl ?? this.imageUrl,
      id: id ?? this.id,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AstrologerImage) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => imageUrl.hashCode ^ id.hashCode;
}
