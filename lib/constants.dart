// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const TEXT_COLOR = Color(0xFF707070);
const TEXT_LIGHT_COLOR = Color(0xFF555555);

const DEFAULT_PADDING = 20.0;

final defaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: const Color(0xFF0700B1).withOpacity(0.15),
);

final defaultCardShadow = BoxShadow(
  offset: const Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

const DEFAULT_INPUT_DECORATION_THEME = InputDecorationTheme(
  border: DEFAULT_OUTLINE_INPUT_BORDER,
  enabledBorder: DEFAULT_OUTLINE_INPUT_BORDER,
  focusedBorder: DEFAULT_OUTLINE_INPUT_BORDER,
);

const DEFAULT_OUTLINE_INPUT_BORDER = OutlineInputBorder(
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

const String DESCRIPTION_ABOUT =
    "Sou um desenvolvedor de software apaixonado, formado em Engenharia de Software e com experiência sólida no desenvolvimento mobile. Tenho habilidades intermediárias em Flutter, uma poderosa framework para criação de aplicativos multiplataforma.\n\nDurante minha jornada profissional, tive a oportunidade de concluir um estágio de seis meses em desenvolvimento mobile, onde pude aprimorar minhas habilidades práticas e aprender com profissionais experientes. Foi uma experiência enriquecedora que me permitiu desenvolver aplicativos móveis inovadores, utilizando as melhores práticas de design e implementação.\n\nAlém disso, estou atualmente dedicando meu tempo e esforço para aprofundar meu conhecimento na área de desenvolvimento mobile através de uma pós-graduação especializada. Isso me permite estar sempre atualizado com as mais recentes tendências e tecnologias nesse campo em constante evolução.\n\nAo longo da minha jornada, tive a oportunidade de colaborar com equipes de desenvolvimento, o que me proporcionou uma visão mais ampla e a capacidade de trabalhar efetivamente em um ambiente colaborativo. Acredito firmemente que o trabalho em equipe é essencial para o sucesso de qualquer projeto e estou comprometido em contribuir com minhas habilidades e experiência para alcançar os melhores resultados possíveis.\n\nTenho conhecimento e experiência no uso do Firebase, uma plataforma abrangente que oferece uma variedade de serviços para desenvolvimento de aplicativos móveis, como autenticação de usuários, armazenamento em nuvem e análise de dados. Essa experiência me permite criar aplicativos confiáveis e escaláveis, com recursos robustos e seguros.\n\nEstou constantemente em busca de desafios e oportunidades para aplicar minhas habilidades de desenvolvimento Flutter, combinadas com minha base sólida em engenharia de software. Estou ansioso para contribuir para projetos inovadores, onde posso transformar ideias em realidade através do desenvolvimento de aplicativos móveis de alta qualidade.\n\nSe você está procurando um desenvolvedor comprometido, que busca excelência em seu trabalho e possui uma sólida base de conhecimento e experiência em desenvolvimento mobile, não hesite em entrar em contato. Estou animado para explorar novas oportunidades e fazer parte de projetos desafiadores e impactantes.\n\n";
