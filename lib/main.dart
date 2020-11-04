import 'package:flutter/material.dart';
import 'package:bezier_chart/bezier_chart.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(
        title: Text("Sensor Data"),
        leading: Icon(
          Icons.bluetooth,
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Text("temp1"),
              Text("temp2"),
              Text("presure1"),
              Text("presure2"),
            ],
            crossAxisAlignment: ,
          ),

          Center(
            child: sample1(context),
          ),
        ],
      ),



      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}





Widget sample1(BuildContext context) {
  return Center(
    child: Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width * 0.9,
      child: BezierChart(
        bezierChartScale: BezierChartScale.CUSTOM,
        xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
        series: const [
          BezierLine(
            label: "Custom 1",
            data: const [
              DataPoint<double>(value: 10, xAxis: 0),
              DataPoint<double>(value: 130, xAxis: 5),
              DataPoint<double>(value: 50, xAxis: 10),
              DataPoint<double>(value: 150, xAxis: 15),
              DataPoint<double>(value: 75, xAxis: 20),
              DataPoint<double>(value: 0, xAxis: 25),
              DataPoint<double>(value: 5, xAxis: 30),
              DataPoint<double>(value: 45, xAxis: 35),
            ],
          ),
          BezierLine(
            lineColor: Colors.red,
            lineStrokeWidth: 2.0,
            label: "Custom 2",
            data: const [
              DataPoint<double>(value: 5, xAxis: 0),
              DataPoint<double>(value: 50, xAxis: 5),
              DataPoint<double>(value: 30, xAxis: 10),
              DataPoint<double>(value: 30, xAxis: 15),
              DataPoint<double>(value: 50, xAxis: 20),
              DataPoint<double>(value: 40, xAxis: 25),
              DataPoint<double>(value: 10, xAxis: 30),
              DataPoint<double>(value: 30, xAxis: 35),
            ],
          ),
          BezierLine(
            lineColor: Colors.black,
            lineStrokeWidth: 2.0,
            label: "Custom 3",
            data: const [
              DataPoint<double>(value: 5, xAxis: 0),
              DataPoint<double>(value: 10, xAxis: 5),
              DataPoint<double>(value: 35, xAxis: 10),
              DataPoint<double>(value: 40, xAxis: 15),
              DataPoint<double>(value: 40, xAxis: 20),
              DataPoint<double>(value: 40, xAxis: 25),
              DataPoint<double>(value: 9, xAxis: 30),
              DataPoint<double>(value: 11, xAxis: 35),
            ],
          ),
        ],
        config: BezierChartConfig(
          verticalIndicatorStrokeWidth: 3.0,
          verticalIndicatorColor: Colors.amber,
          showVerticalIndicator: true,
          backgroundColor: Colors.blue,
          snap: false,
        ),
      ),
    ),
  );
}