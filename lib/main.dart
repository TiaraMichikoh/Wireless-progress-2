import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Safety',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
//      home: MainPage(),

      // Declare routes
      routes: {
        // Main initial route
        '/': (context) => MainPage(),
        // Second route
        '/second': (context) => SettingPage(),
      },
      initialRoute: '/',
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('User Safety'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                '\nCall and Send location\n',
                style: TextStyle(fontSize:30, fontWeight: FontWeight.bold,color: Colors.pinkAccent),
              ),
              RaisedButton(
                onPressed: () =>
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingPage()),
                ),
                color: Colors.pink,
                child: Text('191', style: TextStyle(fontSize:30)),
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: () =>
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EmergencyPage()),
                    ),
                color: Colors.pink,
                child: Text('Emergency Numbers', style: TextStyle(fontSize:30)),
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingPage()),
                    ),
                color: Colors.pink,
                child: Text('Setting', style: TextStyle(fontSize:30)),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      );
}
class EmergencyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Numbers'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              '\nCall and Send location\n',
              style: TextStyle(fontSize:30, fontWeight: FontWeight.bold,color: Colors.pinkAccent),
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingPage()),
                  ),
              color: Colors.pink,
              child: Text('081-234-5678', style: TextStyle(fontSize:30)),
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmergencyPage()),
                  ),
              color: Colors.pink,
              child: Text('093-785-6853', style: TextStyle(fontSize:30)),
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingPage()),
                  ),
              color: Colors.pink,
              child: Text('096-786-3567', style: TextStyle(fontSize:30)),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Shake'),
            subtitle: Text('Status: On'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Alarm Sound'),
            subtitle: Text('default'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Add Emergency Numbers'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('User Information'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
