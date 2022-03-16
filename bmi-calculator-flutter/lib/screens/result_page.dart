import 'package:bmi_calculator/components/BottomButton.dart';
import 'package:flutter/material.dart';

import '../components/MaterialCard.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {

    ResultPage({this.bmiResult, this.resultText, this.interpretation});

    final String bmiResult;
    final String resultText;
    final String interpretation;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('BMI CALCULATOR'),
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Expanded(
                        child: Container(
                            alignment: Alignment.center,
                            child: Text(
                                'YOUR RESULT',
                                style: kTitleTextStyle,
                            ),
                        ),
                    ),
                    Expanded(
                        flex: 5,
                        child: Container(
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: kActiveCardColor,
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                    Text(
                                        bmiResult,
                                        style: kResultTextStyle,
                                    ),
                                    Text(
                                        resultText.toUpperCase(),
                                        style: kBMITextStyle,
                                    ),
                                    Text(
                                        interpretation,
                                        textAlign: TextAlign.center,
                                        style: kBodyTextStyle,
                                    ),
                                ],
                            ),
                        ),
                    ),
                    BottomButton(
                        onTap: () {
                            Navigator.pop(context);
                        },
                        buttonTitle: 'RE-CALCULATE'
                    )
                ],
            ),
        );
    }
}
