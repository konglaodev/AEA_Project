import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/menusubject6.dart';

class Bot53 extends StatefulWidget {
  @override
  _Bot53State createState() => _Bot53State();
}

class _Bot53State extends State<Bot53> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //add2 ກັບໃປໜ້າເກົ່າ
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/bot52');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        //
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ53'),
        actions: <Widget>[
          //add3
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Menusub6()),
                ModalRoute.withName('/menusub6'),
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
              Navigator.pushReplacementNamed(context, '/bot54');
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
                          'images/53.1.jpg',
                        ),
                        Image.asset(
                          'images/53.2.jpg',
                        ),
                        Image.asset(
                          'images/53.3.jpg',
                        ),
                        Image.asset(
                          'images/53.4.jpg',
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