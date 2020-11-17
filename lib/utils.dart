import 'package:flutter/cupertino.dart';
import 'package:flutter_advanced_networkimage/provider.dart';

class Utils{
    static Future cacheImage(BuildContext context,String urlImg)=>precacheImage(AdvancedNetworkImage(
      urlImg,
      useDiskCache: true,
      cacheRule: CacheRule(maxAge: const Duration(days: 7)),
    ), context);
}