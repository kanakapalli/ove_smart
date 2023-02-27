import 'package:flutter/material.dart';
import 'package:ovesmart/presentation/pages/job/baseui.dart';
import 'package:ovesmart/presentation/widgets/form/oveSmartButton.dart';
import 'package:ovesmart/presentation/widgets/form/oveSmartRadioList.dart';

import '../../mainscreen/pages/job.dart';

class Tab6 extends StatelessWidget {
  final TabController tabController;
  const Tab6({required this.tabController, super.key});

  @override
  Widget build(BuildContext context) {
    return JobBase(
      title: 'Add Job Requirements',
      header: 'Screening questions (optional)',
      isFirst: false,
      next: () {
        print("hello testing here11");
        // tabController.animateTo(1);
      },
      back: () {
        tabController.index = 4;
      },
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            "Search skills or add your own",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        TextFormField(
          onChanged: (value) {
            //Do something with the user input.
          },
          decoration: const InputDecoration(
            hintText: 'write your own question',
            prefixIcon: Icon(
              Icons.add,
              color: Colors.green,
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
            ),
          ),
        ),
        OveSmartRadioList(
          title: "Suggested",
          controller: TextEditingController(),
          radioList: jobCategory,
        ),
        const Divider(
          color: Colors.black,
        ),
        const Text("Round 1"),
        const Text("Tell me your self introduction"),
        OveSmartButton(
          c: TextEditingController(),
          title: 'Add Next Round',
          onClick: () {},
          size: const Size(80, 33),
        ),
      ],
    );
  }
}
