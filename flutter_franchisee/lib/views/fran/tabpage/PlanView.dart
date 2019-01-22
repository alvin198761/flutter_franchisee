import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _PlanViewState();
  }
}

class _PlanViewState extends State<PlanView> {
  final List<FlatButton> footerButtons = <FlatButton>[
    new FlatButton(
      child: new Text("OK"),
      onPressed: () => {},
    ),
    new FlatButton(
      child: new Text("CANCEL"),
      onPressed: () => {},
    ),
  ];

  final BottomNavigationBar botNavBar = new BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
        icon: new Icon(Icons.access_alarm),
        title: new Text('Alarm'),
        backgroundColor: Colors.deepPurple[500],
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.save),
        title: new Text('Save'),
        backgroundColor: Colors.deepOrange[500],
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.cloud),
        title: new Text('Cloud'),
        backgroundColor: Colors.teal[500],
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.favorite),
        title: new Text('Favorites'),
        backgroundColor: Colors.indigo[500],
      )
    ],
    type: BottomNavigationBarType.shifting,
    onTap: (int index) {},
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text("计划"),
//      ),
      body: Center(
        child: Text("计划"),
      ),
      bottomNavigationBar: botNavBar,
      persistentFooterButtons: footerButtons,
    );
  }
}
