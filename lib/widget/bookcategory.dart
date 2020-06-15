import 'package:boierhat/bookdetails.dart';
import 'package:boierhat/model/data.dart';
import 'package:flutter/material.dart';

class BookCategory extends StatefulWidget {
  final Showdata recv;
  BookCategory({this.recv});

  @override
  _BookCategoryState createState() => _BookCategoryState();
}

class _BookCategoryState extends State<BookCategory> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: Colors.green,
        width: _width / 1.1,
        height: _height,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Route route = MaterialPageRoute(
                    builder: (context) => BookDescription(
                          recv: data[index],
                        ));
                Navigator.push(context, route);
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
                child: Container(
                  color: Colors.white,
                  width: _width / 1.1,
                  height: _height / 4,
                  child: Card(
                    elevation: 10.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            elevation: 5.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                data[index].imgUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Divider(),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: "Name ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0)),
                                    TextSpan(text: ":  ${widget.recv.name}")
                                  ],
                                ),
                              ), //This RichText doesn't Work
                              Text("")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
