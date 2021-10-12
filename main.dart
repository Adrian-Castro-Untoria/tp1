import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Venez acheter!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

  set borderRadius(BorderRadius borderRadius) {}

  set side(BorderSide side) {}

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title), centerTitle: true,
        backgroundColor: const Color(0x96969666),
        // ignore: always_specify_types
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(37),
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(Icons.home),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.shopping_cart_rounded),
          )
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          mainAxisAlignment: MainAxisAlignment.start,
          children: appli,
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.school_sharp),
      ), */ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List<Widget> get appli {
    return <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10, right: 10),
            child: Text(
              'Recommandé',
              style: TextStyle(fontSize: 15, color: Colors.white, shadows: [
                Shadow(
                  color: const Color(0x11111111).withOpacity(0.7),
                  offset: const Offset(0, 0),
                  blurRadius: 20,
                )
              ]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              'Habillage Formel',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white38,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Text(
              'Habillage Casuel',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white38,
              ),
            ),
          )
        ],
      ),
      /*const Text(
            'Vous avez poussez le bouton ce nombre de fois:',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline6,
          ),*/
      // ignore: unnecessary_string_escapes
      Image.network(
          'https://github.com/Adrian-Castro-Untoria/tp1/blob/main/Shopping.jpg?raw=true',
          scale: 2.75),
      SizedBox(
        width: 300,
        height: 100,
        // ignore: prefer_const_literals_to_create_immutables
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables

          children:
              // ignore: prefer_const_literals_to_create_immutables
              [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0x92785435),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x11111111).withOpacity(0.2),
                          offset: const Offset(0, 0),
                          blurRadius: 20,
                          spreadRadius: 3)
                    ]),
                width: 7,
                height: 70,
                child: const Text(
                  'Limité',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
              height: 100,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0x99537809),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x11111111).withOpacity(0.2),
                          offset: const Offset(0, 0),
                          blurRadius: 20,
                          spreadRadius: 3)
                    ]),
                width: 7,
                height: 70,
                child: const Text(
                  'Offres',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),

      SizedBox(
        width: 300,
        height: 100,
        // ignore: prefer_const_literals_to_create_immutables
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables

          children:
              // ignore: prefer_const_literals_to_create_immutables
              [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0x95654767),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x11111111).withOpacity(0.2),
                          offset: const Offset(0, 0),
                          blurRadius: 20,
                          spreadRadius: 3)
                    ]),
                width: 7,
                height: 70,
                child: const Text(
                  'Meilleurs vendeurs',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
              height: 100,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0x97987978),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x11111111).withOpacity(0.2),
                          offset: const Offset(0, 0),
                          blurRadius: 20,
                          spreadRadius: 3)
                    ]),
                width: 7,
                height: 70,
                child: const Text(
                  'Coups de coeur',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: 300,
        height: 100,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children:
            // ignore: prefer_const_literals_to_create_immutables
            [
          // ignore: prefer_const_literals_to_create_immutables
          const Icon(
            Icons.backup_table_sharp,
            size: 50,
            color: Colors.white,
          ),
          const Icon(
            Icons.youtube_searched_for_outlined,
            size: 50,
            color: Colors.white,
          ),
          const Icon(
            Icons.backpack_rounded,
            size: 50,
            color: Colors.white,
          ),
        ]),
      ),
    ];
  }
}
