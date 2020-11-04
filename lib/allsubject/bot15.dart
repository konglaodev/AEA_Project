import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/menusubject2.dart';

class Bot15 extends StatefulWidget {
  @override
  _Bot15State createState() => _Bot15State();
}

class _Bot15State extends State<Bot15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //add2 ກັບໃປໜ້າເກົ່າ
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/bot14');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        //
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ15'),
        actions: <Widget>[
          //add3
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Menusub2()),
                ModalRoute.withName('/menusub2'),
              );
            },
          ),
          SizedBox(
            width: 50,
          ),
          //
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              //ໃປໜ້າໃຫມ່
              Navigator.pushReplacementNamed(context, '/bot16');
            },
          ),
        ],
      ),
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: InteractiveViewer(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/15.1.jpg',
                        ),
                        Image.asset(
                          'images/15.2.jpg',
                        ),
                        Image.asset(
                          'images/15.3.jpg',
                        ),
                        Image.asset(
                          'images/15.4.jpg',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
