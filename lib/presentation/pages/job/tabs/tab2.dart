import 'package:flutter/material.dart';
import 'package:ovesmart/presentation/pages/job/baseui.dart';
import 'package:ovesmart/presentation/widgets/form/oveSmartRadioList.dart';

import '../../mainscreen/pages/job.dart';

class Tab2 extends StatelessWidget {
  final TabController tabController;
  const Tab2({required this.tabController, super.key});

  @override
  Widget build(BuildContext context) {
    return JobBase(
      title: 'Add Job Requirements',
      header: 'Add Tenure, Experience',
      isFirst: false,
      next: () {
        print("hello testing here11");
        tabController.animateTo(2);
      },
      back: () {
        print("asdasd");
        tabController.index = 0;
      },
      children: [
        OveSmartRadioList(
          title: "How long do you need the developer for?",
          controller: TextEditingController(),
          radioList: developerTime,
        ),
        OveSmartRadioList(
          title: "Experience level?",
          controller: TextEditingController(),
          radioList: experienceLevel,
        ),
        OveSmartRadioList(
          title: "How Soon you want the developer start?",
          controller: TextEditingController(),
          radioList: developerStart,
        ),
         OveSmartRadioList(
          title: "Time commitment of developer?",
          controller: TextEditingController(),
          radioList: timeCommitmentOfDeveloper,
        ),
      ],
    );
  }
}

List<String> developerTime = [
  "Less than 1 week",
  "1-4 weeks",
  "1-3 Months",
  "3-6 Months",
  "Longer than 6 months",
  "I’ll decide later",
];
List<String> experienceLevel = [
  "Entry Level ",
  "Individual Contributor",
  "Mid-Level Management",
  "Executive/Senior Leadership",
];
List<String> developerStart = [
  "Immediately ",
  "in 1-2 weeks",
  "More than 2 weeks From now",
  "I’ll decide later",
];
List<String> timeCommitmentOfDeveloper = [
  "Full time(40 or more hrs/week)",
  "Part time(Less than 40 hrs/week) ",
  "Hourly",
  "I’ll decide later",
];
