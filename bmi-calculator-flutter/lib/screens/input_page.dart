import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/BottomButton.dart';
import '../components/GenderCard.dart';
import '../components/MaterialCard.dart';
import '../constants.dart';
import '../components/RoundIconButton.dart';
import '../calculator.dart';

class InputPage extends StatefulWidget {
    @override
    _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

    Gender selectedGender;
    int height = 180, weight = 70, age = 25;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('BMI CALCULATOR'),
            ),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                    Expanded(
                        child: Row(
                            children: <Widget>[
                                MaterialCard(
                                    color: selectedGender == Gender.male
                                        ? kActiveCardColor
                                        : kInactiveCardColor,
                                    cardContent: GenderCard(
                                        iconData: FontAwesomeIcons.mars,
                                        gender: 'MALE',
                                    ),
                                    onPress: () {
                                        setState(() {
                                            selectedGender = Gender.male;
                                        });
                                    },
                                ),
                                MaterialCard(
                                    color: selectedGender == Gender.female
                                        ? kActiveCardColor
                                        : kInactiveCardColor,
                                    cardContent: GenderCard(
                                        iconData: FontAwesomeIcons.venus,
                                        gender: 'FEMALE',
                                    ),
                                    onPress: () {
                                        setState(() {
                                            selectedGender = Gender.female;
                                        });
                                    },
                                ),
                            ],
                        ),
                    ),
                    MaterialCard(
                        color: kActiveCardColor,
                        cardContent: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                                Text(
                                    'HEIGHT',
                                    style: kLabelTextStyle,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: <Widget>[
                                        Text(
                                            height.toString(),
                                            style: kNumberTextStyle,
                                        ),
                                        Text(
                                            ' cm',
                                            style: kLabelTextStyle,
                                        )
                                    ],
                                ),
                                SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                        thumbShape: RoundSliderThumbShape(
                                            enabledThumbRadius: 15.0,
                                        ),
                                        overlayShape: RoundSliderOverlayShape(
                                            overlayRadius: 30.0,
                                        ),
                                        thumbColor: Color(0xFFEB1555),
                                        overlayColor: Color(0x29EB1555),
                                        activeTrackColor: Colors.white,
                                        inactiveTrackColor: Color(0xFF8D8E98),
                                    ),
                                    child: Slider(
                                        value: height.toDouble(),
                                        min: 120.0,
                                        max: 220.0,
                                        onChanged: (double newHeight) {
                                            setState(() {
                                                height = newHeight.round();
                                            });
                                        }
                                    ),
                                ),
                            ],
                        ),
                    ),
                    Expanded(
                        child: Row(
                            children: <Widget>[
                                MaterialCard(
                                    color: kActiveCardColor,
                                    cardContent: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                            Text(
                                                'WEIGHT',
                                                style: kLabelTextStyle,
                                            ),
                                            Text(
                                                weight.toString(),
                                                style: kNumberTextStyle,
                                            ),
                                            Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                    RoundIconButton(
                                                        icon: FontAwesomeIcons.minus,
                                                        onPressed: () {
                                                            setState(() {
                                                                weight--;
                                                            });
                                                        },
                                                    ),
                                                    SizedBox(
                                                        width: 10.0,
                                                    ),
                                                    RoundIconButton(
                                                        icon: FontAwesomeIcons.plus,
                                                        onPressed: () {
                                                            setState(() {
                                                                weight++;
                                                            });
                                                        },
                                                    ),
                                                ],
                                            )
                                        ],
                                    ),
                                ),
                                MaterialCard(
                                    color: kActiveCardColor,
                                    cardContent: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                            Text(
                                                'AGE',
                                                style: kLabelTextStyle,
                                            ),
                                            Text(
                                                age.toString(),
                                                style: kNumberTextStyle,
                                            ),
                                            Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                    RoundIconButton(
                                                        icon: FontAwesomeIcons.minus,
                                                        onPressed: () {
                                                            setState(() {
                                                                age--;
                                                            });
                                                        },
                                                    ),
                                                    SizedBox(
                                                        width: 10.0,
                                                    ),
                                                    RoundIconButton(
                                                        icon: FontAwesomeIcons.plus,
                                                        onPressed: () {
                                                            setState(() {
                                                                age++;
                                                            });
                                                        },
                                                    ),
                                                ],
                                            )
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                    BottomButton(
                        onTap: () {
                            Calculator calc = Calculator(height: height, weight: weight);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResultPage(
                                        bmiResult: calc.resultBMI(),
                                        resultText: calc.response(),
                                        interpretation: calc.interpretation()
                                    ),
                                ),
                            );
                        },
                        buttonTitle: 'CALCULATE',
                    ),
                ],
            ),
        );
    }
}
