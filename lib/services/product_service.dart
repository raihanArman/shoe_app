import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shoe_app/models/product_model.dart';

class ProductService {
  String baseUrl = "http://192.168.0.4:8000/api";

  Future<List<ProductModel>> getProducts() async {
    var url = Uri.parse("$baseUrl/products");
    var response = await http.get(url);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];
      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Gagal get product');
    }
  }
}
