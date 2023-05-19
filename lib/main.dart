import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:rechyriedapp/OnlineModule/RdssddujyModule/DasBoardRdss.dart';
import 'package:rechyriedapp/OnlineModule/RdssddujyModule/PssCapture.dart';
import 'package:rechyriedapp/Utility/Utility.dart';
import 'package:rechyriedapp/logipage/LoginPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                DasBoardRdss()
            )
        )
    );
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
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image(image: AssetImage('images/ssp.png'),height: 100.0,alignment: Alignment.center,),
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed:() async {
      //
      //
      //     if( await Utility.perm(context)){
      //       setState(()   {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) {
      //
      //               return DasBoardRdss();
      //             }));
      //
      //       });
      //     } else{
      //       ToastCard(Text(""), Duration(days:0,hours:0,minutes:0,seconds:5,milliseconds:0,microseconds:0));
      //     }
      //   },
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}
