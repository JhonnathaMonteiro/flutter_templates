import 'package:flutter/material.dart';

class TemplateCategory {
  final Widget icon;
  final String title;
  final List<Template> routes;

  TemplateCategory({
    @required this.icon,
    @required this.title,
    this.routes,
  });
}

class Template {
  final String filePath;
  final Widget child;
  final String title;
  final String description;
  final String routeName;

  Template(
    this.filePath,
    this.child,
    this.title,
    this.description,
    this.routeName,
  );
}
