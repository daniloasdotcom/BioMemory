import 'package:app_bioquimica/flashcards/cards.aula.01.dart';
import 'package:app_bioquimica/flashcards/constantes.dart';

import 'package:app_bioquimica/flashcards/reuso.cards.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlashCards01 extends StatefulWidget {
  const FlashCards01({Key? key}) : super(key: key);

  @override
  _FlashCards01State createState() => _FlashCards01State();
}

class _FlashCards01State extends State<FlashCards01> {
  int _currentIndexNumber = 0;
  int _totalCards = 19; // Número total de cartões
  double _initial = 0.1;

  // Adicione uma chave global para o FlipCard
  GlobalKey<FlipCardState> flipCardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    String value = (_currentIndexNumber + 1)
        .toString(); // Atualize o valor baseado no índice atual
    double progress = (_currentIndexNumber + 1) / _totalCards;
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
                Icons.dashboard,
                color: Color(0xFFE58E57),
              ),
              SizedBox(
                width: 20,
              ),
              const Text("Turma BL 01",
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
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("Toque para virar o cartão",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 15,
                      color: Colors.white)),
              SizedBox(
                  width: 300,
                  height: 300,
                  child: FlipCard(
                      key: flipCardKey, // Defina a chave global para o FlipCard
                      direction: FlipDirection.HORIZONTAL,
                      front: ReusableCard(
                        text: quesAnsList01[_currentIndexNumber].question,
                      ),
                      back: ReusableCard(
                          text: quesAnsList01[_currentIndexNumber].answer))),
              Text(
                "Cartão $value de $_totalCards",
                style: const TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 15,
                    color: Colors.white),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: const AlwaysStoppedAnimation(Color(0xFFE58E57)),
                  minHeight: 10,
                  value: progress, // Use o valor de progresso calculado
                ),
              ),
              const SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton.icon(
                        onPressed: () {
                          showPreviousCard();
                          updateToPrev();
                        },
                        icon: const Icon(
                          FontAwesomeIcons.handPointLeft,
                          size: 30,
                          color: Colors.black,
                        ),
                        label: const Text(""),
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFF2D6BD),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.only(
                                right: 20, left: 25, top: 15, bottom: 15))),
                    ElevatedButton.icon(
                        onPressed: () {
                          showNextCard();
                          updateToNext();
                        },
                        icon: const Icon(
                          FontAwesomeIcons.handPointRight,
                          size: 30,
                          color: Colors.black,
                        ),
                        label: const Text(""),
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFF2D6BD),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.only(
                                right: 20, left: 25, top: 15, bottom: 15)))
                  ])
            ])));
  }

  void updateToNext() {
    setState(() {
      _initial = _initial + 0.1;
      if (_initial > 2.0) {
        _initial = 0.1;
      }
    });
  }

  void updateToPrev() {
    setState(() {
      _initial = _initial - 0.1;
      if (_initial < 0.1) {
        _initial = 2.0;
      }
    });
  }

  void showNextCard() {
    setState(() {
      _currentIndexNumber = (_currentIndexNumber + 1 < quesAnsList01.length)
          ? _currentIndexNumber + 1
          : 0;

      // Defina a chave do FlipCard como uma nova chave para recriá-lo
      flipCardKey = GlobalKey<FlipCardState>();
    });
  }

  void showPreviousCard() {
    setState(() {
      _currentIndexNumber = (_currentIndexNumber - 1 >= 0)
          ? _currentIndexNumber - 1
          : quesAnsList01.length - 1;
          // Defina a chave do FlipCard como uma nova chave para recriá-lo
      flipCardKey = GlobalKey<FlipCardState>();
    });
  }
}
