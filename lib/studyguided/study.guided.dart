import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:app_bioquimica/studyguided/enzimas.dart';
import 'package:app_bioquimica/studyguided/lipidios.dart';
import 'package:flutter/material.dart';

class EstudoGuiado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E4650),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book_outlined,
              color: Color(0xFFE58E57),
            ),
            SizedBox(
              width: 20,
            ),
            const Text("Estudo Guiado",
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 18,
                    color: Colors.white)),
          ],
        ),
        backgroundColor: const Color(0xFF2E4D59),
        toolbarHeight: 80,
        elevation: 0,
        shadowColor: mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/fundo02.jpg'), // Substitua pelo caminho da sua imagem
                fit: BoxFit.cover,
              ),
            ),
            foregroundDecoration: BoxDecoration(
              color: Color.fromRGBO(43, 70, 80, 0.8),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              alignment: AlignmentDirectional.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextButton.icon(
                    icon:
                        const Icon(Icons.book_outlined, color: Color(0xFF2b1d0e)),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 10, right: 40),
                      alignment: Alignment.centerLeft,
                      minimumSize: Size(250, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xFFF2D6BD),
                    ),
                    label: const Text(
                      "Lipídios",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 12,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) {
                            return Lipidios();
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton.icon(
                    icon:
                        const Icon(Icons.book_outlined, color: Color(0xFF2b1d0e)),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 10, right: 40),
                      alignment: Alignment.centerLeft,
                      minimumSize: Size(250, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xFFF2D6BD),
                    ),
                    label: const Text(
                      "Enzimas",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 12,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) {
                            return Enzimas();
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    /*
    Scaffold(
      backgroundColor: const Color(0xFF46171b),
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          title: const Text("Biochemistry - subject by subject",
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
                  "Glycolysis",
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Introdution();
                  }));
                },
                icon:
                    const Icon(Icons.circle_rounded, color: Color(0xFF2b1d0e)),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "The cell",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Color(0xFF2b1d0e)),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

            const SizedBox(height: 40),
            // Opção Lipídios
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFFa7e2dd),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Lipidios();
                  }));
                },
                icon:
                    const Icon(Icons.circle_rounded, color: Color(0xFF2b1d0e)),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "Lipídios",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Color(0xFF2b1d0e)),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(height: 40),
            // Opção Lipídios

          ],
        ),
      ),
    );
    */
  }
}
