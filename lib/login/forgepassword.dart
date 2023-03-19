import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Passwordreset extends StatefulWidget {
  const Passwordreset({super.key});

  @override
  State<Passwordreset> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Passwordreset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passreset"),
      ),
      
    );
    
  }
}