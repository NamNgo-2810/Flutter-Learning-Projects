import 'package:flutter/material.dart';

const String welcome_screen_route = '/welcome_screen';
const String login_screen_route = '/login_screen';
const String registration_screen_route = '/registration_screen';
const String chat_screen_route = '/chat_screen_route';

const kSendButtonTextStyle = TextStyle(
    color: Colors.lightBlueAccent,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    hintText: 'Type your message here...',
    border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
    border: Border(
        top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    ),
);

const kTextFieldDecoration = InputDecoration(
    contentPadding:
    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    enabledBorder: OutlineInputBorder(
        borderSide:
        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide:
        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
);
