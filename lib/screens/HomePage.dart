import 'package:flutter/material.dart';
import 'package:smart_app_shopping/screens/ProductPage.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//   List<Comment> _comments;
//   bool _isLoading;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _isLoading = true;
//     Services.getComments().then((comments) {
//       setState(() {
//         _comments = comments;
//         _isLoading = false;
//       });
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_isLoading?'Loading...':'Comments'),
//       ),
//       body: Container(
//         color: Colors.white,
//         child: ListView.builder(
//           itemBuilder: (context, index) {
//             Comment comment = _comments[index];
//             return CommentCard(name: comment.name, email: comment.email,);
//           },
//           itemCount: null == _comments? 0:_comments.length,
//         ),
//       ),
//     );
//   }
// }
class HomePage extends StatefulWidget {
  final String word ;
  HomePage({this.word});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _inputTextController ;
  String _keywords ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _inputTextController = new TextEditingController(text: widget.word);
    _keywords  = widget.word;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                decoration: InputDecoration(labelText: 'Nhập sản phẩm....'),
                controller: _inputTextController,
                onChanged: (text) {
                  setState(() {
                    _keywords = text;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(110),
              child: RaisedButton(
                color: Color(0xffffffff),
                child: Text(
                  'Tìm kiếm ',
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                ),
                onPressed: () {
                  setState(() {
                    if (_keywords.isEmpty) {
                      return;
                    }
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductPage(keywords: _keywords,limit: 50,)));
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
