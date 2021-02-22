import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_app_shopping/model/Poduct.dart';

class ProductServices {

  static Future<List<Product>> getProducts(String keywords, int limit) async {
    String url = Uri.encodeFull("https://shopee.vn/api/v2/search_items/?by=relevancy&keyword=$keywords&limit=$limit&newest=0&order=desc&page_type=search&version=2");
    print(url);
    try {
      Map<String , String> header = {'referer': Uri.encodeFull('https://shopee.vn/search?keyword=$keywords')};
      final response = await http.get(url, headers:header);

      if (200 == response.statusCode) {
        final List<Product> products = productFromJson(
            json.encode(json.decode(response.body)["items"]));
        print(products.length);
        return products;
      } else {
        return List<Product>();
      }
    } catch (e) {
      return List<Product>();
    }
  }
}