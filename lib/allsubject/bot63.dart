import 'package:flutter/material.dart';

class Bot63 extends StatefulWidget {
  @override
  _Bot63State createState() => _Bot63State();
}

class _Bot63State extends State<Bot63> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ63'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot64');
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