import 'package:flutter/material.dart';
import 'package:musicdemo/player_widget.dart';

typedef void OnError(Exception exception);

const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  Widget remoteUrl() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          /*Text(
            'Sample 1 ($kUrl1)',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),*/
          PlayerWidget(url: kUrl1),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          PlayerWidget(url: kUrl1),
        ],
      ),
      /*body: Container(
        child: remoteUrl(),
      ),*/
    );
  }
}
