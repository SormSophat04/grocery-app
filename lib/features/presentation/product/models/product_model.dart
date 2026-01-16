class ProductModel {
  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.status,
    required this.unit,
    required this.fav,
    required this.rate,
    required this.description,
  });

  final int id;
  final String name;
  final String price;
  final String image;
  final String status;
  final String unit;
  final bool fav;
  final double rate;
  final String description;

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      price: json["price"] ?? "",
      image: json["image"] ?? "",
      status: json["status"] ?? "",
      unit: json["unit"] ?? "",
      fav: json["fav"] ?? false,
      rate: json["rate"] ?? 0.0,
      description: json["description"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "price": price,
    "image": image,
    "status": status,
    "unit": unit,
    "fav": fav,
    "rate": rate,
    "description": description,
  };

  @override
  String toString() {
    return "$id, $name, $price, $image, $status, $unit, $fav, $rate, $description, ";
  }

  List<dynamic> featuredProducts = [
    {
      "id": 1,
      "name": "Pomegranate",
      "price": "4.99",
      "image": "assets/images/pomegranate-11.png",
      "status": "20% Off",
      "unit": "1kg",
      "fav": true,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      "id": 2,
      "name": "Apple",
      "price": "3.99",
      "image": "assets/images/pineapple-pieces.png",
      "status": "New",
      "unit": "1kg",
      "fav": false,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      "id": 3,
      "name": "Banana",
      "price": "2.99",
      "image": "assets/images/grapes-31.png",
      "status": "15% Off",
      "unit": "1kg",
      "fav": true,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      "id": 4,
      "name": "Orange",
      "price": "5.49",
      "image": "assets/images/Group 247 (1).png",
      // "status": "5% Off",
      "unit": "1kg",
      "fav": false,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      "id": 5,
      "name": "Avocado",
      "price": "6.99",
      "image": "assets/images/aocado-2 1.png",
      "status": "25% Off",
      "unit": "1kg",
      "fav": true,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      "id": 6,
      "name": "Strawberry",
      "price": "7.99",
      "image": "assets/images/peach-24 1.png",
      "status": "New",
      "unit": "1kg",
      "fav": false,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
  ];
}
