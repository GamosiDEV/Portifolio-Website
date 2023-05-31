import 'package:flutter/material.dart';

class KnowledgeModel {
  final int id;
  final String title, image;
  final Color color;

  KnowledgeModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

List<KnowledgeModel> services = [
  KnowledgeModel(
    id: 1,
    title: "Graphic Design",
    image: "assets/images/graphic.png",
    color: const Color(0xFFD9FFFC),
  ),
  KnowledgeModel(
    id: 2,
    title: "Web Design",
    image: "assets/images/desktop.png",
    color: const Color(0xFFE4FFC7),
  ),
  KnowledgeModel(
    id: 3,
    title: "UI Design",
    image: "assets/images/ui.png",
    color: const Color(0xFFFFF3DD),
  ),
  KnowledgeModel(
    id: 4,
    title: "Interaction Design",
    image: "assets/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
  ),
];
