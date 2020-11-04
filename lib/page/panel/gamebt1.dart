import 'package:flutter/material.dart';

class Gamebt extends StatefulWidget {
  Gamebt({Key key}) : super(key: key);

  @override
  _GamebtState createState() => _GamebtState();
}

class _GamebtState extends State<Gamebt> {
  Widget startgame() {
    return 
       FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/gamefirstlesson');
        },
        child: Image.asset(
          'images/start.png',
          width: 300.0,
          height: 150.0,
        ),
      
    );
  }

  Widget back() {
    return 
       FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          "images/backbt.png",
          width: 50.0,
        ),
      
    );
  }

  Widget hintgame() {
    return
      
       FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/game1howto');
        },
        child: Image.asset(
          'images/hint.png',
          width: 300.0,
          height: 150.0,
        ),
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/NarinterfacegameBG.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
                  

            Row(
              children: [back()],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [startgame(),SizedBox(height: 20,) ,hintgame(),SizedBox(height: 20,)],
            ),
         
          ],
        ),
      ),
    );
  }
}
