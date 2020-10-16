import 'package:flutter/material.dart';

class Bot9 extends StatefulWidget {
  @override
  _Bot9State createState() => _Bot9State();
}

class _Bot9State extends State<Bot9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ9'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot10');
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
                          'images/9.1.jpg',
                        ),
                        Image.asset(
                          'images/9.2.jpg',
                        ),
                        Image.asset(
                          'images/9.3.jpg',
                        ),
                        Image.asset(
                          'images/9.4.jpg',
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
