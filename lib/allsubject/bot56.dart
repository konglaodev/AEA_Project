import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/menusubject6.dart';

class Bot56 extends StatefulWidget {
  @override
  _Bot56State createState() => _Bot56State();
}

class _Bot56State extends State<Bot56> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //add2 ກັບໃປໜ້າເກົ່າ
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/bot55');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        //
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ56'),
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
              Navigator.pushReplacementNamed(context, '/bot57');
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
                          'images/56.1.jpg',
                        ),
                        Image.asset(
                          'images/56.2.jpg',
                        ),
                        Image.asset(
                          'images/56.3.jpg',
                        ),
                        Image.asset(
                          'images/56.4.jpg',
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