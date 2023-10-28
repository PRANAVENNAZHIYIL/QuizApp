import 'package:flutter/material.dart';
import 'package:quiz_app/pages/models/questionmodels.dart';
import 'package:quiz_app/pages/resultpage.dart';
import 'package:quiz_app/utils/consts.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final PageController pageController = PageController();
  bool isAnsweLocked = false;
  int currentIndex = 0, correctAnswers = 0, wrongAnswers = 0;
  String correctAnswer = "";
  String selectedAnswer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: backGroundColor),
        backgroundColor: foreGroundColor,
        title: const Text("Play Quiz"),
        centerTitle: true,
      ),
      body: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: quizQuestions.length,
        itemBuilder: (context, index) {
          QuizQuestion models = quizQuestions[index];
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  models.question,
                  style: const TextStyle(
                      color: whiteColor, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: List.generate(
                      models.answerList.length,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                                child: OptionWidget(
                                  color:
                                      selectedAnswer == models.answerList[index]
                                          ? foreGroundColor
                                          : backGroundColor,
                                  options:
                                      '${index + 1}   ${models.answerList[index]}',
                                ),
                                onTap: () {
                                  isAnsweLocked = true;
                                  selectedAnswer = models.answerList[index];
                                  correctAnswer = models.correctAnswer;
                                  setState(() {});
                                }),
                          )),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          if (isAnsweLocked) {
            if (selectedAnswer == correctAnswer) {
              correctAnswers++;
            } else {
              wrongAnswers++;
            }

            currentIndex++;
            if (currentIndex != quizQuestions.length) {
              pageController.jumpToPage(currentIndex);
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            wrong: wrongAnswers,
                            right: correctAnswers,
                          )));
            }
          } else {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Selectyour Answer"),
            ));
          }
        },
        child: Container(
          alignment: Alignment.center,
          height: 55,
          color: foreGroundColor,
          child: const Text(
            "Next",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  final String options;
  final Color? color;
  const OptionWidget({
    super.key,
    required this.options,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      alignment: Alignment.centerLeft,
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: foreGroundColor),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        options,
        style: const TextStyle(color: whiteColor),
      ),
    );
  }
}
