import 'package:flutter/material.dart';

class ReadSound3 extends StatefulWidget {
  @override
  _ReadSound3State createState() => _ReadSound3State();
}

const mystyletext = TextStyle(
  fontSize: 50.0,
  backgroundColor: Color.fromARGB(255, 168, 135, 10),
);

class _ReadSound3State extends State<ReadSound3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.orangeAccent,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'ນິທານ',
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'lao',
              color: Color.fromARGB(255, 184, 133, 13),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.3,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: SingleChildScrollView(
          child: Column(children: [
            Divider(),
            InkWell(
              hoverColor: Colors.orange.shade600,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Text(
                      'ບົດທີ4 ເຕົ່າກັບກະຕ່າຍ',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                    child: Icon(Icons.play_arrow),
                  )
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/lesson4');
              },
            ),
            Divider(),
            InkWell(
              hoverColor: Colors.orange.shade600,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Text(
                      'ບົດທີ12 ພໍ່ນາ ແລະ ງູເຫົ່າ',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                    child: Icon(Icons.play_arrow),
                  )
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/lesson12');
              },
            ),
            Divider(),
            InkWell(
              hoverColor: Colors.orange.shade600,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Text(
                      'ບົດທີ22 ເຕົ່າກັບໜູ',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                    child: Icon(Icons.play_arrow),
                  )
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/lesson22');
              },
            ),
            Divider(),
            //continue
            InkWell(
              hoverColor: Colors.orange.shade600,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Text(
                      'ບົດທີ39 ຄວາຍ ແລະ ມ້າສາມັກຄີກັນຂ້າເສືອ',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                    child: Icon(Icons.play_arrow),
                  )
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/lesson39');
              },
            ),
            Divider(),
            InkWell(
              hoverColor: Colors.orange.shade600,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Text(
                      'ບົດທີ47 ເສືອ ແລະ ງົວ',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                    child: Icon(Icons.play_arrow),
                  )
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/lesson47');
              },
            ),
            Divider(),
          ]),
        ),
      ),
    );
  }
}
