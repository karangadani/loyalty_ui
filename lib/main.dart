import 'package:flutter/material.dart';
import 'package:loyalty_ui/provider/loyalty_rules.dart';
import 'package:provider/provider.dart';
import 'loyalty_screen.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(primaryColor: Colors.pink),
  home: ChangeNotifierProvider(
    create: (ctx) => Rules(),
    child: Loyalty()),
));