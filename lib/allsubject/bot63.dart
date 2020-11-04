import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/menusubject7.dart';

class Bot63 extends StatefulWidget {
  @override
  _Bot63State createState() => _Bot63State();
}

class _Bot63State extends State<Bot63> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //add2 ກັບໃປໜ້າເກົ່າ
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/bot62');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        //
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ63'),
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
              Navigator.pushReplacementNamed(context, '/bot64');
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
                          'images/63.1.jpg',
                        ),
                        Image.asset(
                          'images/63.2.jpg',
                        ),
                        Image.asset(
                          'images/63.3.jpg',
                        ),
                        Image.asset(
                          'images/63.4.jpg',
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