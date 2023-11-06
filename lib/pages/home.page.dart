import 'package:app_bioquimica/about/about.dart';
import 'package:app_bioquimica/flashcards/flashcards.opcoes.dart';
import 'package:app_bioquimica/introdution/study.guided.dart';
import 'package:app_bioquimica/viasmetabolicas/mapa.metabolico.choice.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  final Uri _url = Uri.parse(
      'https://bioquimicacomdanilo.com.br/politicaapp');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E4650),
      body: Center(
        child: ListView(
          children: [
            Stack(children: [
              Container(
                padding:
                    EdgeInsets.only(left: 40, right: 40, top: 100, bottom: 100),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/fundo01.jpg'), // Replace with your image path
                    fit: BoxFit.cover, // You can adjust the fit as needed
                  ),
                ),
                foregroundDecoration: BoxDecoration(
                  color: Color.fromRGBO(43, 70, 80, 0.6),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 40),
                child: Column(
                  children: [
                    Text(
                      "Bio Memory",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 30,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Seu aplicativo de estudo de bioquímica, completamente baseado em ciência cognitiva de aprendizagem",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 13,
                          height: 1.5,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ]),

            const SizedBox(height: 30),

            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: Divider(
                color: Colors.white, // Define a cor da linha
                thickness: 0.5, // Define a espessura da linha (opcional)
              ),
            ), // Botão de acesso às rotas metabólicas
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFF2E4650),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return EstudoGuiado();
                      },
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.book_outlined,
                  color: Color(0xFFE58E57),
                ),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "Estudo Guiado",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: Divider(
                color: Colors.white, // Define a cor da linha
                thickness: 0.5, // Define a espessura da linha (opcional)
              ),
            ), // Botão de acesso às rotas metabólicas
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              decoration: BoxDecoration(
                color: const Color(0xFF2E4650),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return OpcoesMapaMetabolico();
                      },
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 1500),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.device_hub,
                  color: Color(0xFFE58E57),
                ),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "Vias Bioquímicas",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: Divider(
                color: Colors.white, // Define a cor da linha
                thickness: 0.5, // Define a espessura da linha (opcional)
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFF2E4650),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return FlashCardsOpcoes();
                      },
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.dashboard,
                  color: Color(0xFFE58E57),
                ),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "FlashCards",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            // Botão de Acesso à Página de About
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: Divider(
                color: Colors.white, // Define a cor da linha
                thickness: 0.5, // Define a espessura da linha (opcional)
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              decoration: BoxDecoration(
                color: const Color(0xFF2E4650),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return About();
                  }));
                },
                icon: const Icon(FontAwesomeIcons.rocket,
                    color: Color(0xFFE58E57)),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "Sobre o Aplicativo",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: Divider(
                color: Colors.white, // Define a cor da linha
                thickness: 0.5, // Define a espessura da linha (opcional)
              ),
            ),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  Text(
                    "Desenvolvido por",
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
              margin: const EdgeInsets.only(left: 20, right: 20),
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
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                _launchUrl();
              },
              child: Text(
                "Politica de Privacidade",
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    height: 1.5,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2.0,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
