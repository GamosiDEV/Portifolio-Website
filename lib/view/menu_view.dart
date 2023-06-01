import 'package:flutter/material.dart';
import 'package:portifolio_website/constants.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Inicio",
    "Sobre",
    "Conhecimentos",
    "Projetos",
    "Contato"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: DEFAULT_PADDING * 2.5),
      constraints: BoxConstraints(maxWidth: 1200, minWidth: 800),
      height: 105,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [defaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
            List.generate(menuItems.length, (index) => buildMenuItem(index)),
      ),
    );
  }

  Widget buildMenuItem(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      onHover: (value) {
        setState(() {
          value ? hoverIndex = index : hoverIndex = selectedIndex;
        });
      },
      child: Container(
        constraints: BoxConstraints(minWidth: 122),
        height: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              menuItems[index],
              style: TextStyle(fontSize: 20, color: TEXT_COLOR),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectedIndex != index && hoverIndex == index ? -20 : -32,
              child: Image.asset("assets/images/Hover.png"),
            )
          ],
        ),
      ),
    );
  }
}
