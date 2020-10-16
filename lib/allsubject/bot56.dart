import 'package:flutter/material.dart';

class Bot56 extends StatefulWidget {
  @override
  _Bot56State createState() => _Bot56State();
}

class _Bot56State extends State<Bot56> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ56'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot57');
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
                          'images/56.1.jpg',
                        ),
                        Image.asset(
                          'images/56.2.jpg',
                        ),
                        Image.asset(
                          'images/56.3.jpg',
                        ),
                        Image.asset(
                          'images/56.4.jpg',
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