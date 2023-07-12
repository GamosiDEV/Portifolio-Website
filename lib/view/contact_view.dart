import 'package:flutter/material.dart';
import 'package:portifolio_website/constants.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(DEFAULT_PADDING),
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Entrar em contato",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(DEFAULT_PADDING),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(DEFAULT_PADDING),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(DEFAULT_PADDING),
                            child: Container(
                              color: Colors.blueAccent,
                              child: Row(
                                children: [
                                  Icon(Icons.phone),
                                  Text('Telefone'),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(DEFAULT_PADDING),
                            child: Container(
                              color: Colors.blueAccent,
                              child: Row(
                                children: [
                                  Icon(Icons.phone),
                                  Text('Telefone'),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(DEFAULT_PADDING),
                            child: Container(
                              color: Colors.blueAccent,
                              child: Row(
                                children: [
                                  Icon(Icons.phone),
                                  Text('Telefone'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
