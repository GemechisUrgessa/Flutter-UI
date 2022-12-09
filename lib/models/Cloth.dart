class Cloth {
  final String name;
  final int id;
  final String imageUrl;
  final double price;
  final bool isFavorite;

  Cloth(
      {required this.name,
      required this.id,
      required this.imageUrl,
      required this.price,
      required this.isFavorite});
}

List<Cloth> clothes = [];

List<Cloth> favorites = [];
List<Cloth> carts = [];
