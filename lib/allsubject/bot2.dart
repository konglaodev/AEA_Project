import 'package:flutter/material.dart';
//add1
//ແປງແຕ່ໃນສ່ວນຂອງAppbar
import 'package:primaryschool/page/panel/menusubject.dart';

class Bot2 extends StatefulWidget {
  @override
  _Bot2State createState() => _Bot2State();
}

class _Bot2State extends State<Bot2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //add2 ກັບໃປໜ້າເກົ່າ
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/bot1');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        //
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ2'),
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
              //add4 ໃປໜ້າໃຫມ່
              Navigator.pushReplacementNamed(context, '/bot3');
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
                          'images/2.1.jpg',
                        ),
                        Image.asset(
                          'images/2.2.jpg',
                        ),
                        Image.asset(
                          'images/2.3.jpg',
                        ),
                        Image.asset(
                          'images/2.4.jpg',
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
