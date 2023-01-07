import 'package:flutter/material.dart';
import 'package:exercise/core.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;
    DashboardService dashboardService = DashboardService();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              LayoutBuilder(builder: (context, constraint) {
                return Center(
                  child: Wrap(
                    runSpacing: 20,
                    spacing: 20,
                    alignment: WrapAlignment.center,
                    children: List.generate(
                      dashboardService.exerciseList.length,
                      (index) {
                        var size = (constraint.biggest.width - 50) / 3;
                        var item = dashboardService.exerciseList[index];
                        return GestureDetector(
                          onTap: () => Get.to(item["page"]),
                          child: Container(
                            width: size,
                            height: size,
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 24,
                                  offset: Offset(0, 11),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  item["label"],
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
