import 'package:flutter/material.dart';

class Bot26 extends StatefulWidget {
  @override
  _Bot26State createState() => _Bot26State();
}

class _Bot26State extends State<Bot26> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ26'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot27');
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
                          'images/26.1.jpg',
                        ),
                        Image.asset(
                          'images/26.2.jpg',
                        ),
                        Image.asset(
                          'images/26.3.jpg',
                        ),
                        Image.asset(
                          'images/26.4.jpg',
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
