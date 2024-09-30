import 'package:flutter/material.dart';
import 'package:webtu/features/Home/data/models/service_item_model.dart';
import 'package:webtu/features/Home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:webtu/features/Home/presentation/views/widgets/service_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const HomeViewAppBar(),
            const Row(
              children: [
                ServiceItem(
                  serviceItemModel: ServiceItemModel(
                      serviceName: "serviceName",
                      iconData: Icons.grade,
                      route: "route"),
                ),
              ],
            ),
            SizedBox(
                height: 80,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return const ServiceItem(
                      serviceItemModel: ServiceItemModel(
                          serviceName: "serviceName",
                          iconData: Icons.grade,
                          route: "route"),
                    );
                  },
                ))
            // GridView.builder(
            //   itemCount: 10,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2),
            //   itemBuilder: (_, index) {
            //     return Container(
            //       height: 10,
            //       width: 10,
            //       color: Colors.amber,
            //     );
            //   },
            // ),
            // Row(
            //   children: [
            // Row(
            //   children: [
            //     Expanded(
            //       child: ServiceItem(),
            //     ),
            //   ],
            // ),
            //   ],
            // ),
            // Expanded(
            //   child: Row(
            //     children: [
            //       ServiceItem(),
            //       ServiceItem(),
            //     ],
            //   ),
            // )
            // GridView.builder(
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2),
            //   itemBuilder: (context, index) {
            //     return const ServiceItem();
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
