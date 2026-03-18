class Pet {
  final String id;
  final String name;
  final String breed;
  final int age;
  final String tagId;
  final String image;

  Pet({
    required this.id,
    required this.name,
    required this.breed,
    required this.age,
    required this.tagId,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "breed": breed,
      "age": age,
      "tagId": tagId,
      "image": image,
    };
  }
}