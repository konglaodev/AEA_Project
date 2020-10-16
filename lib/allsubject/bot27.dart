import 'package:flutter/material.dart';

class Bot27 extends StatefulWidget {
  @override
  _Bot27State createState() => _Bot27State();
}

class _Bot27State extends State<Bot27> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ27'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot28');
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
                          'images/27.1.jpg',
                        ),
                        Image.asset(
                          'images/27.2.jpg',
                        ),
                        Image.asset(
                          'images/27.3.jpg',
                        ),
                        Image.asset(
                          'images/27.4.jpg',
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
