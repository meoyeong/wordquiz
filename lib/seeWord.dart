import 'package:flutter/material.dart';

class seeWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
    (
        title: Text("단어장 보기 페이지"),

    )
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
            Text("단어장앱",
                style: TextStyle(fontSize: 35, color:Colors.purple)),
            SizedBox(height: 60.0),
            ElevatedButton
              (
              onPressed: ()
              { Navigator.push
                (
                  context,
                  MaterialPageRoute
                    (
                      builder: (_) => seeWord()
                  )
              );
              },
              child: Text
                (
                  "단어장 보기",
                  style: TextStyle(fontSize: 35, color:Colors.purple)
              ),
              style: TextButton.styleFrom(
                  foregroundColor: Colors.purple,
                  minimumSize: Size(300, 100),   // 버튼의 크기 조절하는 속성
                  disabledForegroundColor : Colors.lightGreen // 비활성화된 버튼 색도 바꿀 수 있다.
              ),
            ),
            SizedBox(height: 60.0),
            ElevatedButton
              (
              onPressed: ()
              {
              },

              child: Text
                (
                  "퀴즈 풀기",
                  style: TextStyle(fontSize: 35, color:Colors.purple)
              ),
              style: TextButton.styleFrom
                (
                  foregroundColor: Colors.purple,
                  minimumSize: Size(300, 100),   // 버튼의 크기 조절하는 속성
                  disabledForegroundColor : Colors.lightGreen // 비활성화된 버튼 색도 바꿀 수 있다.
              ),
            ),
            SizedBox(height: 60.0),
            ElevatedButton
              (
              onPressed: ()
              {
              },

              child: Text
                (
                  "오답 확인"
                  ,
                  style: TextStyle(fontSize: 35, color:Colors.purple)
              ),
              style: TextButton.styleFrom
                (
                  foregroundColor: Colors.purple,
                  minimumSize: Size(300, 100),   // 버튼의 크기 조절하는 속성
                  disabledForegroundColor : Colors.lightGreen // 비활성화된 버튼 색도 바꿀 수 있다.
              ),
            ),
          ]
          ),

        )
    );
  }
}