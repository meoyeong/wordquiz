import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
Widget _buildTop() {
  return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // GestureDetector 로 감싸기
              // 같은 걸로는 InkWell 이 있는데 누르면 누른 부분 효과 표시가 있다.
              //InkWell (
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.ac_unit,
                      size: 40,
                    ),
                    Text('눈송이')
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.ac_unit,
                    size: 40,
                  ),
                  Text('눈송이')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.ac_unit,
                    size: 40,
                  ),
                  Text('눈송이')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.ac_unit,
                    size: 40,
                  ),
                  Text('눈송이')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.ac_unit,
                    size: 40,
                  ),
                  Text('눈송이')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.ac_unit,
                    size: 40,
                  ),
                  Text('눈송이')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.ac_unit,
                    size: 40,
                  ),
                  Text('눈송이')
                ],
              ),
              // 메뉴하나 지웠고 가운데 정렬 되기에 투명으로 넣어줌
              Opacity(
                opacity: 0.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.landscape_outlined,
                      size: 40,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ));
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
