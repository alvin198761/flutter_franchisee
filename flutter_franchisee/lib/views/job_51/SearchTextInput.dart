import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 20,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border:
                    Border(right: BorderSide(color: Colors.black, width: 1))),
            child: Row(
              children: <Widget>[Text("北京"), Icon(Icons.arrow_drop_down)],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5,
            ),
//            child:  Text("---sssssssssssssssssssssssssssss"),
            child: TextField( ),
          ),
        ],
      ),
    );
  }
}
