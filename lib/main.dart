import 'package:flutter/material.dart';
import 'seeWord.dart';
import 'quiz.dart';
import 'wrongWord.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '영어 단어장 앱',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '영어 단어장 메인'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: Center
      (
        child:Column(mainAxisAlignment: MainAxisAlignment.center, children:
        [
          ElevatedButton
            (
            child: Text("영어 단어장 보기"),
            onPressed: ()
            {
              Navigator.push
                (
                  context,
                  MaterialPageRoute
                    (
                      builder: (_) => seeWord()
                    )
                );
            },
            ),
           ElevatedButton
            (
            child: Text("퀴즈풀기"),
            onPressed: ()
            {
              Navigator.push
                (
                  context,
                  MaterialPageRoute
                    (
                      builder: (_) => quiz()
                  )
              );
            },
          ),
          ElevatedButton
          (
            child: Text("오답확인"),
            onPressed: ()
              {
                Navigator.push
                  (
                    context,
                    MaterialPageRoute
                      (
                      builder: (_) => wrongWord()
                      )
                );
              },
          ),
            ElevatedButton.icon
            (
            onPressed: ()
            { },
              icon: Icon(Icons.add, size: 18),
              label: Text("CONTAINED BUTTON"),
            )
        ]
      ),

      )
    );
  }
}
