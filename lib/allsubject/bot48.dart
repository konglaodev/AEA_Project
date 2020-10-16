import 'package:flutter/material.dart';

class Bot48 extends StatefulWidget {
  @override
  _Bot48State createState() => _Bot48State();
}

class _Bot48State extends State<Bot48> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ48'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot49');
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
                          'images/48.1.jpg',
                        ),
                        Image.asset(
                          'images/48.2.jpg',
                        ),
                        Image.asset(
                          'images/48.3.jpg',
                        ),
                        Image.asset(
                          'images/48.4.jpg',
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