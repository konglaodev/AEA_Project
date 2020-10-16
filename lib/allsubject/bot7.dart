import 'package:flutter/material.dart';

class Bot7 extends StatefulWidget {
  @override
  _Bot7State createState() => _Bot7State();
}

class _Bot7State extends State<Bot7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ7'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot8');
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
                          'images/7.1.jpg',
                        ),
                        Image.asset(
                          'images/7.2.jpg',
                        ),
                        Image.asset(
                          'images/7.3.jpg',
                        ),
                        Image.asset(
                          'images/7.4.jpg',
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
