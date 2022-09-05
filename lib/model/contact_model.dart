class ContactModel {
  ContactModel({
    this.createdAt,
    this.name,
    this.avatar,
    this.age,
    this.id,
  });

  DateTime? createdAt;
  String? name;
  String? avatar;
  dynamic age;
  String? id;

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
        age: json["age"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt!.toIso8601String(),
        "name": name,
        "avatar": avatar,
        "age": age,
        "id": id,
      };
}
