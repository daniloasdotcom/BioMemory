import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/viasmetabolicas/reacao1.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class OpcoesMapaMetabolico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF46171b),
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          title: const Text("Rotas Metabólicas",
              style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Color(0xFF2b1d0e))),
          backgroundColor: const Color(0xFFa7e2dd),
          toolbarHeight: 80,
          elevation: 5,
          shadowColor: mainColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(height: 40),
            const Icon(Icons.device_hub, color: Colors.white, size: 60),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFFa7e2dd),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Reacao1();
                  }));
                },
                icon: const Icon(Icons.broken_image_sharp,
                    color: Color(0xFF2b1d0e)),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: Size(100, 50),
                ),
                label: const Text(
                  "Glicolise",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Color(0xFF2b1d0e)),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFFa7e2dd),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon:
                    const Icon(Icons.circle_rounded, color: Color(0xFF2b1d0e)),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "Ciclo de Krebs",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Color(0xFF2b1d0e)),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
