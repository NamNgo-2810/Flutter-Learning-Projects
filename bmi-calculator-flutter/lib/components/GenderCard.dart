import 'package:flutter/material.dart';
import '../constants.dart';

class GenderCard extends StatelessWidget {
    GenderCard({
        @required this.iconData, @required this.gender
    });

    final IconData iconData;
    final String gender;

    @override
    Widget build(BuildContext context) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Icon(
                    iconData,
                    size: 80.0,
                ),
                SizedBox(
                    height: 15.0,
                ),
                Text(
                    gender,
                    style: kLabelTextStyle,
                ),
            ],
        );
    }
}