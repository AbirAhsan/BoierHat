import 'package:boierhat/model/data.dart';
import 'package:boierhat/screens/pdf.dart';
import 'package:flutter/material.dart';

class BookDescription extends StatefulWidget {
  final Showdata recv;
  BookDescription({this.recv});
  @override
  _BookDescriptionState createState() => _BookDescriptionState();
}

class _BookDescriptionState extends State<BookDescription> {
  @override
  Widget build(BuildContext context) {
    var _boxHeight = MediaQuery.of(context).size.height;
    var _boxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: Container(
        color: Color.fromRGBO(0, 68, 69, 1),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                color: Colors.amber,
                margin: EdgeInsets.only(top: 30.0),
                child: Container(
                  height: _boxHeight / 2.1,
                  width: _boxHeight / 2 * 0.6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                    child: Image.asset(
                      widget.recv.imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10.0),
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: _boxHeight / 1.8,
                width: _boxWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0)),
                    color: Color.fromRGBO(250, 245, 228, 1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          spreadRadius: 1.0)
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: 30.0,
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text: "Title",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0)),
                              TextSpan(text: " :${widget.recv.name} ")
                            ]),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text: "Author",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0)),
                              TextSpan(text: " : ${widget.recv.author}  ")
                            ]),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text: "Category",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0)),
                              TextSpan(text: " : ${widget.recv.category}")
                            ]),
                      ),
                      Text(": ${widget.recv.description}")
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: RaisedButton(
        onPressed: () {
          print("clicked");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PdfPage(widget.recv.url)),
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.blue,
        child: Text(
          "Read now",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
