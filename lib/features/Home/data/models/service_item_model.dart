import 'package:flutter/material.dart';

class ServiceItemModel {
  final String serviceName;
  final IconData iconData;
  final String route;

  const ServiceItemModel(
      {required this.serviceName, required this.iconData, required this.route});
}
