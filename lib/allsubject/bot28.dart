import 'package:flutter/material.dart';

class Bot28 extends StatefulWidget {
  @override
  _Bot28State createState() => _Bot28State();
}

class _Bot28State extends State<Bot28> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ28'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot29');
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
                          'images/28.1.jpg',
                        ),
                        Image.asset(
                          'images/28.2.jpg',
                        ),
                        Image.asset(
                          'images/28.3.jpg',
                        ),
                        Image.asset(
                          'images/28.4.jpg',
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
