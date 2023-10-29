import 'package:app_bioquimica/flashcards/cards.aula.02.dart';
import 'package:app_bioquimica/flashcards/cards.aula.03.dart';
import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/flashcards/reuso.cards.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlashCards03 extends StatefulWidget {
  const FlashCards03({Key? key}) : super(key: key);

  @override
  _FlashCards03State createState() => _FlashCards03State();
}

class _FlashCards03State extends State<FlashCards03> {
  int _currentIndexNumber = 0;
  double _initial = 0.1;

  @override
  Widget build(BuildContext context) {
    String value = (_initial * 10).toStringAsFixed(0);
    return Scaffold(
        backgroundColor: const Color(0xFF46171b),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          title: const Text("Conceitos: Metabolismo",
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
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                "Cartão $value de 10",
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
                  valueColor: const AlwaysStoppedAnimation(Color(0xFFa7e2dd)),
                  minHeight: 10,
                  value: _initial,
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                  width: 300,
                  height: 300,
                  child: FlipCard(
                      direction: FlipDirection.VERTICAL,
                      front: ReusableCard(
                        text: quesAnsList03[_currentIndexNumber].question,
                      ),
                      back: ReusableCard(
                          text: quesAnsList03[_currentIndexNumber].answer))),
              const Text("Toque para ver a resposta",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 13,
                      color: Colors.white)),
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
                            primary: Color(0xFFa7e2dd),
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
                        label: Text(""),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFa7e2dd),
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
      if (_initial > 1.0) {
        _initial = 0.1;
      }
    });
  }

  void updateToPrev() {
    setState(() {
      _initial = _initial - 0.1;
      if (_initial < 0.1) {
        _initial = 1.0;
      }
    });
  }

  void showNextCard() {
    setState(() {
      _currentIndexNumber = (_currentIndexNumber + 1 < quesAnsList02.length)
          ? _currentIndexNumber + 1
          : 0;
    });
  }

  void showPreviousCard() {
    setState(() {
      _currentIndexNumber = (_currentIndexNumber - 1 >= 0)
          ? _currentIndexNumber - 1
          : quesAnsList02.length - 1;
    });
  }
}
