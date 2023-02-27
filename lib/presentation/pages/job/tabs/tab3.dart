import 'package:flutter/material.dart';
import 'package:ovesmart/presentation/pages/job/baseui.dart';
import 'package:ovesmart/presentation/widgets/form/oveSmartRadioList.dart';

import '../../mainscreen/pages/job.dart';

class Tab3 extends StatelessWidget {
  final TabController tabController;
  const Tab3({required this.tabController, super.key});

  @override
  Widget build(BuildContext context) {
    return JobBase(
      title: 'Add Job Requirements',
      header: 'Add Tenure, Experience',
      isFirst: false,
      next: () {
        tabController.animateTo(3);
      },
      back: () {
        tabController.index = 1;
      },
      children: [
        OveSmartRadioList(
          title: "What is your budget for this role?",
          controller: TextEditingController(),
          radioList: budgetFOrRole,
        ),
      ],
    );
  }
}

List<String> budgetFOrRole = [
   "Less than \$70/hr",
  "\$70 - \$90/hr",
  "\$91 - \$110/hr",
  "More than \$110/hr",
  "Not sure on budget yet",
];
