import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:primaryschool/page/panel/gamebodthrng/quizbrain.dart';

QZ2 quiz2 = QZ2();

class Gamebtls2 extends StatefulWidget {
  Gamebtls2({Key key}) : super(key: key);

  @override
  _Gamebtls2State createState() => _Gamebtls2State();
}

class _Gamebtls2State extends State<Gamebtls2> {
  String setScore() {
    int score = quiz2.getScore();
    return 'ຄະແນນປັດຈຸບັນ: $scoreໃນ4';
  }

  void ansChecker(int choicNo) {
    String corrAns = 'ຄຳຕອບທີ່ຖືກແມ່ນ: ' +
        quiz2
            .getAnswer(); //This is put on top of the line below because the line below changes the qnum index, and we need it to get the correct ans
    bool isCorrect = quiz2.checkAnswer(choicNo);
    setState(() {
      if (isCorrect == false && quiz2.getTotalQuestionsAsked() > 1) {
        Alert(
          context: context,
          type: AlertType.error,
          title: "ຄຳຕອບຜິດເດີ້",
          desc: corrAns,
          buttons: [
            DialogButton(
              child: Text(
                "ຕົກລົງ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
      }
      if (quiz2.getTotalQuestionsAsked() <= 4) {
        quiz2
            .nextQuestion(); //as button has been pressed the nextQuestion needs to be invoked, this will change the qnum and as the app refreshes the getQuestion will show the new question
      } else {
        Alert(
          context: context,
          type: AlertType.success,
          title: "ຕອບຄົບທຸກຂໍ້ແລ້ວ",
          //desc: 'ຕອບຖືກທັງຫມົດ: ',
          buttons: [
            DialogButton(
              child: Text(
                "ຫຼິ້ນອີກຄັ້ງ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 200,
            ),
             
          ],
        ).show();
        quiz2.reset();
      }
    });
  }

  String getQuestionNo() {
    return 'ຄຳຖາມທີ່ີຕອບໄປແລ້ວ: ' +
        quiz2.getTotalQuestionsAsked().toString() +
        'ຂໍ້';
  }

  FlatButton createChoiceButton(int btnNo) {
    return FlatButton(
      onPressed: () {
        setState(() {
          ansChecker(btnNo);
        });
      },
      child: SizedBox(
        width: 300.0,
        height: 100.0,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/buttonsl.png',
                  ),
                  fit: BoxFit.fill)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                quiz2.getChoice(btnNo),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget back() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          "images/backbt.png",
          width: 40.0,
        ),
      ),
    );
  }

  Widget kuppai() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/lesson2');
        },
        child: Image.asset(
          "images/backtolesson.png",
          width: 150.0,
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      child: Text(
        "ບົດທີ2: ໂຮງຮຽນຂອງຂ້ອຍ",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none),
      ),
    );
  }

  Widget backhome() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          "images/homepage.png",
          width: 40.0,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/NarinterfacegameBG.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  setScore(),
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title(),
                kuppai(),
              ],
            ),
          ),
          Column(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 500.0,
                    height: 110.0,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'images/Border.png',
                              ),
                              fit: BoxFit.fill)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            quiz2.getQuestion(),
                            //gets the question with the current qnum
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            quiz2.getQuestion2(),
                            //gets the question with the current qnum
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      createChoiceButton(1),
                      SizedBox(
                        height: 35.0,
                      ),
                      createChoiceButton(2),
                    ],
                  ),
                  SizedBox(
                    width: 200.0,
                  ),
                  Column(
                    children: [
                      createChoiceButton(3),
                      SizedBox(
                        height: 35.0,
                      ),
                      createChoiceButton(4),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
