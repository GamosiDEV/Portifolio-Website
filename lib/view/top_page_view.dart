// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class TopPageView extends StatelessWidget {
  const TopPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1200, maxHeight: 275),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Olá, meu nome é Gabriel de Moura Silva!',
              style: TextStyle(fontSize: 42, color: Colors.white)),
          Text('Bem-vindo(a) ao meu portfólio ',
              style: TextStyle(fontSize: 32, color: Colors.white)),
        ],
      ),
    );
  }
}
