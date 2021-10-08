import 'package:flutter/material.dart';

var assetImage = AssetImage('assets/flutter-logo-sharing.png');
var image = Image(
  image: assetImage,
);

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("Clicked");
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              print("Notifications Clicked"); //statement klik
            },
            color: Colors.white54,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Search Clicked");
            },
            color: Colors.white54,
          )
        ],
        elevation: 6, // shadow appbar
        titleSpacing: 12, //jarak tittle
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("Clicked");
        },
        mini: true,
        backgroundColor: Colors.green,
        //shape: RoundedRectangleBorder(
        //borderRadius: BorderRadius.all(
        //Radius.circular(30)), // membuat icon kotak + radius
        //),
        elevation: 5, //shadow icon
        highlightElevation: 10, // shadow icon ketika di klik
      ),
      body: Container(
          color: Colors.lightBlue,
          child: Center(
            child: Container(
              height: 150,
              width: 300,
              alignment: Alignment(0.0, 0.8),
              decoration: BoxDecoration(
                  border: Border.all(width: 0, color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage('assets/flutter-logo-sharing.png'))),
            ),
          )
          //child: Image.network(
          //'https://cdn.dribbble.com/users/2132553/screenshots/5083276/dribbble_16.png',
          //fit: BoxFit.cover,
          //)
          //fontSize: 24,
          //fontStyle: FontStyle.italic,
          //fontWeight: FontWeight.w900),
          //),
          //floatingActionButton: FloatingActionButton.extended(
          //onPressed: () {
          // print("Pressed");
          //},
          //icon: Icon(Icons.message),
          //label: Text("Message"),
          //foregroundColor: Colors.white,
          //backgroundColor: Colors.black,
          //),
          //),
          ),
    );
  }
}
