import 'package:flutter/material.dart';
import 'package:quiz_app/pages/playquizscreeen.dart';
import 'package:quiz_app/utils/consts.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: foreGroundColor,
        centerTitle: true,
        title: const Text("Quiz App"),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Quiz App",
              style: TextStyle(
                color: foreGroundColor,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuizScreen()));
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(foreGroundColor),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))))),
              child: const Text(
                "Go To Quiz",
                style: TextStyle(color: backGroundColor),
              ),
            )
          ],
        ),
      )),
    );
  }
}
