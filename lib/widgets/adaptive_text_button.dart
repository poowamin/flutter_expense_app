import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdapTiveTextButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdapTiveTextButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: handler,
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : TextButton(
            style: TextButton.styleFrom(primary: Colors.purple),
            onPressed: handler,
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
