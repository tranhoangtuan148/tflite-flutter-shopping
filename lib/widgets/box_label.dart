import 'package:flutter/material.dart';
class BoxLabel extends StatelessWidget {
  String name;
  String imgName;
  BoxLabel({this.name,this.imgName});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      height: 70,
      child: Row(
        children: [
          SizedBox(width: 10,),
          Image.asset(imgName,fit: BoxFit.cover),
          SizedBox(width: 200,),
          Text(name, style: TextStyle(
            fontSize: 20.0,
            color: Theme.of(context).accentColor,
            fontWeight: FontWeight.bold,
          ),)

        ],
      ),
    );
  }
}
