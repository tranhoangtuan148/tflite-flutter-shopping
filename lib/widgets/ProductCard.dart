import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_app_shopping/model/Poduct.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  ProductCard({Key key, this.product}) : super(key: key);
  var oCcy = new NumberFormat("#,##0", "en_US");

  @override
  Widget build(BuildContext context) {
    // return Card(
    //   elevation: 1.5,
    //   child: Padding(
    //     padding: const EdgeInsets.all(10.0),
    //     child: ListTile(
    //       title: Row(
    //         children: <Widget>[
    //           Container(
    //             width: 60,
    //             height: 60,
    //             decoration: BoxDecoration(
    //                 color: Color(0xff4f359b),
    //                 borderRadius: BorderRadius.circular(10),
    //                 image: DecorationImage(
    //                     image: NetworkImage(
    //                         "https://cf.shopee.vn/file/${this.product.image}_tn"))),
    //           ),
    //           SizedBox(
    //             width: 20,
    //           ),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: <Widget>[
    //               SizedBox(
    //                   width: 200,
    //                   child: Text(
    //                     '${this.product.name}',
    //                     style: TextStyle(fontSize: 20),
    //                   )),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               Text(
    //
    //                 '${oCcy.format(this.product.price/100000)} ${this.product.currency}',
    //                 style: TextStyle(color: Colors.red),
    //               )
    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    "https://cf.shopee.vn/file/${this.product.image}_tn",
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '4.5',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.white,
                  ),
                ],
              ),
            ),


            SizedBox(height: 8),
            Text(
              '${this.product.name}',
              maxLines: 2,
              style:
              TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            SizedBox(height: 8),
            Text('${oCcy.format(this.product.price/100000)} ${this.product.currency}',
                style: TextStyle(fontSize: 26,color: Colors.red, fontWeight:FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
