class WorkModel {
  int? id;
  String? name;
  String? description;

  WorkModel({
    this.id,
    this.name,
    this.description,
  });

  WorkModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }
}
