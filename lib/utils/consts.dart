import 'package:flutter/material.dart';
import 'package:quiz_app/pages/models/questionmodels.dart';

const backGroundColor = Color.fromRGBO(45, 27, 3, 1);
const foreGroundColor = Color.fromRGBO(244, 148, 6, 1);
const whiteColor = Colors.white;

List<QuizQuestion> quizQuestions = [
  QuizQuestion(
    question: "What is Flutter?",
    correctAnswer:
        "A UI framework for building natively compiled applications for mobile, web, and desktop from a single codebase.",
    answerList: [
      "A programming language",
      "A game development framework",
      "A database management system",
      "A UI framework for building natively compiled applications for mobile, web, and desktop from a single codebase.",
    ],
  ),
  QuizQuestion(
    question: "Which programming language is used in Flutter?",
    correctAnswer: "Dart",
    answerList: ["Java", "Python", "Dart", "Kotlin"],
  ),
  QuizQuestion(
    question: "What is the Flutter widget tree?",
    correctAnswer:
        "A hierarchical structure of widgets that represent the user interface.",
    answerList: [
      "A list of popular Flutter widgets",
      "A hierarchical structure of widgets that represent the user interface.",
      "A collection of Flutter plugins",
      "A set of Flutter animations",
    ],
  ),
  QuizQuestion(
    question: "What is a MaterialApp widget used for?",
    correctAnswer: "Configuring the overall look and feel of a Flutter app.",
    answerList: [
      "Configuring the overall look and feel of a Flutter app.",
      "Managing app state",
      "Creating animations",
      "Sending HTTP requests",
    ],
  ),
  QuizQuestion(
    question: "What is hot reload in Flutter?",
    correctAnswer:
        "A feature that allows you to instantly see the results of your code changes in the app without restarting it.",
    answerList: [
      "A type of button in Flutter",
      "A way to send data between screens",
      "A feature that allows you to instantly see the results of your code changes in the app without restarting it.",
      "A process for updating Flutter packages",
    ],
  ),
  QuizQuestion(
    question: "What's the primary goal of Flutter?",
    correctAnswer:
        "To enable developers to create beautiful, high-performance apps that can run on any platform.",
    answerList: [
      "To make game development easier",
      "To create server-side applications",
      "To build machine learning models",
      "To enable developers to create beautiful, high-performance apps that can run on any platform.",
    ],
  ),
  QuizQuestion(
    question: "What is a StatefulWidget in Flutter?",
    correctAnswer: "A widget that can change its state over time.",
    answerList: [
      "A static widget that never changes",
      "A widget for handling user input",
      "A widget for displaying images",
      "A widget that can change its state over time.",
    ],
  ),
  QuizQuestion(
    question: "What is the main function in a Flutter app?",
    correctAnswer: "The entry point of the app, where execution begins.",
    answerList: [
      "A function for handling user interactions",
      "A function for defining widget properties",
      "A function for creating animations",
      "The entry point of the app, where execution begins.",
    ],
  ),
  QuizQuestion(
    question: "What is the purpose of the Scaffold widget in Flutter?",
    correctAnswer:
        "To implement the basic visual structure of a material design app.",
    answerList: [
      "To create custom animations",
      "To manage app data",
      "To define navigation routes",
      "To implement the basic visual structure of a material design app.",
    ],
  ),
  QuizQuestion(
    question: "What is a Flutter package?",
    correctAnswer:
        "A collection of code, assets, and dependencies that can be shared and reused in Flutter apps.",
    answerList: [
      "A collection of code, assets, and dependencies that can be shared and reused in Flutter apps.",
      "A Flutter app template",
      "A programming language",
      "A Flutter developer's toolbox",
    ],
  ),
];
