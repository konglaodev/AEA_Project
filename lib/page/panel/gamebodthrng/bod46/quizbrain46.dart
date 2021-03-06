import 'question..dart';
import 'dart:math';

class QZ46 {
  int _score = 0;
  int _totalQuestionsAsked = 1;
  int qnum = 0;

  List<Questions> _quizQuestions = [
    Questions('    ນັບແຕ່ຮຽມລອດທ້ອງ      ຕົນແມ່ມານດາ','____________           ພໍ່ປຸນແປງສ້າງ', 'ມັນເຜືອກທູນຂີງ', 'ໃບຂອງເຈົ້ານັ້ນ ',
        'ເນົາຢູ່ເຄຫາ', 'ໃຜກໍພາກັນໄປ', 3),
    Questions('   ລຽບເລາະຕາມແຄມຮົ້ວ     ມັນເຜືອກທູນຂີງ',' ____________       ເບິ່ງກະຍູງຍາງໄມ້', 'ມາລາຫອມ ', 'ຫຼິງໄປເທິງເນີນພູ', 'ເຫັນເງົາຮູບຫຼໍ່',
        ' ອຶງຄະນຶງໃນປ່າ', 2),
    Questions('ຟັງສຽງຝູງສັດຮ້ອງ      ອຶງຄະນຶງໃນປ່າ','___________      ເຂົາເຄົ້າຮ່າຍຄອມ', 'ຮຽມນີ້ຮັກຫໍ່ຫຸ້ມ',
        'ສັກກຸນາແຂກເຕົ້າ', ' ຮູບພະອົງສົງລ້າງ', 'ປະກອບເປັນປ່າໄມ້', 2),
    Questions(' ສຸດຊົ່ວໃນຕາຢ້ຽມ      ຫຼຽວໄປອອ້ມຮອບ','____________  ດົງກ້ວາງທົ່ງພຽງ', 'ປະກອບເປັນປ່າໄມ້',
        'ດອກບົວເອີຍ', 'ປະກອບເປັນປ່າໄມ້', 'ເນົາຢູ່ເຄຫາ', 1),
  ];
  List<int> questionsAsked = [];

  int getScore() {
    return _score;
  }

  String getQuestion() {
    return _quizQuestions[qnum].question;
  }
  String getQuestion2() {
    return _quizQuestions[qnum].question2;
  }

  String getAnswer() {
    return getChoice(_quizQuestions[qnum]
        .ans); //This fetches the ans no and plugs it in the getChoice to return the correct answer
  }

  int getTotalQuestionsAsked() {
    return _totalQuestionsAsked;
  }

  void nextQuestion() {
    //verifies that the index of question is unique and updates the data member qnum to the new question number
    this.qnum = Random().nextInt(_quizQuestions
        .length); //This whole segment gets a random generated index for the question to be asked

    while (questionsAsked.contains(this.qnum)) {
      this.qnum = Random().nextInt(_quizQuestions.length);
    }
    questionsAsked.add(this.qnum); //Add this question index into the asked list
    print(qnum.toString() +
        ' was asked, questions asked so far ' +
        questionsAsked.length.toString());
  }

  bool checkAnswer(int selection) {
    bool isCorrect = false;
    if (selection == _quizQuestions[qnum].ans) {
      _score++;
      isCorrect = true;
      print('picked the correct answer ' + _score.toString());
    } else {
      print('picked the wrong answer');
    }
    _totalQuestionsAsked++; //regardless, question has been asked and button has been pressed
    return isCorrect;
  }

  String getChoice(int butChoice) {
    String choiceText;
    switch (butChoice) {
      case 1:
        choiceText = _quizQuestions[qnum].choice1;
        break;
      case 2:
        choiceText = _quizQuestions[qnum].choice2;
        break;
      case 3:
        choiceText = _quizQuestions[qnum].choice3;
        break;
      case 4:
        choiceText = _quizQuestions[qnum].choice4;
        break;
    }
    return choiceText;
  }

  void reset() {
    qnum = 0;
    _score = 0;
    _totalQuestionsAsked = 1;
    questionsAsked.clear();
  }
}
