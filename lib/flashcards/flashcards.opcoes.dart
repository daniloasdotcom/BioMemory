import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/flashcards/flashcards.aula.01.dart';
import 'package:app_bioquimica/flashcards/flashcards.aula.02.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flutter/material.dart';

class FlashCardsOpcoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF46171b),
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          title: const Text(
            "Flash Cards",
            style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 15,
                color: Color(0xFF2b1d0e)),
          ),
          backgroundColor: const Color(0xFFa7e2dd),
          toolbarHeight: 80,
          elevation: 5,
          shadowColor: mainColor,
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          stops: [
            0.1,
            0.4,
            0.6,
            0.9,
          ],
          colors: [
            Color(0xFF29060A),
            Color(0xff3E0B10),
            Color(0xFF480C14),
            Color(0xFF50121D),
          ],
        )),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextButton(
                child: const Text(
                  'Escolha um dos cards a seguir',
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const FlashCards01();
                  }));
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 140,
                    width: 140,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.brown,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(4, 4)),
                      ],
                    ),
                    child: TextButton(
                      child: const Text(
                        'Grupos de Móleculas Orgânicas',
                        style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2b1d0e)),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const FlashCards01();
                        }));
                      },
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    height: 140,
                    width: 140,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.brown,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(4, 4)),
                      ],
                    ),
                    child: TextButton(
                    child: const Text(
                      'Conceitos: Metabolismos',
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const FlashCards02();
                      }));
                    },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 140,
                    width: 140,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.brown,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(4, 4)),
                      ],
                    ),
                    child: TextButton(
                      child: const Text(
                        'Glicólise',
                        style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2b1d0e)),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    height: 140,
                    width: 140,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.brown,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(4, 4)),
                      ],
                    ),
                    child: TextButton(
                    child: const Text(
                      'Via das pentoses fosfato',
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
