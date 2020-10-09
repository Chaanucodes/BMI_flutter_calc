import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const activeCardColour = Color(0xff1d1e33);
const inactiveCardColour = Color(0xff111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  GENDERS selectedColor;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedColor = GENDERS.MALE;
                      });
                    },
                    child: ReusableCard(colour : selectedColor == GENDERS.MALE? activeCardColour : inactiveCardColour,
                    cardChild: IconContent(cardIcon: FontAwesomeIcons.mars, cardText: "MALE")),
                  )),
                  Expanded(child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedColor = GENDERS.FEMALE;
                      });
                    },
                    child: ReusableCard(colour : selectedColor == GENDERS.FEMALE? activeCardColour: inactiveCardColour,
                        cardChild: IconContent(cardIcon: FontAwesomeIcons.venus, cardText: "FEMALE")),
                  )),
                ],
              ),
            ),
            Expanded(child: ReusableCard(colour : Color(0xff1d1e33))),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour : Color(0xff1d1e33))),
                  Expanded(child: ReusableCard(colour : Color(0xff1d1e33))),
                ],
              ),
            ),
          ],
        ));
  }


}

enum GENDERS{
  MALE, FEMALE
}




