import 'package:flutter/material.dart';

void main() {
  runApp(uygulama());
}

class uygulama extends StatelessWidget {
  const uygulama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text('Okulumuzun Öğrenci/ Öğretmen giriş Sistemi'),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
            ),
            ListTile(
                title: Text(
                    'Okulumuzun vermişolduğu 25 yıllık emeği karşısında güçlü akademik kadrosuyla sizlere en iyi eğitim vermeyi hedeflemekteyiz. '),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
      backgroundColor: Colors.green,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){Ekran2();
                Navigator.of(context).pushNamed( 'Settings');}, icon: Icon(Icons.add)),
        ],
        backgroundColor: Colors.brown,
        title: Text('Okul Giriş Sistemi'),
      ),
      body: iskelet(),
    ));
  }
}

class iskelet extends StatefulWidget {
  const iskelet({Key? key}) : super(key: key);

  @override
  State<iskelet> createState() => _iskeletState();
}

class _iskeletState extends State<iskelet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 220.0,
          ),
          PhysicalModel(
            shadowColor: Colors.brown,
            color: Colors.white,
            elevation: 20.0,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Padding(
              padding: EdgeInsets.only(
                  top: 50.0, bottom: 50.0, left: 50.0, right: 50.0),
              child: Column(
                children: const [
                  Text(
                    'Okul Giriş \n  Sistemi',
                    style:
                        TextStyle(fontSize: 40.0, fontFamily: 'DancingScript'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    ' Öğrenci Girişi 👩‍',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    ' Öğretmen Girişi👨‍🏫',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Ekran2 extends StatefulWidget {
  const Ekran2({Key? key}) : super(key: key);

  @override
  State<Ekran2> createState() => _Ekran2State();
}

class _Ekran2State extends State<Ekran2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Okul Giriş Sistemi'),
        ),
        body: Text('Şimdilik Sadece ayarlar penceremiz mevcuttur.'),
      ),
    );
  }
}
