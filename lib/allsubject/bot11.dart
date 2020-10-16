import 'package:flutter/material.dart';

class Bot11 extends StatefulWidget {
  @override
  _Bot11State createState() => _Bot11State();
}

class _Bot11State extends State<Bot11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ11'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot12');
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
                          'images/11.1.jpg',
                        ),
                        Image.asset(
                          'images/11.2.jpg',
                        ),
                        Image.asset(
                          'images/11.3.jpg',
                        ),
                        Image.asset(
                          'images/11.4.jpg',
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
