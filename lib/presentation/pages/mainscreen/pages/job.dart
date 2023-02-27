import 'package:flutter/material.dart';

import '../../job/tabs/tabs.dart';

class Job extends StatefulWidget {
  const Job({super.key});

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          Tab1(tabController: tabController),
          Tab2(tabController: tabController),
          Tab3(tabController: tabController),
          Tab4(tabController: tabController),
          Tab5(tabController: tabController),
          Tab6(tabController: tabController),
        ],
      ),
    );
  }
}

List<String> jobCategory = [
  "development",
  "webDesign",
  "uxResearcher",
  "visualDesigner",
  "interactionDesigner",
  "uxEngineer",
  "other"
];
