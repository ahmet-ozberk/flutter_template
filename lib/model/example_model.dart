class ExampleModel {
  final String? name;
  final String? description;
  final String? imageUrl;

  ExampleModel({this.name, this.description, this.imageUrl});

  factory ExampleModel.fromJson(Map<String, dynamic> json) {
    return ExampleModel(
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
    };
  }

  @override
  String toString() => 'ExampleModel(name: $name, description: $description, imageUrl: $imageUrl)';
}
