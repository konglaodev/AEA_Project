import 'package:flutter/material.dart';

class Bot57 extends StatefulWidget {
  @override
  _Bot57State createState() => _Bot57State();
}

class _Bot57State extends State<Bot57> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ57'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot58');
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
                          'images/57.1.jpg',
                        ),
                        Image.asset(
                          'images/57.2.jpg',
                        ),
                        Image.asset(
                          'images/57.3.jpg',
                        ),
                        Image.asset(
                          'images/57.4.jpg',
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