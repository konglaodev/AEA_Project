import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/menusubject.dart';

class Bot3 extends StatefulWidget {
  @override
  _Bot3State createState() => _Bot3State();
}

class _Bot3State extends State<Bot3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //add2 ກັບໃປໜ້າເກົ່າ
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/bot2');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        //
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ3'),
        actions: <Widget>[
          //add3
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Menusub()),
                ModalRoute.withName('/menusub'),
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
              Navigator.pushReplacementNamed(context, '/bot4');
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
                          'images/3.1.jpg',
                        ),
                        Image.asset(
                          'images/3.2.jpg',
                        ),
                        Image.asset(
                          'images/3.3.jpg',
                        ),
                        Image.asset(
                          'images/3.4.jpg',
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
