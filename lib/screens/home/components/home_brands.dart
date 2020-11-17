import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Brand.dart';
import 'package:shop_app/size_config.dart';

class HomeBrand extends StatefulWidget {
  final Brand brand;
  const HomeBrand({
    Key key,
    this.brand,
  }) : super(key: key);

  @override
  _HomeBrand createState() => _HomeBrand();
}
class _HomeBrand extends State<HomeBrand> {
  bool isFavorite = false;
  bool isInCart = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(150),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Padding(
                padding: const EdgeInsets.only(right: 6),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  margin: EdgeInsets.all(0),
                  elevation: 5,
                  shadowColor: kCardBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                        Image.network(
                          widget.brand.image,
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: double.infinity,
                        ),
          ]
      ),
    ),
    ),
    ),
      ]
    ),
    );

  }
}
