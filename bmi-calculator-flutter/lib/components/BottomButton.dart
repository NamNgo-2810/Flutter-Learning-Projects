import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
    const BottomButton({
        @required this.onTap,
        @required this.buttonTitle,
    });

    final Function onTap;
    final String buttonTitle;

    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: onTap,
            child: Container(
                color: Color(0xFFEB1555),
                alignment: Alignment.center,
                // margin: EdgeInsets.only(top: 10.0),
                // padding: EdgeInsets.only(bottom: 20.0),
                width: double.infinity,
                height: kBottomContainerHeight,
                child: Text(
                    buttonTitle,
                    style: kLargeButtonTextStyle,
                ),
            ),
        );
    }
}