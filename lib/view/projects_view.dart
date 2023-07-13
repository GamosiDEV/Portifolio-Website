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
        "Um aplicativo de clima intuitivo que oferece previsões precisas do tempo. Acompanhe a condição climática atual, temperatura, umidade, nuvens e ventos. Temperatura para a sua localização, busque e salve cidades favoritas e obtenha dados meteorológicos confiáveis.",
        "O Weather Report é um aplicativo de clima que oferece previsões do tempo detalhadas, com foco na condição climática atual de uma cidade específica. Além disso, ele permite uma visão mais ampla, fornecendo relatórios de temperatura e umidade para até 5 dias no futuro, em intervalos de 3 horas.\n\nNa tela inicial do aplicativo, os usuários têm acesso não apenas à temperatura atual, mas também a informações como umidade, percentual de nuvens, estado do tempo, horário, sensação térmica e velocidade e direção dos ventos.",
        "Além disso, o aplicativo permite que os usuários rastreiem a localização do próprio dispositivo, proporcionando a visualização da temperatura atual do local. Também é possível pesquisar cidades pelo nome, estado ou país, com uma ampla base de cidades ao redor do mundo.\n\nCaso desejem, os usuários podem salvar uma ou mais cidades em sua lista de favoritos e acessá-las posteriormente. \n\nO Weather Report utiliza a versão aberta da API da OpenWeather Ltd, uma empresa britânica que fornece dados meteorológicos atuais e previsões para qualquer localização geográfica. O aplicativo consome e trata as informações fornecidas pela API, disponibilizando-as de forma fácil e simples em seu layout.",
        "https://github.com/GamosiDEV/Weather-Report"),
    ProjectModel("?", "assets/images/work.png", "assets/images/work.png",
        "assets/images/work.png", "?", "?", "?", "https://www.google.com"),
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
                            Container(
                              height: 500,
                              width: 300,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          projectsList[selectedIndex].imageA))),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    DEFAULT_PADDING, 8, DEFAULT_PADDING * 2, 8),
                                child: Text(
                                  projectsList[selectedIndex].detailsA,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(DEFAULT_PADDING),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    DEFAULT_PADDING, 8, DEFAULT_PADDING * 2, 8),
                                child: Text(
                                  projectsList[selectedIndex].detailsB,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              height: 500,
                              width: 300,
                              padding: EdgeInsets.all(DEFAULT_PADDING),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          projectsList[selectedIndex].imageB))),
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
