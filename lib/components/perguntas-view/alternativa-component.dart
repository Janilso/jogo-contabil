import 'package:flutter/material.dart';

class Alternativa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Card(
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    //   color: Colors.transparent,
    //   child: InkWell(
    //     onTap: () {
    //       print("tapped");
    //     },
    //     child: Container(
    //       child: ListTile(
    //         contentPadding:
    //             EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    //         leading: Container(
    //           padding: EdgeInsets.only(right: 12.0),
    //           child: Icon(Icons.autorenew, color: Colors.white),
    //         ),
    //         title: Text(
    //           "Introduction to Driving",
    //           style:
    //               TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return Container(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(Icons.autorenew, color: Colors.white),
        ),
        title: Text(
          "Introduction to Driving",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
