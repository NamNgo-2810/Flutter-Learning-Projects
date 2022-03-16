import 'package:flutter/material.dart';

class MaterialCard extends StatelessWidget {

    MaterialCard({@required this.color, this.cardContent, this.onPress});
    final Color color;
    final Widget cardContent;
    final Function onPress;

    Widget build(BuildContext context) {
        return Expanded(
            child: GestureDetector(
                onTap: onPress,
                child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: color,
                    ),
                    child: cardContent,
                ),
            ),
        );
    }

}