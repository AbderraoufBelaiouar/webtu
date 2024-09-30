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
        alignment: Alignment.center,
        padding: const EdgeInsets.all(6),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xff019577),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              serviceItemModel.iconData,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              serviceItemModel.serviceName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
