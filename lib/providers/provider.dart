import 'package:flutter/material.dart';
import 'package:quiz_app/map/quiz_api.dart';

class QuizProvider with ChangeNotifier{
  int _answer = 0;
  int get answer => _answer;

  void getQuiz(){
    _answer = _answer + 1;
    quizs;
    notifyListeners();
  }
}