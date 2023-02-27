import 'package:flutter/material.dart';
import 'package:ovesmart/presentation/pages/job/baseui.dart';
import 'package:ovesmart/presentation/widgets/form/oveSmartRadioList.dart';

import '../../mainscreen/pages/job.dart';

class Tab1 extends StatelessWidget {
  final TabController tabController;
  const Tab1({required this.tabController,super.key});

  @override
  Widget build(BuildContext context) {
    return JobBase(
      title: 'Add Job Requirements',
      header: 'Lets Start with a strong Title',
      isFirst: true,
      next:(){
        print("hello testing here11");
          tabController.animateTo(1);
      },
      back: () {
        print("hello testing here11");
        tabController.animateTo(1);
      },
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            "Lets Start with a strong Title",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        TextFormField(
          onChanged: (value) {
            //Do something with the user input.
          },
          decoration: const InputDecoration(
            hintText: 'User Experience Designer',
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
            ),
          ),
        ),
        OveSmartRadioList(
            title: "How long do you need the developer for?",
          controller: TextEditingController(),
          radioList: jobCategory,
        ),
      ],
    );
  }
}
