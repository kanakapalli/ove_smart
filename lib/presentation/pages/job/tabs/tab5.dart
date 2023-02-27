import 'package:flutter/material.dart';
import 'package:ovesmart/presentation/pages/job/baseui.dart';
import 'package:ovesmart/presentation/widgets/form/oveSmartRadioList.dart';

import '../../mainscreen/pages/job.dart';

class Tab5 extends StatelessWidget {
  final TabController tabController;
  const Tab5({required this.tabController, super.key});

  @override
  Widget build(BuildContext context) {
    return JobBase(
      title: 'Add Job Requirements',
      header: 'Advanced options',
      isFirst: false,
      next: () {
        print("hello testing here11");
        tabController.animateTo(5);
      },
      back: () {
        tabController.index = 3;
      },
      children: [
        OveSmartRadioList(
          title: "Number of professionals needed",
          controller: TextEditingController(),
          radioList: jobCategory,
        ),
        OveSmartRadioList(
          title: "English Level",
          controller: TextEditingController(),
          radioList: jobCategory,
        ),
      ],
    );
  }
}
