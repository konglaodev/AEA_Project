import 'package:flutter/material.dart';

class Bot30 extends StatefulWidget {
  @override
  _Bot30State createState() => _Bot30State();
}

class _Bot30State extends State<Bot30> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ30'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot31');
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
                          'images/30.1.jpg',
                        ),
                        Image.asset(
                          'images/30.2.jpg',
                        ),
                        Image.asset(
                          'images/30.3.jpg',
                        ),
                        Image.asset(
                          'images/30.4.jpg',
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
