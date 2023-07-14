import '../helper/api data.dart';
import '../models/product model.dart';

class AllProductsByCategory {
  getProductsByCategory(String categoryName) async {
    List data = await ApiData()
        .get('https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> productsList = [];
    for (int i in data) productsList.add(data[i]);
    return productsList;
  }
}
