import 'package:get/get.dart';
import '../model/Poduct.dart';
import '../services/ProductService.dart';
class ProductController extends GetxController{
  var isLoading = true.obs;
  final String keywords ;
  final int limit;
  ProductController({this.keywords, this.limit});
  var productList = List<Product>().obs;

 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProduct();
  }
  void fetchProduct() async {

    try {
      isLoading(true);
      var products = await ProductServices.getProducts(this.keywords,this.limit);
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }

  }
}
