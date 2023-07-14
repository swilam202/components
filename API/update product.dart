import '../helper/api data.dart';
import '../models/product model.dart';

class PostServices {
  UpdateProduct({
    required String title,
    required String description,
    required double price,
    required String image,
  }) async {
    Map<String, dynamic> data = await ApiData().post(
      body: {
        'title': title,
        'description': description,
        'price': price.toString(),
        'image': image,
      },
    );

    return ProductModel.fromJson(data);
  }
}
