// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:portifolio_website/constants.dart';
import 'package:portifolio_website/view/menu_view.dart';
import 'package:portifolio_website/view/top_page_view.dart';

class TopScreenView extends StatelessWidget {
  TopScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 400, minHeight: 200),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Container(
        margin: EdgeInsets.only(top: DEFAULT_PADDING),
        width: 1200,
        child: Column(
          children: [TopPageView(), MenuView()],
        ),
      ),
    );
  }
}
