import 'package:flutter/material.dart';

class ReadSound extends StatefulWidget {
  @override
  _ReadSoundState createState() => _ReadSoundState();
}

const mystyletext = TextStyle(
  fontSize: 50.0,
  backgroundColor: Color.fromARGB(255, 168, 135, 10),
);

class _ReadSoundState extends State<ReadSound> {
  Widget ls3() {
    return InkWell(
      hoverColor: Colors.orange.shade600,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Text(
              'ບົດທີ3 ປະຢັດເຄື່ອງຮຽນໃຫ້ດີ',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
        Navigator.pushNamed(context, '/lesson3');
      },
    );
  }

  Widget inkwell() {
    return InkWell(
      hoverColor: Colors.orange.shade600,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Text(
              'ບົດທີ1 ບົດຫົວໃຫມ່',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
        Navigator.pushNamed(context, '/lession1');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        title: Text(
          'ບົດເລື່ອງ',
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'lao',
              color: Color.fromARGB(255, 184, 133, 13),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white10,
      ),
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Divider(),
                inkwell(),
                Divider(),
                ls3(),
                Divider(),
                InkWell(
                  hoverColor: Colors.orange.shade600,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                        child: Text(
                          'ບົດທີ5 ຈົດໝາຍ',
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
                    Navigator.pushNamed(context, '/lesson5');
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
                          'ບົດທີ7 ສວນຂອງໂຮງຮຽນ',
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
                    Navigator.pushNamed(context, '/lesson7');
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
                          'ບົດທີ8 ຟືນດົ້ນດຽວດັງໄຟບໍ່ລຸກ',
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
                    Navigator.pushNamed(context, '/lesson8');
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
                          'ບົດທີ11 ຄອບຄົວຂອງຂ້ອຍ',
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
                    Navigator.pushNamed(context, '/lesson11');
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
                          'ບົດທີ18 ມໍລະດົກຂອງພໍ່',
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
                    Navigator.pushNamed(context, '/lesson18');
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
                          'ບົດທີ19 ຮັກສາແຂ້ວໃຫ້ສະອາດ',
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
                    Navigator.pushNamed(context, '/lesson19');
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
                          'ບົດທີ20 ການບົວລະບັດເຮືອນຊານ',
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
                    Navigator.pushNamed(context, '/lesson20');
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
                          'ບົດທີ21 ຊ່ວຍເຫຼືອຜູ້ເຖົ້າ',
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
                    Navigator.pushNamed(context, '/lesson21');
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
                          'ບົດທີ23 ໝາ ແລະ ຕ່ອນຊີ້ນ',
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
                    Navigator.pushNamed(context, '/lesson23');
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
                          'ບົດທີ24 ຄຳຮ້ອງ',
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
                    Navigator.pushNamed(context, '/lesson24');
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
                          'ບົດທີ25 ຕະຫຼາດນັດເຂດພູດອຍ',
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
                    Navigator.pushNamed(context, '/lesson25');
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
                          'ບົດທີ26 ບຸນເກີຂອງເຜົ່າກືມມຸ',
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
                    Navigator.pushNamed(context, '/lesson26');
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
                          'ບົດທີ27 ບຸນກີນຈຽງຂອງເຜົ່າມົ້ງ',
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
                    Navigator.pushNamed(context, '/lesson27');
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
                          'ບົດທີ29 ທາງເຂົ້າບ້ານ',
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
                    Navigator.pushNamed(context, '/lesson29');
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
                          'ບົດທີ32 ໝູປ້າຈັນ',
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
                    Navigator.pushNamed(context, '/lesson32');
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
                          'ບົດທີ33 ອາຊີບຊາວສວນ',
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
                    Navigator.pushNamed(context, '/lesson33');
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
                          'ບົດທີ34 ວິລະຊົນສີທອງ',
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
                    Navigator.pushNamed(context, '/lesson34');
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
                          'ບົດທີ37 ວັດພູຈຳປາສັກ',
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
                    Navigator.pushNamed(context, '/lesson37');
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
                          'ບົດທີ40 ບ້ານເມືອງຂອງເຮົາ',
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
                    Navigator.pushNamed(context, '/lesson40');
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
                          'ບົດທີ41 ເມືອງຫຼວງພະບາງ',
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
                    Navigator.pushNamed(context, '/lesson41');
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
                          'ບົດທີ42 ສ. ປ. ປ. ລາວ',
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
                    Navigator.pushNamed(context, '/lesson42');
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
                          'ບົດທີ43 ເປັດນ້ອຍ',
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
                    Navigator.pushNamed(context, '/lesson43');
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
                          'ບົດທີ45 ພູຜາປ່າດົງ',
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
                    Navigator.pushNamed(context, '/lesson45');
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
                          'ບົດທີ53 ລະດູການຂອງປະເທດເຮົາ',
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
                    Navigator.pushNamed(context, '/lesson53');
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
                          'ບົດທີ54 ປະໂຫຍດຂອງໄມ່ໄຜ່',
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
                    Navigator.pushNamed(context, '/lesson54');
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
                          'ບົດທີ56 ທຳມະຊາດ ແລະ ຊີວິດ ',
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
                    Navigator.pushNamed(context, '/lesson56');
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
                          'ບົດທີ62 ພະຍາດໃນຍາມຝົນ',
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
                    Navigator.pushNamed(context, '/lesson62');
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
                          'ບົດທີ64 ມື້ສຸດທ້າຍຂອງປີຮຽນ',
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
                    Navigator.pushNamed(context, '/lesson64');
                  },
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
