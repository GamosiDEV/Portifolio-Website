// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portifolio_website/constants.dart';
import 'package:portifolio_website/models/knowledge_model.dart';

class KnowledgeView extends StatelessWidget {
  KnowledgeView({super.key});

  final ScrollController controller = ScrollController();

  List<KnowledgeModel> knowledgeList = [
    KnowledgeModel(
      "Especialização em Desenvolvimento Mobile",
      "assets/images/specialization.png",
      "Em 2023 decidi por iniciar uma especialização em Desenvolvimento Mobile, onde em Março iniciei meus estudos de Pós Graduação na PUC Minas onde atualmente curso Desenvolvimento Mobile com a data prevista para termino ate Setembro de 2024.",
    ),
    KnowledgeModel(
      "Desenvolvimento de Apps Freelance",
      "assets/images/work.png",
      "No período compreendido entre 2022 e 2023, atuei na construção de aplicativos e exerci a função de programador freelancer, resolvendo problemas e construindo soluções inteligentes.",
    ),
    KnowledgeModel(
      "Bacharel em Engenharia de Software",
      "assets/images/bachelor.png",
      "Em Janeiro 2015 iniciei os estudos no curso de Engenharia de Software na UNIRV onde estudei por 4 anos e me formei em Dezembro de 2018.",
    ),
    KnowledgeModel(
      "Criação de Apps Android/iOS/Web com Flutter",
      "assets/images/course.png",
      "Entre 2021 e 2022 realizei e conclui o curso de Desenvolvimento de Apps criado por Daniel Ciolfi e disponibilizado pela Startto.dev.",
    )
  ];

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
                Container(
                  height: 350,
                  padding: EdgeInsets.all(DEFAULT_PADDING),
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                      },
                    ),
                    child: ListView.builder(
                      itemCount: knowledgeList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Container(
                            padding: EdgeInsets.all(DEFAULT_PADDING),
                            width: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.white10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: ClipOval(
                                        child: Image.asset(
                                            knowledgeList[index].image)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.all(DEFAULT_PADDING),
                                  child: Text(
                                    knowledgeList[index].title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.all(DEFAULT_PADDING),
                                  child: Text(
                                    knowledgeList[index].description,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
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