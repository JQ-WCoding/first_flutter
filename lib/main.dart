// for dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      // color sample
      theme: ThemeData(primarySwatch: Colors.red), // Theme data
      // home: const FirstRoute(),
      // set routes -> because we need to separate class
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstRoute(),
        '/second': (context) => const SecondRoute(),
        '/third':(context) => const ThirdRoute(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[300],
      appBar: AppBar(
        title: const Text('First Sample'),
        centerTitle: true,
        // bar color
        backgroundColor: Colors.red,
        // app bar line
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40.0, 30.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Name',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'JunQ',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Hi'),
          ],
        ),
      ),
    );
  }
}

/*
 pop - up -> new page
 called Route -> can make two pages
 */
class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: MaterialButton(
            child: const Text('Open Route'),
            onPressed: () {
              // Navigator.push -> go to 'builder: (context) =>' call class
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const SecondRoute()));
              Navigator.pushNamed(context, '/third');
            }),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        // RaisedButton -> MaterialButton
        child: MaterialButton(
          onPressed: () {
            // onPressed -> Navigator.pop : clean all routes and back to current Route
            Navigator.pop(context);
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget{
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        // how many tabs
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                // tab icons
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('TabsDemo'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }

}