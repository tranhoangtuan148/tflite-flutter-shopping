import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:smart_app_shopping/model/Poduct.dart';
import 'package:smart_app_shopping/services/ProductService.dart';
import 'package:smart_app_shopping/widgets/ProductCard.dart';

class ProductPage extends StatefulWidget {
  final String keywords ;
  final int limit;

  const ProductPage({Key key, this.keywords, this.limit}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Product> _products;
  bool _isLoading;
  @override
  void initState() {
    super.initState();
    _isLoading = true;
    ProductServices.getProducts(widget.keywords, widget.limit).then((products) {
      setState(() {
        _products = products;
        _isLoading = false;
      });
    });
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4f359b),
        title: Text(_isLoading?'Loading':'${widget.keywords}'),
      ),
      body: getBody(),
    );
  }
  Widget getBody() {
    return  StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: null == _products? 0:_products.length,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        itemBuilder: (context, index) {
          return ProductCard(
            product: _products[index],
          );
        },
        staggeredTileBuilder: (index) => StaggeredTile.fit(1));
  }
}
