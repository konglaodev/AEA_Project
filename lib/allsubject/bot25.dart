import 'package:flutter/material.dart';

class Bot25 extends StatefulWidget {
  @override
  _Bot25State createState() => _Bot25State();
}

class _Bot25State extends State<Bot25> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ25'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot26');
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
                          'images/25.1.jpg',
                        ),
                        Image.asset(
                          'images/25.2.jpg',
                        ),
                        Image.asset(
                          'images/25.3.jpg',
                        ),
                        Image.asset(
                          'images/25.4.jpg',
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
