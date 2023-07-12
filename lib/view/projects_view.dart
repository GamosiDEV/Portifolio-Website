import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portifolio_website/constants.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(DEFAULT_PADDING),
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Projetos",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 300,
                  padding: EdgeInsets.all(DEFAULT_PADDING),
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                      },
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          color: Colors.red,
                          child: Container(
                            padding: EdgeInsets.all(DEFAULT_PADDING),
                            width: 500,
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
                        Card(
                          color: Colors.blue,
                          child: Container(
                            padding: EdgeInsets.all(DEFAULT_PADDING),
                            width: 500,
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
                        Card(
                          color: Colors.green,
                          child: Container(
                            padding: EdgeInsets.all(DEFAULT_PADDING),
                            width: 500,
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
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(DEFAULT_PADDING),
                  child: Column(
                    children: [
                      const Text(
                        "Projetos",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'asdiutgasdpyaiusgdaisygd',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            height: 500,
                            width: 200,
                            color: Colors.pink,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 500,
                            width: 200,
                            color: Colors.pink,
                          ),
                          Expanded(
                            child: Text(
                              'asdiutgasdpyaiusgdaisygd',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
