import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:webtu/features/Home/data/models/service_item_model.dart';
import 'package:webtu/features/Home/presentation/views/widgets/service_item.dart';

class ServicesGridView extends StatefulWidget {
  const ServicesGridView({super.key});

  @override
  State<ServicesGridView> createState() => _ServicesGridViewState();
}

class _ServicesGridViewState extends State<ServicesGridView> {
  static List<ServiceItemModel> items = const [
    ServiceItemModel(
        serviceName: "Discharge", iconData: FontAwesomeIcons.file, route: ""),
    ServiceItemModel(
        serviceName: "Timetable",
        iconData: FontAwesomeIcons.calendar,
        route: ""),
    ServiceItemModel(
        serviceName: "Group and Section",
        iconData: FontAwesomeIcons.users,
        route: ""),
    ServiceItemModel(
        serviceName: "Exams Shuedule",
        iconData: FontAwesomeIcons.calendar,
        route: ""),
    ServiceItemModel(
        serviceName: "Exam Grades",
        iconData: FontAwesomeIcons.graduationCap,
        route: ""),
    ServiceItemModel(
        serviceName: "Assessment", iconData: FontAwesomeIcons.pen, route: ""),
    ServiceItemModel(
        serviceName: "Percentage",
        iconData: Icons.incomplete_circle_sharp,
        route: ""),
    ServiceItemModel(
        serviceName: "Academic transcripts",
        iconData: FontAwesomeIcons.folderOpen,
        route: ""),
    ServiceItemModel(
        serviceName: "Debits",
        iconData: FontAwesomeIcons.calculator,
        route: ""),
    ServiceItemModel(
        serviceName: "Academic vacation",
        iconData: FontAwesomeIcons.file,
        route: ""),
    ServiceItemModel(
        serviceName: "Enrollments",
        iconData: FontAwesomeIcons.boxArchive,
        route: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2.4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 6,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return ServiceItem(
          serviceItemModel: items[index],
        );
      },
    );
  }
}
