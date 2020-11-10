class Product {
  int id;
  String name;
  String image;
  double price;
  double discountPrice;
  int quantity;
  Product({
    this.id,
    this.name,
    this.image,
    this.price,
    this.discountPrice,
    this.quantity
  });
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['item_code'],
        name: json['item_name'],
        image: json['img_dir'],
        price: json['pprice'],
        discountPrice: json['cprice']

    );
  }
}
