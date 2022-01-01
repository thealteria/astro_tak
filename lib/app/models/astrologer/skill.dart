import 'package:collection/collection.dart';

class Skill {
  int? id;
  String? name;
  String? description;

  Skill({this.id, this.name, this.description});

  @override
  String toString() {
    return 'Skill(id: $id, name: $name, description: $description)';
  }

  factory Skill.fromJson(Map<String, dynamic> json) => Skill(
        id: json['id'] as int?,
        name: json['name'] as String?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
      };

  Skill copyWith({
    int? id,
    String? name,
    String? description,
  }) {
    return Skill(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Skill) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ description.hashCode;
}
