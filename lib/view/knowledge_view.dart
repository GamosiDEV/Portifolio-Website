import 'package:flutter/material.dart';
import 'package:portifolio_website/constants.dart';

class KnowledgeView extends StatelessWidget {
  KnowledgeView({super.key});

  final ScrollController controller = ScrollController();

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
                  "Conhecimentos",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(DEFAULT_PADDING),
                            height: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Bachael em Engenharia de Software",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software "),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(DEFAULT_PADDING),
                            height: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Bachael em Engenharia de Software",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software "),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(DEFAULT_PADDING),
                            height: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Bachael em Engenharia de Software",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software "),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(DEFAULT_PADDING),
                            height: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Bachael em Engenharia de Software",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software Bachael em Engenharia de Software "),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
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
