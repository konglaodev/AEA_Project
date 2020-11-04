import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/menusubject7.dart';

class Bot66 extends StatefulWidget {
  @override
  _Bot66State createState() => _Bot66State();
}

class _Bot66State extends State<Bot66> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        //add2 ກັບໃປໜ້າເກົ່າ
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/bot65');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        //
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ66'),
        actions: <Widget>[
          //add3
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Menusub7()),
                ModalRoute.withName('/menusub7'),
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
              Navigator.pushReplacementNamed(context, '/bot1');
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
                          'images/66.1.jpg',
                        ),
                        Image.asset(
                          'images/66.2.jpg',
                        ),
                        Image.asset(
                          'images/66.3.jpg',
                        ),
                        Image.asset(
                          'images/66.4.jpg',
                        ),
                        Image.asset(
                          'images/66.5.jpg',
                        ),
                        Image.asset(
                          'images/66.6.jpg',
                        ),
                        Image.asset(
                          'images/66.7.jpg',
                        ),
                        Image.asset(
                          'images/66.8.jpg',
                        ),
                        Image.asset(
                          'images/66.9.jpg',
                        ),
                        Image.asset(
                          'images/66.10.jpg',
                        ),Image.asset(
                          'images/66.11.jpg',
                        ),
                        Image.asset(
                          'images/66.12.jpg',
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