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
