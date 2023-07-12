// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portifolio_website/constants.dart';
import 'package:portifolio_website/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsView extends StatefulWidget {
  ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  List<ProjectModel> projectsList = [
    ProjectModel(
        "Weather Report",
        "assets/images/weather-report-01.png",
        "assets/images/weather-report-02.png",
        "assets/images/weather-report-icon.png",
        "Aplicativo de Previsão do tempo",
        "Aplicativo de Previsão do tempo",
        "Aplicativo de Previsão do tempo",
        "https://github.com/GamosiDEV/Weather-Report"),
    ProjectModel(
        "Desenvolvimento de Apps Freelance",
        "assets/images/work.png",
        "assets/images/work.png",
        "assets/images/work.png",
        "No período compreendido entre 2022 e 2023, atuei na construção de aplicativos e exerci a função de programador freelancer, resolvendo problemas e construindo soluções inteligentes.",
        "No período compreendido entre 2022 e 2023, atuei na construção de aplicativos e exerci a função de programador freelancer, resolvendo problemas e construindo soluções inteligentes.",
        "No período compreendido entre 2022 e 2023, atuei na construção de aplicativos e exerci a função de programador freelancer, resolvendo problemas e construindo soluções inteligentes.",
        "https://www.google.com"),
    ProjectModel(
        "Bacharel em Engenharia de Software",
        "assets/images/bachelor.png",
        "assets/images/bachelor.png",
        "assets/images/bachelor.png",
        "Em Janeiro 2015 iniciei os estudos no curso de Engenharia de Software na UNIRV onde estudei por 4 anos e me formei em Dezembro de 2018.",
        "Em Janeiro 2015 iniciei os estudos no curso de Engenharia de Software na UNIRV onde estudei por 4 anos e me formei em Dezembro de 2018.",
        "Em Janeiro 2015 iniciei os estudos no curso de Engenharia de Software na UNIRV onde estudei por 4 anos e me formei em Dezembro de 2018.",
        "https://www.google.com"),
    ProjectModel(
        "Criação de Apps Android/iOS/Web com Flutter",
        "assets/images/course.png",
        "assets/images/course.png",
        "assets/images/course.png",
        "Entre 2021 e 2022 realizei e conclui o curso de Desenvolvimento de Apps criado por Daniel Ciolfi e disponibilizado pela Startto.dev.",
        "Entre 2021 e 2022 realizei e conclui o curso de Desenvolvimento de Apps criado por Daniel Ciolfi e disponibilizado pela Startto.dev.",
        "Entre 2021 e 2022 realizei e conclui o curso de Desenvolvimento de Apps criado por Daniel Ciolfi e disponibilizado pela Startto.dev.",
        "https://www.google.com")
  ];

  int selectedIndex = 0;

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Projetos",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                      itemCount: projectsList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Card(
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
                                              projectsList[index].icon)),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(DEFAULT_PADDING),
                                    child: Text(
                                      projectsList[index].title,
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
                                      projectsList[index].description,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(DEFAULT_PADDING),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            projectsList[selectedIndex].title,
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {
                              sendToGit();
                            },
                            icon: Icon(Icons.download),
                            color: Colors.blueAccent,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(DEFAULT_PADDING),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                projectsList[selectedIndex].description,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              height: 500,
                              width: 300,
                              padding: EdgeInsets.all(DEFAULT_PADDING),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          projectsList[selectedIndex].imageA))),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(DEFAULT_PADDING),
                        child: Row(
                          children: [
                            Container(
                              height: 500,
                              width: 300,
                              padding: EdgeInsets.all(DEFAULT_PADDING),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          projectsList[selectedIndex].imageB))),
                            ),
                            Expanded(
                              child: Text(
                                projectsList[selectedIndex].description,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      sendToGit();
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        "Vizualizar o repositorio agora!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  sendToGit() async {
    final Uri url = Uri.parse(projectsList[selectedIndex].repository);
    await launchUrl(url);
  }
}
