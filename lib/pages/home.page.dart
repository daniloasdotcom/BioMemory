import 'package:app_bioquimica/about/about.dart';
import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/flashcards/flashcards.opcoes.dart';
import 'package:app_bioquimica/viasmetabolicas/mapa.metabolico.choice.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF46171b),
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.dna,
                size: 40,
                color: Color(0xFF2b1d0e),
              ),
              Icon(
                Icons.add,
                size: 20,
                color: Color(0xFF2b1d0e),
              ),
              Icon(
                FontAwesomeIcons.brain,
                size: 40,
                color: Color(0xFF2b1d0e),
              ),
            ],
          ),
          backgroundColor: const Color(0xFFa7e2dd),
          toolbarHeight: 80,
          elevation: 5,
          shadowColor: mainColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(height: 20),

            // Elemento de Ícones
            Text(
              "Bio Memory",
              style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 30,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              child: Column(
                children: [
                  Text(
                    "Your Biochemistry app completely based on cognitive learning science",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // Botão de acesso às rotas metabólicas
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFFa7e2dd),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OpcoesMapaMetabolico();
                  }));
                },
                icon: const Icon(Icons.device_hub, color: Color(0xFF2b1d0e)),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "Biochemistry - subject by subject",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Color(0xFF2b1d0e)),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFFa7e2dd),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FlashCardsOpcoes();
                  }));
                },
                icon: const Icon(Icons.dashboard, color: Color(0xFF2b1d0e)),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "Flash Cards",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Color(0xFF2b1d0e)),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            
            const SizedBox(height: 20),


            // Botão de Acesso à Página de About
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFFa7e2dd),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return About();
                  }));
                },
                icon: const Icon(FontAwesomeIcons.rocket, color: Color(0xFF2b1d0e)),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "About This App",
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
              child: Column(
                children: [
                  Text(
                    "Developed by",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              child: Column(
                children: [
                  Text(
                    "daniloas.com",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
