import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    // const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.teal,
                body: SafeArea(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            CircleAvatar(
                                radius: 50.0,
                                backgroundImage: AssetImage('images/Ly.jpg'),
                            ),
                            Text(
                                'Ngo Khanh Ly',
                                style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 36.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                            ),
                            Text(
                                'MATHEMATIC TEACHER',
                                style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 30.0,
                                    color: Colors.white),
                            ),
                            SizedBox(
                                height: 20.0,
                                width: 150.0,
                                child: Divider(
                                    color: Colors.teal.shade100,
                                ),
                            ),
                            Card(
                                color: Colors.white,
                                margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                                child: ListTile(
                                    leading: Icon(
                                        Icons.phone,
                                        color: Colors.teal,
                                    ),
                                    title: Text(
                                        '1234567890',
                                        style: TextStyle(color: Colors.teal, fontSize: 16),
                                    ),
                                ),
                            ),
                            Card(
                                color: Colors.white,
                                margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 30.0),
                                child: ListTile(
                                    leading: Icon(
                                        Icons.mail,
                                        color: Colors.teal,
                                    ),
                                    title: Text(
                                        'ly.ngokhanh@gmail.com',
                                        style: TextStyle(color: Colors.teal, fontSize: 16),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}
