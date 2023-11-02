import 'dart:math';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flutter/material.dart';

class MinhaPagina extends StatefulWidget {
  @override
  _MinhaPaginaState createState() => _MinhaPaginaState();
}

class _MinhaPaginaState extends State<MinhaPagina> {
  bool showSection3 = false; // Variável para controlar a exibição da Seção 3

  double screenHeight = 0.0; // Altura da tela atual

  final ScrollController _scrollController = ScrollController();
  final List<String> buttonLabels01 = [
    "Oxalacetato",
    "Glicose-6-Fosfato",
    "Lactato",
    "Fosfenolpiruvato"
  ];

  final List<String> buttonLabels02 = [
    "Fosfenolpiruvato",
    "Oxalacetato",
    "Glicose-6-Fosfato",
    "Lactato",
  ];
  final Random random = Random();

  get mainColor => null;

  List<int> generateRandomIndices(int length) {
    List<int> indices = List.generate(length, (index) => index);
    indices.shuffle();
    return indices;
  }

  List<int> randomIndices01 = [];
  List<int> randomIndices02 = [];
  bool showSection2 = false;
  bool showSection4 = false;

  void _scrollToSection2(context) {
    setState(() {
      showSection2 = true;
    });

    _scrollController.animateTo(
      MediaQuery.of(context).size.height ,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToSection4(context) {
    setState(() {
      showSection4 = true;
    });

    double appBarHeight = AppBar().preferredSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double totalHeight = appBarHeight + statusBarHeight;

    double targetPosition = _scrollController.offset + (screenHeight + totalHeight);

    _scrollController.animateTo(
      targetPosition,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    randomIndices01 = generateRandomIndices(buttonLabels01.length);
    randomIndices02 = generateRandomIndices(buttonLabels02.length);
    _scrollController.addListener(_updateScreenHeight);

    print("Altura da tela após _updateScreenHeight ");
    print(screenHeight);
  }

  void _updateScreenHeight() {
    setState(() {
      screenHeight = MediaQuery.of(context).size.height;
    });
  }

  void _scrollToNextSection() {
    double appBarHeight = AppBar().preferredSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double totalHeight = appBarHeight + statusBarHeight;

    double targetPosition = _scrollController.offset + (screenHeight + totalHeight);

    print("E o targetPositio é");
    print(targetPosition);

    if (!showSection3) {
      setState(() {
        showSection3 = true;
      });
    }
    _scrollController.animateTo(
      targetPosition,
      duration: Duration(seconds: 2),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF46171b),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Gliconeogênese",
          style: TextStyle(
              fontFamily: 'Merriweather',
              fontSize: 20,
              color: Color(0xFF2b1d0e)),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color(0xFFa7e2dd),
        toolbarHeight: 80,
        elevation: 5,
        shadowColor: mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: <Widget>[
            // Seção 1
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 5),
              child: Center(
                child: Container(
                  height: screenHeight,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1ª Reação",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 50),
                        GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16.0,
                            mainAxisSpacing: 16.0,
                            childAspectRatio: screenWidth / 1.5 / 100,
                          ),
                          shrinkWrap: true,
                          itemCount: buttonLabels01.length,
                          itemBuilder: (context, index) {
                            final randomizedIndex = randomIndices01[index];
                            final isScrollButton = randomizedIndex == 0;

                            return ElevatedButton(
                              onPressed: () {
                                if (isScrollButton) {
                                  _scrollToSection2(context);
                                } else {
                                  // Ação para os outros botões
                                }
                              },
                              child: Text(buttonLabels01[randomizedIndex],
                                  style: TextStyle(
                                      fontFamily: 'Merriweather',
                                      fontSize: 12,
                                      color: Colors.white),
                                  textAlign: TextAlign.center),
                            );
                          },
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Ajuste o raio conforme necessário
                          child: Image.asset(
                              'assets/images/gliconeogenese/Slide1.png',
                              fit: BoxFit.cover,
                              width: double.infinity),
                        ),
                      ]),
                ),
              ),
            ),
            // Seção 2
            if (showSection2)
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                child: Center(
                  child: Container(
                    height: screenHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1ª Reação",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 50),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Ajuste o raio conforme necessário
                          child: Image.asset(
                              'assets/images/gliconeogenese/Slide2.png',
                              fit: BoxFit.cover,
                              width: double.infinity),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:
                                Color(0xFFa7e2dd), // Cor de fundo personalizada
                          ),
                          onPressed: () {
                            if (!showSection3) {
                              _scrollToNextSection();
                            }
                          },
                          child: Text('Próximo...',
                              style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Color(0xFF46171b)),
                              textAlign: TextAlign.justify),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            if (showSection3)
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                child: Center(
                  child: Container(
                    height: screenHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2ª Reação",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 50),
                        GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16.0,
                            mainAxisSpacing: 16.0,
                            childAspectRatio: screenWidth / 1.5 / 100,
                          ),
                          shrinkWrap: true,
                          itemCount: buttonLabels02.length,
                          itemBuilder: (context, index) {
                            final randomizedIndex = randomIndices02[index];
                            final isScrollButton = randomizedIndex == 0;

                            return ElevatedButton(
                              onPressed: () {
                                if (isScrollButton) {
                                  _scrollToSection4(context);
                                } else {
                                  // Ação para os outros botões
                                }
                              },
                              child: Text(buttonLabels02[randomizedIndex],
                                  style: TextStyle(
                                      fontFamily: 'Merriweather',
                                      fontSize: 12,
                                      color: Colors.white),
                                  textAlign: TextAlign.center),
                            );
                          },
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Ajuste o raio conforme necessário
                          child: Image.asset(
                              'assets/images/gliconeogenese/Slide3.png',
                              fit: BoxFit.cover,
                              width: double.infinity),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            if (showSection4)
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                child: Center(
                  child: Container(
                    height: screenHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2ª Reação",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 50),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Ajuste o raio conforme necessário
                          child: Image.asset(
                              'assets/images/gliconeogenese/Slide2.png',
                              fit: BoxFit.cover,
                              width: double.infinity),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:
                                Color(0xFFa7e2dd), // Cor de fundo personalizada
                          ),
                          onPressed: () {
                            if (!showSection3) {}
                          },
                          child: Text('Próximo...',
                              style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Color(0xFF46171b)),
                              textAlign: TextAlign.justify),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
