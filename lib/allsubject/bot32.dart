import 'package:flutter/material.dart';

class Bot32 extends StatefulWidget {
  @override
  _Bot32State createState() => _Bot32State();
}

class _Bot32State extends State<Bot32> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ32'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot33');
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
                          'images/32.1.jpg',
                        ),
                        Image.asset(
                          'images/32.2.jpg',
                        ),
                        Image.asset(
                          'images/32.3.jpg',
                        ),
                        Image.asset(
                          'images/32.4.jpg',
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
