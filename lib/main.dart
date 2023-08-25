import 'package:flutter/material.dart';
import 'package:flutter_jnigen_example/battery_utils.dart';
import 'package:jni/jni.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _batteryLevel = 0;

  JObject activity = JObject.fromRef(Jni.getCurrentActivity());

  void _getBatteryLevel() {
    setState(() {
      _batteryLevel = BatteryUtils(activity).getBatteryStatus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your battery level is',
            ),
            Text(
              '$_batteryLevel',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getBatteryLevel,
        tooltip: 'Get Battery level',
        child: const Icon(Icons.battery_unknown),
      ),
    );
  }
}
