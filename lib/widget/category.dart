// import 'package:boierhat/model/data.dart';
// import 'package:flutter/material.dart';

// class Category extends StatelessWidget {
//   const Category({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 30,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         itemCount: Showdata.Mydata.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             margin: EdgeInsets.symmetric(horizontal: 10.0),
//             height: 40,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.black38,
//                     blurRadius: 3.0,
//                     offset: Offset(5.0, 5.0))
//               ],
//               color: Color.fromRGBO(248, 180, 0, 1),
//             ),
//             child: Center(
//               child: Text(
//                 widget.recv.Mydata[index].category,
//                 style: TextStyle(
//                   color: Color.fromRGBO(0, 68, 69, 1),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
