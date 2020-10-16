import 'package:flutter/material.dart';

class Bot12 extends StatefulWidget {
  @override
  _Bot12State createState() => _Bot12State();
}

class _Bot12State extends State<Bot12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ12'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot13');
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
                          'images/12.1.jpg',
                        ),
                        Image.asset(
                          'images/12.2.jpg',
                        ),
                        Image.asset(
                          'images/12.3.jpg',
                        ),
                        Image.asset(
                          'images/12.4.jpg',
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
