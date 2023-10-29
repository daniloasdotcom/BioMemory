import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/pages/custom_page_route.dart';
import 'package:app_bioquimica/pages/custom_rotation.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:app_bioquimica/viasmetabolicas/reacao1.dart';
import 'package:app_bioquimica/viasmetabolicas/reacao3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: use_key_in_widget_constructors
class Final extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text("Bio Memory 2022/2",
             style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 15,
                      color: Colors.black)),
          backgroundColor: const Color(0xFFa7e2dd),
          toolbarHeight: 80,
          elevation: 5,
          shadowColor: mainColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text('Parabéns você concluir a via metabólica da Glicólise!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Merriweather'),
                    textAlign: TextAlign.center)),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Image.asset('assets/images/11.png',
                  fit: BoxFit.cover, width: double.infinity),
            ),
            Container(
              height: 180,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Image.asset('assets/images/trofeu.png'),
            ),
          ],
        ),
      ),
    );
  }
}
