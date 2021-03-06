import 'package:flutter/material.dart';
import 'package:shop_app/models/Brand.dart';
import 'package:shop_app/models/address.dart';
import 'package:shop_app/models/category.dart';
import 'package:shop_app/models/order.dart';
import 'package:shop_app/models/order_notification.dart';
import 'package:shop_app/models/payment_card.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/models/promotion_notification.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shop_app/utils.dart';

class DummyData {

  static List<AssetImage> dummyBannerImages = [
    AssetImage('assets/images/Discount Banner.jpg'),
    AssetImage('assets/images/Discount Banner1.jpg'),
    AssetImage('assets/images/Discount Banner2.jpg'),
    AssetImage('assets/images/Discount Banner3.jpg'),
  ];

  static Future<List<Category>> getSpecialItems() async {
    List<Category> categoriesList = [];
    Category category1=
    Category(
      id: 1,
      name: 'Breakfast & Dairy',
      description: 'Milk,Juice & More!',
      image: 'http://asifsuperstore.com.pk/img/breakfast11.jpeg',
    );
    Category category2 =
    Category(
    id: 1,
    name: 'Rashan',
    description: 'Flour,Rice & More!',
    image: 'http://asifsuperstore.com.pk/img/rashan11.jpeg',
    );
    Category category3 =
    Category(
    id: 1,
    name: 'Baby & Kids',
    description: 'Lotion,Diapers & More!',
    image: 'http://asifsuperstore.com.pk/img/BABY CARE-1.png',
    );
    Category category4 =
    Category(
    id: 1,
    name: 'Oral Care & Pharmacy',
    description: 'Paste,Tablets & More!',
    image: 'http://asifsuperstore.com.pk/img/oral11.jpeg',
    );
        Category category5 = Category(
    id: 1,
    name: 'Personal Care',
    description: 'Bath & Body & More!',
    image: 'http://asifsuperstore.com.pk/img/personal care001.png',
    );
    Category category6 =
    Category(
    id: 1,
    name: 'Detergent & Home Needs',
    description: 'Dish Washers & More!',
    image: 'http://asifsuperstore.com.pk/img/det1.jpg',
    );
    Category category7 =
    Category(
    id: 1,
    name: 'Snacks & Beverages',
    description: 'Snacks,Drink & More!',
    image: 'http://asifsuperstore.com.pk/img/beverages11.jpg',
    );
    categoriesList.add(category1);
    categoriesList.add(category2);
    categoriesList.add(category3);
    categoriesList.add(category4);
    categoriesList.add(category5);
    categoriesList.add(category6);
    categoriesList.add(category7);
    return categoriesList;
  }

  static List<Category> dummyAllCategories = [
    Category(
      id: 1,
      name: 'Grocery',
      image: 'assets/images/maddi-bazzocco-Hz4FAtKSLKo-unsplash.jpg',
    ),
    Category(
      id: 2,
      name: 'Breakfast & Dairy',
      image: 'assets/images/breakfast11.jpeg',
    ),
    Category(
      id: 3,
      name: 'Baby & Kids',
      image: 'assets/images/BABY CARE-1.png',
    ),
  ];

static Future<List<Product>> getFeaturedProducts() async {
    var apiURL = 'https://asifsuperstore.com.pk/MobileApplication/featured_products.php';
    var response = await http.get(apiURL);
    var jsonData = json.decode(response.body);
    List<Product> productsList= [];
    for(var i in jsonData){
      Product product =
      Product(
      id: int.parse(i['id']),
      name: i['name'],
      image: 'http://asifsuperstore.com.pk/'+i['image'],
      price: double.parse(i['price']),
      discountPrice: double.parse(i['discount']),
      );
      productsList.add(product);
    }
    return productsList;
  }
  static Future<List<Product>> getNewestProducts() async {
    var apiURL = 'https://asifsuperstore.com.pk/MobileApplication/newest_products.php';
    var response = await http.get(apiURL);
    var jsonData = json.decode(response.body);
    List<Product> productsList= [];
    for(var i in jsonData){
      Product product =
      Product(
        id: int.parse(i['id']),
        name: i['name'],
        image: 'http://asifsuperstore.com.pk/'+i['image'],
        price: double.parse(i['price']),
        discountPrice: double.parse(i['discount']),
      );
      productsList.add(product);
    }
    return productsList;
  }

  static Future<List<Product>> getTopSellers() async {
    var apiURL = 'https://asifsuperstore.com.pk/MobileApplication/top_sellers.php';
    var response = await http.get(apiURL);
    var jsonData = json.decode(response.body);
    List<Product> productsList= [];
    for(var i in jsonData){
      Product product =
      Product(
        id: int.parse(i['id']),
        name: i['name'],
        image: 'http://asifsuperstore.com.pk/'+i['image'],
        price: double.parse(i['price']),
        discountPrice: double.parse(i['discount']),
      );
      productsList.add(product);
    }
    return productsList;
  }
  static Future<List<Product>> getTopDeals() async {
    var apiURL = 'https://asifsuperstore.com.pk/MobileApplication/top_deals.php';
    var response = await http.get(apiURL);
    var jsonData = json.decode(response.body);
    List<Product> productsList= [];
    for(var i in jsonData){
      Product product =
      Product(
        id: int.parse(i['id']),
        name: i['name'],
        image: 'http://asifsuperstore.com.pk/'+i['image'],
        price: double.parse(i['price']),
        discountPrice: double.parse(i['discount']),
      );
      productsList.add(product);
    }
    return productsList;
  }
  static Future<List<Brand>> getTopBrands() async {
    List<Brand> brandsList= [];
    Brand brand = Brand(
      image:'http://asifsuperstore.com.pk/brand/scotch.jpeg'
    );
    Brand brand1 = Brand(
        image:'http://asifsuperstore.com.pk/brand/dettol.jpeg'
    );
    Brand brand2 = Brand(
        image:'http://asifsuperstore.com.pk/brand/colgate.jpeg'
    );
    Brand brand3 = Brand(
        image:'http://asifsuperstore.com.pk/brand/senso.jpeg'
    );
    Brand brand4 = Brand(
        image:'http://asifsuperstore.com.pk/brand/sunsilk.jpeg'
    );Brand brand5 = Brand(
        image:'http://asifsuperstore.com.pk/brand/safe.jpeg'
    );
    brandsList.add(brand);
    brandsList.add(brand1);
    brandsList.add(brand2);
    brandsList.add(brand3);
    brandsList.add(brand4);
    brandsList.add(brand5);
    return brandsList;
  }
  static Future<List<Product>> getRashan() async {
    var apiURL = 'https://asifsuperstore.com.pk/MobileApplication/rashan.php';
    var response = await http.get(apiURL);
    var jsonData = json.decode(response.body);
    List<Product> productsList= [];
    for(var i in jsonData){
      Product product =
      Product(
        id: int.parse(i['id']),
        name: i['name'],
        image: 'http://asifsuperstore.com.pk/'+i['image'],
        price: double.parse(i['price']),
        discountPrice: double.parse(i['discount']),
      );
      productsList.add(product);
    }
    return productsList;
  }
  static Future<List<Product>> getBreakfastandDairy() async {
    var apiURL = 'https://asifsuperstore.com.pk/MobileApplication/breakfastanddairy.php';
    var response = await http.get(apiURL);
    var jsonData = json.decode(response.body);
    List<Product> productsList= [];
    for(var i in jsonData){
      Product product =
      Product(
        id: int.parse(i['id']),
        name: i['name'],
        image: 'http://asifsuperstore.com.pk/'+i['image'],
        price: double.parse(i['price']),
        discountPrice: double.parse(i['discount']),
      );
      productsList.add(product);
    }
    return productsList;
  }
  static Future<List<Product>> getBabyandKids() async {
    var apiURL = 'https://asifsuperstore.com.pk/MobileApplication/babyandkids.php';
    var response = await http.get(apiURL);
    var jsonData = json.decode(response.body);
    List<Product> productsList= [];
    for(var i in jsonData){
      Product product =
      Product(
        id: int.parse(i['id']),
        name: i['name'],
        image: 'http://asifsuperstore.com.pk/'+i['image'],
        price: double.parse(i['price']),
        discountPrice: double.parse(i['discount']),
      );
      productsList.add(product);
    }
    return productsList;
  }
  static Future<List<Product>> getOralCareandPharmacy() async {
    var apiURL = 'https://asifsuperstore.com.pk/MobileApplication/oralcareandpharmacy.php';
    var response = await http.get(apiURL);
    var jsonData = json.decode(response.body);
    List<Product> productsList= [];
    for(var i in jsonData){
      Product product =
      Product(
        id: int.parse(i['id']),
        name: i['name'],
        image: 'http://asifsuperstore.com.pk/'+i['image'],
        price: double.parse(i['price']),
        discountPrice: double.parse(i['discount']),
      );
      productsList.add(product);
    }
    return productsList;
  }
  static Future<List<Product>> getPersonalCare() async {
    var apiURL = 'https://asifsuperstore.com.pk/MobileApplication/personalcare.php';
    var response = await http.get(apiURL);
    var jsonData = json.decode(response.body);
    List<Product> productsList= [];
    for(var i in jsonData){
      Product product =
      Product(
        id: int.parse(i['id']),
        name: i['name'],
        image: 'http://asifsuperstore.com.pk/'+i['image'],
        price: double.parse(i['price']),
        discountPrice: double.parse(i['discount']),
      );
      productsList.add(product);
    }
    return productsList;
  }
  static Future<List<Product>> getDetergentandHomeNeeds() async {
    var apiURL = 'https://asifsuperstore.com.pk/MobileApplication/detergentandhomeneeds.php';
    var response = await http.get(apiURL);
    var jsonData = json.decode(response.body);
    List<Product> productsList= [];
    for(var i in jsonData){
      Product product =
      Product(
        id: int.parse(i['id']),
        name: i['name'],
        image: 'http://asifsuperstore.com.pk/'+i['image'],
        price: double.parse(i['price']),
        discountPrice: double.parse(i['discount']),
      );
      productsList.add(product);
    }
    return productsList;
  }
  static Future<List<Product>> getSnacksandBeverages() async {
    var apiURL = 'https://asifsuperstore.com.pk/MobileApplication/snacksandbeverages.php';
    var response = await http.get(apiURL);
    var jsonData = json.decode(response.body);
    List<Product> productsList= [];
    for(var i in jsonData){
      Product product =
      Product(
        id: int.parse(i['id']),
        name: i['name'],
        image: 'http://asifsuperstore.com.pk/'+i['image'],
        price: double.parse(i['price']),
        discountPrice: double.parse(i['discount']),
      );
      productsList.add(product);
    }
    return productsList;
  }
  static List<Product> dummyProducts = [
    Product(
      id: 1,
      name: 'Men\'s Sports Shoes',
      image: 'assets/images/Men Shoes.jpg',
      price: 45.0,
      discountPrice: 35.0,

    ),
    Product(
      id: 2,
      name: 'Women\'s Blue Leather Handbag',
      image: 'assets/images/Women Blue Leather Handbag.jpg',
      price: 45.0,
      discountPrice: 0.0,

    ),
    Product(
      id: 4,
      name: 'Unisex Metal Frame Sunglasses',
      image: 'assets/images/Men Metal Frame Sunglasses.jpg',
      price: 70.0,
      discountPrice: 0.0,

    ),
    Product(
      id: 3,
      name: 'Basic Men T-shirt 100% Cotton',
      image: 'assets/images/Men Cotton T-shirt.jpg',
      price: 22.75,
      discountPrice: 32.5,

    ),
    Product(
      id: 5,
      name: 'Waterproof Smart Watch',
      image: 'assets/images/Waterproof Smart Watch.jpg',
      price: 45.0,
      discountPrice: 35.0,

    ),
  ];


  static List<Order> dummyOrders = [
    Order(
      number: '26091945142',
      date: '9/7/2020',
      totPrice: 100.0,
      status: 'Pending',
    ),
    Order(
      number: '26091945845',
      date: '9/5/2020',
      totPrice: 25.0,
      status: 'Canceled',
    ),
    Order(
      number: '26091946481',
      date: '8/24/2020',
      totPrice: 58.0,
      status: 'Delivered',
    ),
    Order(
      number: '26091946481',
      date: '8/24/2020',
      totPrice: 58.0,
      status: 'Delivered',
    ),
  ];

  static List <Product> dummyProductOrder = [];

  static List<Address> dummyAddresses = [
    Address(
      title: 'John Doe, +961-12345678',
      subtitle:
          'Schools Street, Behind the Official School, Maghdouche, Saida, Lebanon, 1600',
      selected: true,
    ),
    Address(
      title: 'John Doe, +961-12345678',
      subtitle:
          'Schools Street, Behind the Official School, Maghdouche, Saida, Lebanon, 1600',
      selected: false,
    ),
    Address(
      title: 'John Doe, +961-12345678',
      subtitle:
          'Schools Street, Behind the Official School, Maghdouche, Saida, Lebanon, 1600',
      selected: false,
    ),
  ];

  static List<OrderNotification> dummyOrderNotifications = [
    OrderNotification(
      icon: Icons.done,
      title: 'Order Arrived',
      message:
          'Order 240897947245800024 has been completed & arrived at the destination address (Please rate your order)',
      datetime: 'Yesterday 10:45 AM',
    ),
    OrderNotification(
      icon: Icons.assignment_turned_in,
      title: 'Order Success',
      message:
          'Order 240897947245800024 has been Success. Please wait for the product to be sent',
      datetime: 'July 20 2020 8:00 AM',
    ),
    OrderNotification(
      icon: Icons.payment,
      title: 'Payment Confirmed',
      message:
          'Payment for order 240897947245800024 has been Confirmed. Please wait for the product to be sent',
      datetime: 'July 20 2020 12:30 PM',
    ),
    OrderNotification(
      icon: Icons.close,
      title: 'Order Cancelled',
      message:
          'Refunds order 240897947245800024 has been Processed. A fund of \$120 will be returned to your balance',
      datetime: 'July 20 2020 10:00 AM',
    ),
  ];

  static List<PromotionNotification> dummyPromotionNotifications = [
    PromotionNotification(
      image: 'assets/images/Men Shoes.jpg',
      message:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
      datetime: '10:00 AM',
    ),
    PromotionNotification(
      image: 'assets/images/Women Blue Leather Handbag.jpg',
      message:
          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      datetime: '1 day ago',
    ),
  ];

  static List<PaymentCard> dummyCards = [
    PaymentCard(
      id: 1,
      color: Color(0xff242729),
      bankName: 'Bank Name',
      cardNumber: '1245 1654 5481 3425',
      expiry: '01/21',
      cardHolder: 'CARD HOLDER',
      logo: 'assets/icons/Visa.png',
      selected: true,
    ),
    PaymentCard(
      id: 2,
      color: Color(0xffA9B0B5),
      bankName: 'Bank Name',
      cardNumber: '2154 3451 1212 1451',
      expiry: '05/25',
      cardHolder: 'CARD HOLDER',
      logo: 'assets/images/MasterCard.png',
      selected: false,
    ),
  ];
}
