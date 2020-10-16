import 'package:flutter/material.dart';

class Bot5 extends StatefulWidget {
  @override
  _Bot5State createState() => _Bot5State();
}

class _Bot5State extends State<Bot5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ5'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot6');
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
                          'images/5.1.jpg',
                        ),
                        Image.asset(
                          'images/5.2.jpg',
                        ),
                        Image.asset(
                          'images/5.3.jpg',
                        ),
                        Image.asset(
                          'images/5.4.jpg',
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
