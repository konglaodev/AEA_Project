import 'package:flutter/material.dart';

class Bot44 extends StatefulWidget {
  @override
  _Bot44State createState() => _Bot44State();
}

class _Bot44State extends State<Bot44> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ44'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot45');
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
                          'images/44.1.jpg',
                        ),
                        Image.asset(
                          'images/44.2.jpg',
                        ),
                        Image.asset(
                          'images/44.3.jpg',
                        ),
                        Image.asset(
                          'images/44.4.jpg',
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