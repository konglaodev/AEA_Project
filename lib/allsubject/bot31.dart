import 'package:flutter/material.dart';

class Bot31 extends StatefulWidget {
  @override
  _Bot31State createState() => _Bot31State();
}

class _Bot31State extends State<Bot31> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ31'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot32');
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
                          'images/31.1.jpg',
                        ),
                        Image.asset(
                          'images/31.2.jpg',
                        ),
                        Image.asset(
                          'images/31.3.jpg',
                        ),
                        Image.asset(
                          'images/31.4.jpg',
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
