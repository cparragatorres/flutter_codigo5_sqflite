class BookModel {
  int id;
  String title;
  String author;
  String description;
  String image;

  BookModel({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.image,
  });

  factory BookModel.deMapaAModelo(Map<String, dynamic> mapa) => BookModel(
    id: mapa["id"],
    title: mapa["title"],
    author: mapa["author"],
    description: mapa["description"],
    image: mapa["image"],
  );


}
