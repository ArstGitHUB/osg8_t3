import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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
 
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
       
        title: Text(widget.title, textAlign: TextAlign.center),
        leading: new Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Material(
                    shape: new CircleBorder(),
                    color: Colors.white,
                    
                    child:  FlutterLogo()//Image.network('https://miro.medium.com/max/313/1*D5afxg0H9xyxfqRq_bfTgQ.png'),
                  ),
                ),
      ),
      body: new Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: GridView(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
         ),
         children: <Widget>[
           GridTile(
             child: const _ImageTemplate(Colors.green, 'https://miro.medium.com/max/313/1*D5afxg0H9xyxfqRq_bfTgQ.png'),
           ),
           GridTile(
              child: FlutterLogo(),
           ),
           GridTile(
              child: FlutterLogo(),
           )
         ],
       ),
      )
      
    );
  }
}

class _ImageTemplate extends StatelessWidget {
  const _ImageTemplate(this.backgroundColor, this.gridImage);
  final Color backgroundColor;
  final gridImage;
  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onDoubleTap: () {},
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Image.network(gridImage),
          ),
        ),
      ),
    );
  }
}

List<Widget> _tiles = const <Widget>[
  const _ImageTemplate(Colors.green, Icons.widgets),
  const _ImageTemplate(Colors.lightBlue, Icons.wifi),
  const _ImageTemplate(Colors.amber, Icons.panorama_wide_angle),
  const _ImageTemplate(Colors.brown, Icons.map),
  const _ImageTemplate(Colors.deepOrange, Icons.send),
  const _ImageTemplate(Colors.indigo, Icons.airline_seat_flat),
  const _ImageTemplate(Colors.red, Icons.bluetooth),
  const _ImageTemplate(Colors.pink, Icons.battery_alert),
  const _ImageTemplate(Colors.purple, Icons.desktop_windows),
  const _ImageTemplate(Colors.blue, Icons.radio),
];
