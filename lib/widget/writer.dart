import 'package:flutter/material.dart';

class ByWritters extends StatelessWidget {
  _writtersContainer(String writtersName) {
    var text = writtersName;
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            text,
            style: TextStyle(
              color: Color.fromRGBO(0, 68, 69, 1),
            ),
          ),
        ),
      ),
      height: 40.0,
      width: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color.fromRGBO(248, 180, 0, 1),
        boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 5.0, offset: Offset(5.0, 5.0))],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            _writtersContainer("Humayun Ahmed"),
            SizedBox(
              width: 15.0,
            ),
            _writtersContainer("Samaresh Majumdar"),
            SizedBox(
              width: 15.0,
            ),
            _writtersContainer("Sukumar Sen"),
            SizedBox(
              width: 15.0,
            ),
            _writtersContainer("Humayun Azad"),
            SizedBox(
              width: 15.0,
            ),
            _writtersContainer("Abu Ishaque"),
            SizedBox(
              width: 15.0,
            ),
            _writtersContainer("Taslima Nasrin"),
            SizedBox(
              width: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}