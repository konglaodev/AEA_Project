import 'package:flutter/material.dart';

class Bot20 extends StatefulWidget {
  @override
  _Bot20State createState() => _Bot20State();
}

class _Bot20State extends State<Bot20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ20'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot21');
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
                          'images/20.1.jpg',
                        ),
                        Image.asset(
                          'images/20.2.jpg',
                        ),
                        Image.asset(
                          'images/20.3.jpg',
                        ),
                        Image.asset(
                          'images/20.4.jpg',
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
