import 'package:flutter/material.dart';

class HOWTOPLAY extends StatefulWidget {
  HOWTOPLAY({Key key}) : super(key: key);

  @override
  _HOWTOPLAYState createState() => _HOWTOPLAYState();
}

class _HOWTOPLAYState extends State<HOWTOPLAY> {
  Widget srnhn() {
    return Container(
      child: Text(
        "ວິທີອ່ານປຶ້ມເອເລັກໂຕຣນິກ",
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
      )
    );
  }
  Widget game() {
    return Container(
      child: Text(
        "ການຫຼິ້ນເກມ",
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
      )
    );
  }
  Widget sieng() {
    return Container(
      child: Text(
        "ວິທີໃຊ້ໜັງສືສຽງ",
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);

        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home),
          ),
          backgroundColor: Colors.orange.shade700,
          elevation: 0.0,
          title: Text(' ສອນການໃຊ້ງານແອພ'),
          actions: <Widget>[
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: null,
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
                          SizedBox(
                            height: 15,
                          ),
                          srnhn(),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'images/Nar 3.jpg',
                          ),
                          Image.asset(
                            'images/Nar 4.jpg',
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          sieng(),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'images/Nar_13.jpg',
                          ),
                          Image.asset(
                            'images/Nar_14.jpg',
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          game(),
                          SizedBox(
                            height: 10,
                          ),
                           Image.asset(
                            'images/Nar 5.jpg',
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
      ),
    );
  }
}
