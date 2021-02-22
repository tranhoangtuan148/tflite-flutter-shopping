import 'package:flutter/material.dart';
import 'package:smart_app_shopping/screens/HomePage.dart';
import 'package:smart_app_shopping/screens/ProductPage.dart';
import 'package:smart_app_shopping/widgets/box_label.dart';

class ListLabelsView extends StatelessWidget {
  final List<String> labels;
  ListLabelsView(this.labels);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Labels"),
      ),
      body: ListView.builder(
        itemCount: labels.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder:
                      (context) => ProductPage(keywords: labels[index], limit: 50,),
                  )
              );
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: BoxLabel(imgName: "assets/images/${labels[index]}.jpg",name: labels[index],)
            )
          );
        },
      ),
    );
  }
}
