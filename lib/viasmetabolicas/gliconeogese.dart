import 'dart:math';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flutter/material.dart';

class MinhaPagina extends StatefulWidget {
  @override
  _MinhaPaginaState createState() => _MinhaPaginaState();
}

class _MinhaPaginaState extends State<MinhaPagina> {
  // Variável para controlar a exibição da Seção 3
  bool showSection3 = false;
  bool showSection5 = false;
  bool showSection7 = false;

  // Altura da tela atual
  double screenHeight = 0.0;

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

  final List<String> buttonLabels03 = [
    "2-Fosfoglicerato",
    "3-Fosfoglicerato",
    "Gliceraldeído-3-Fosfato",
    "Frutose",
  ];

  final List<String> buttonLabels04 = [
    "3-Fosfoglicerato",
    "2-Fosfoglicerato",
    "Gliceraldeído-3-Fosfato",
    "Frutose",
  ];

  // Gerador de números aleatórios
  final Random random = Random();
  get mainColor => null;

  // Função para gerar índices aleatórios
  List<int> generateRandomIndices(int length) {
    List<int> indices = List.generate(length, (index) => index);
    indices.shuffle();
    return indices;
  }

  List<int> randomIndices01 = [];
  List<int> randomIndices02 = [];
  List<int> randomIndices03 = [];
  List<int> randomIndices04 = [];
  bool showSection2 = false;
  bool showSection4 = false;
  bool showSection6 = false;
  bool showSection8 = false;

  // Função para rolar para a Seção 2
  void _scrollToSection2(context) {
    setState(() {
      showSection2 = true;
    });

    _scrollController.animateTo(
      MediaQuery.of(context).size.height,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  // Função para rolar para a Seção 4
  void _scrollToSection4(context) {
    setState(() {
      showSection4 = true;
    });

    double appBarHeight = AppBar().preferredSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double totalHeight = appBarHeight + statusBarHeight;
    double targetPosition =
        _scrollController.offset + (screenHeight + totalHeight);

    _scrollController.animateTo(
      targetPosition,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  // Função para rolar para a Seção 6
  void _scrollToSection6(context) {
    setState(() {
      showSection6 = true;
    });

    double appBarHeight = AppBar().preferredSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double totalHeight = appBarHeight + statusBarHeight;
    double targetPosition =
        _scrollController.offset + (screenHeight + totalHeight);

    _scrollController.animateTo(
      targetPosition,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  // Função para rolar para a Seção 8
  void _scrollToSection8(context) {
    setState(() {
      showSection8 = true;
    });

    double appBarHeight = AppBar().preferredSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double totalHeight = appBarHeight + statusBarHeight;
    double targetPosition =
        _scrollController.offset + (screenHeight + totalHeight);

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
    randomIndices03 = generateRandomIndices(buttonLabels03.length);
    randomIndices04 = generateRandomIndices(buttonLabels04.length);
    _scrollController.addListener(_updateScreenHeight);

    print("Altura da tela após _updateScreenHeight ");
    print(screenHeight);
  }

  void _updateScreenHeight() {
    setState(() {
      screenHeight = MediaQuery.of(context).size.height;
    });
  }

  void _scrollToSection03() {
    double appBarHeight = AppBar().preferredSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double totalHeight = appBarHeight + statusBarHeight;

    double targetPosition =
        _scrollController.offset + (screenHeight + totalHeight);

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

  void _scrollToSection05() {
    double appBarHeight = AppBar().preferredSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double totalHeight = appBarHeight + statusBarHeight;

    double targetPosition =
        _scrollController.offset + (screenHeight + totalHeight);

    print("E o targetPositio é");
    print(targetPosition);

    if (!showSection5) {
      setState(() {
        showSection5 = true;
      });
    }

    _scrollController.animateTo(
      targetPosition,
      duration: Duration(seconds: 2),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToSection07() {
    double appBarHeight = AppBar().preferredSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double totalHeight = appBarHeight + statusBarHeight;

    double targetPosition =
        _scrollController.offset + (screenHeight + totalHeight);

    print("E o targetPositio é");
    print(targetPosition);

    if (!showSection7) {
      setState(() {
        showSection7 = true;
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
              Icons.device_hub,
              color: Color(0xFFE58E57),
            ),
            SizedBox(
              width: 20,
            ),
            const Text("Gliconeogênese",
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
                          "1ª Reação\n\nQual o produto?",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          child: Divider(
                            color: Colors.white, // Define a cor da linha
                            thickness:
                                0.5, // Define a espessura da linha (opcional)
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
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
                          "1ª Reação - Respondida",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          child: Divider(
                            color: Colors.white, // Define a cor da linha
                            thickness:
                                0.5, // Define a espessura da linha (opcional)
                          ),
                        ),
                        SizedBox(height: 20),
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
                              _scrollToSection03();
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
                          "2ª Reação\n\nQual o produto?",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          child: Divider(
                            color: Colors.white, // Define a cor da linha
                            thickness:
                                0.5, // Define a espessura da linha (opcional)
                          ),
                        ),
                        SizedBox(height: 20),
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
                          "2ª Reação - Respondida",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          child: Divider(
                            color: Colors.white, // Define a cor da linha
                            thickness:
                                0.5, // Define a espessura da linha (opcional)
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Ajuste o raio conforme necessário
                          child: Image.asset(
                              'assets/images/gliconeogenese/Slide4.png',
                              fit: BoxFit.cover,
                              width: double.infinity),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:
                                Color(0xFFa7e2dd), // Cor de fundo personalizada
                          ),
                          onPressed: () {
                            if (!showSection5) {
                              _scrollToSection05();
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
            if (showSection5)
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                child: Center(
                  child: Container(
                    height: screenHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "3ª Reação\n\nQual o produto?",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          child: Divider(
                            color: Colors.white, // Define a cor da linha
                            thickness:
                                0.5, // Define a espessura da linha (opcional)
                          ),
                        ),
                        SizedBox(height: 20),
                        GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16.0,
                            mainAxisSpacing: 16.0,
                            childAspectRatio: screenWidth / 1.5 / 100,
                          ),
                          shrinkWrap: true,
                          itemCount: buttonLabels03.length,
                          itemBuilder: (context, index) {
                            final randomizedIndex = randomIndices03[index];
                            final isScrollButton = randomizedIndex == 0;

                            return ElevatedButton(
                              onPressed: () {
                                if (isScrollButton) {
                                  _scrollToSection6(context);
                                } else {
                                  // Ação para os outros botões
                                }
                              },
                              child: Text(buttonLabels03[randomizedIndex],
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
                              'assets/images/gliconeogenese/Slide5.png',
                              fit: BoxFit.cover,
                              width: double.infinity),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            if (showSection6)
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                child: Center(
                  child: Container(
                    height: screenHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "3ª Reação - Respondida",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          child: Divider(
                            color: Colors.white, // Define a cor da linha
                            thickness:
                                0.5, // Define a espessura da linha (opcional)
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Ajuste o raio conforme necessário
                          child: Image.asset(
                              'assets/images/gliconeogenese/Slide6.png',
                              fit: BoxFit.cover,
                              width: double.infinity),
                        ),
                        
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:
                                Color(0xFFa7e2dd), // Cor de fundo personalizada
                          ),
                          onPressed: () {
                            if (!showSection7) {
                              _scrollToSection07();
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
              if (showSection7)
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                child: Center(
                  child: Container(
                    height: screenHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "4ª Reação\n\nQual o produto?",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          child: Divider(
                            color: Colors.white, // Define a cor da linha
                            thickness:
                                0.5, // Define a espessura da linha (opcional)
                          ),
                        ),
                        SizedBox(height: 20),
                        GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16.0,
                            mainAxisSpacing: 16.0,
                            childAspectRatio: screenWidth / 1.5 / 100,
                          ),
                          shrinkWrap: true,
                          itemCount: buttonLabels04.length,
                          itemBuilder: (context, index) {
                            final randomizedIndex = randomIndices04[index];
                            final isScrollButton = randomizedIndex == 0;

                            return ElevatedButton(
                              onPressed: () {
                                if (isScrollButton) {
                                  _scrollToSection8(context);
                                } else {
                                  // Ação para os outros botões
                                }
                              },
                              child: Text(buttonLabels04[randomizedIndex],
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
                              'assets/images/gliconeogenese/Slide7.png',
                              fit: BoxFit.cover,
                              width: double.infinity),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            if (showSection8)
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                child: Center(
                  child: Container(
                    height: screenHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "4ª Reação - Respondida",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          child: Divider(
                            color: Colors.white, // Define a cor da linha
                            thickness:
                                0.5, // Define a espessura da linha (opcional)
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Ajuste o raio conforme necessário
                          child: Image.asset(
                              'assets/images/gliconeogenese/Slide8.png',
                              fit: BoxFit.cover,
                              width: double.infinity),
                        ),
                        /*
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:
                                Color(0xFFa7e2dd), // Cor de fundo personalizada
                          ),
                          onPressed: () {
                            if (!showSection5) {
                            }
                          },
                          child: Text('Próximo...',
                              style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Color(0xFF46171b)),
                              textAlign: TextAlign.justify),
                        ),*/
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
