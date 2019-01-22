import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeepView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _KeepViewState();
  }
}

class _KeepViewState extends State<KeepView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text("健身"),
//      ),
      body: Center(
        child:  Text("健身"),
      ),

      floatingActionButton: new Builder(builder: (BuildContext context) {
        return new FloatingActionButton(
          child: const Icon(Icons.add),
          tooltip: "Hello",
          foregroundColor: Colors.white,
//          backgroundColor: Colors.black,
          heroTag: null,
          elevation: 7.0,
          highlightElevation: 14.0,
          onPressed: () {
            Scaffold.of(context).showSnackBar(new SnackBar(
              content: new Text("FAB is Clicked"),
            ));
          },
          mini: false,
          shape: new CircleBorder(),
          isExtended: false,
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
