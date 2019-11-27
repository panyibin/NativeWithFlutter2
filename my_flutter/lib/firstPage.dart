import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPageState();
  }
}

class MyPageState extends State {
  static const platform = MethodChannel("com.yidian.local/methodChannel");
  static const eventChannel = EventChannel("com.yidian.local/eventChannel");
  static var count = 0;

var appName = "test";
  var myName = "";

  @override
  void initState() {
    super.initState();

    // eventChannel.receiveBroadcastStream().listen(_onEvent);
    platform.setMethodCallHandler(nativeCallFlutter);
  }

  void _onEvent(Object event) {
    print('native call flutter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page, god")),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text("First Page"),
          ),
          Center(
            child: Text("flutter call native:$appName"),
          ),
          Center(
            child: Text("native call flutter:$count"),
          ),
          GestureDetector(
            child: Text("button x"),
            onTap: () {
              print("press button");
              _getAppName();
            },
          )
        ],
      ),
    );
  }

  Future<void> _getAppName() async {
    String name;
    try {
      name = await platform.invokeMethod("getAppName");
    } catch (e) {
      name = "fail to call getAppName:$e";
    }

    setState(() {
      appName = name;
    });

    print(name);
  }

  Future<dynamic> nativeCallFlutter(MethodCall call) {
    print("flutter:native2flutter:$count,${call.method},${call.arguments}");
    print("arguments:${call.arguments["name"]}");
    count++;
    setState(() {
      
    });

    return Future.value("");
  }
}
