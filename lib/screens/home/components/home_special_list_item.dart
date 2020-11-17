import 'package:flutter/material.dart';
import 'package:shop_app/models/category.dart';
import 'package:shop_app/screens/category_list/category_list_screen.dart';
import 'package:shop_app/size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeSpecialListItem extends StatelessWidget {
  final Category category;

  const HomeSpecialListItem({
    Key key,
    this.category, product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryListScreen(
              name: category.name,
            ),
          ),
        ),
     child:Container(
      width: getProportionateScreenWidth(242),
      height: getProportionateScreenWidth(100),
      padding: EdgeInsets.only(right: 7, bottom: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        color: Colors.grey.shade300,
        elevation: 3,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            CachedNetworkImage(imageUrl: category.image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.2),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15.0),
                  vertical: getProportionateScreenWidth(10),
                ),
                child: Text(
                  category.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15.0),
                  vertical: getProportionateScreenWidth(32),
                ),
                child: Text(
                  category.description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
     ),
    );
  }
}
