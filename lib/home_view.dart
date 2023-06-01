import 'package:flutter/material.dart';
import 'package:portifolio_website/view/about_view.dart';
import 'package:portifolio_website/view/top_screen_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [TopScreenView(), AboutView()],
        ),
      ),
    );
  }
}
