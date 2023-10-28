import 'package:flutter/material.dart';
import 'package:quiz_app/pages/startpage.dart';
import 'package:quiz_app/utils/consts.dart';

class ResultPage extends StatelessWidget {
  final int wrong, right;
  const ResultPage({Key? key, required this.wrong, required this.right})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: foreGroundColor,
        title: const Text(
          "Result",
          style: TextStyle(color: backGroundColor),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: backGroundColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RightandWrong(
                  text: 'RightAnswers',
                  count: right,
                ),
                RightandWrong(
                  text: 'Wrong Answers',
                  count: wrong,
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StartPage(),
                  ));
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(foreGroundColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))))),
            child: const Text(
              "Reset",
              style: TextStyle(color: backGroundColor),
            ),
          )
        ],
      ),
    );
  }
}

class RightandWrong extends StatelessWidget {
  final String text;
  final int count;
  const RightandWrong({
    super.key,
    required this.text,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
              color: whiteColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          count.toString(),
          style: const TextStyle(
              color: foreGroundColor,
              fontSize: 60,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
