import 'package:flutter/material.dart';

class Bot61 extends StatefulWidget {
  @override
  _Bot61State createState() => _Bot61State();
}

class _Bot61State extends State<Bot61> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ61'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot62');
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
                          'images/61.1.jpg',
                        ),
                        Image.asset(
                          'images/61.2.jpg',
                        ),
                        Image.asset(
                          'images/61.3.jpg',
                        ),
                        Image.asset(
                          'images/61.4.jpg',
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