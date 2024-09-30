import 'package:flutter/material.dart';
import 'package:webtu/features/Home/data/models/service_item_model.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({super.key, required this.serviceItemModel});
  final ServiceItemModel serviceItemModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // here we put the route
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xff019577),
        ),
        child: Column(
          children: [
            Icon(
              serviceItemModel.iconData,
              color: Colors.white,
            ),
            Text(serviceItemModel.serviceName),
          ],
        ),
      ),
    );
  }
}
