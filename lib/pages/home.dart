import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};


  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: 60,),
            FlatButton.icon(onPressed: () {
              Navigator.pushNamed(context, '/location');
            }, 
              icon: Icon(Icons.edit_location), 
              label: Text('Edit Location'), ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text(
                data['location'],
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 2,
                ),
              ),
              ],),
            SizedBox(height: 20,),
            Text(
              data['time'],
              style: TextStyle(
                fontSize: 66,
              ),
            )
          ],
        )
      ),
    );
  }
}
