import 'package:collection/collection.dart';

class Language {
  int? id;
  String? name;

  Language({this.id, this.name});

  @override
  String toString() => 'Language(id: $id, name: $name)';

  factory Language.fromJson(Map<String, dynamic> json) => Language(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  Language copyWith({
    int? id,
    String? name,
  }) {
    return Language(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Language) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
