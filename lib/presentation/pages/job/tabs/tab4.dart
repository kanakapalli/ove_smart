import 'package:flutter/material.dart';
import 'package:ovesmart/presentation/pages/job/baseui.dart';
import 'package:ovesmart/presentation/widgets/form/oveSmartButton.dart';
import 'package:ovesmart/presentation/widgets/form/oveSmartTextInput.dart';

class Tab4 extends StatelessWidget {
  final TabController tabController;
  Tab4({required this.tabController, super.key});

  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return JobBase(
      title: 'Add Job Requirements',
      header: 'Add Tenure, Experience',
      isFirst: false,
      next: () => tabController.animateTo(4),
      back: () => tabController.index = 2,
      children: [
        const Text("Search skills or add your own"),
        const OveSmartTextField(
          hindText: 'User Experience Designer',
          icon: Icons.search,
        ),
        const Text("Describe your job"),
        Wrap(
          spacing: 5.0,
          children: List<Widget>.generate(
            6,
            (int index) {
              return InputChip(
                backgroundColor: Colors.white,
                selectedColor: Colors.green,
                shape: const StadiumBorder(side: BorderSide()),
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.add,
                      color: Colors.green,
                    ),
                    Text('Item as as  $index'),
                  ],
                ),
                selected: false,
                onSelected: (bool selected) {
                  // setState(() {
                  //   if (selectedIndex == index) {
                  //     selectedIndex = null;
                  //   } else {
                  //     selectedIndex = index;
                  //   }
                  // });
                },
                // onDeleted: () {
                // setState(() {
                //   inputs = inputs - 1;
                // });
                // },
              );
            },
          ).toList(),
        ),

        const Text("Describe your job"),
        TextFormField(
          controller: descriptionController,
          onChanged: (value) {
            //Do something with the user input.
          },
          // maxLength: 0,
          decoration: const InputDecoration(
            hintText: 'User Experience Designer',
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("${descriptionController.text.length}/600"),
          ],
        ),
        const Divider(
          color: Colors.black,
        ),
        const Text("Upload Documents"),
        OveSmartButton(
          c: TextEditingController(),
          title: 'save & continue',
          onClick: () {},
          size: const Size(200, 44),
        ),
        const Text("Max file size: 100 MB"),

        // OveSmartRadioList(
        //   title: "Lets Start with a strong Title",
        //   controller: TextEditingController(),
        //   radioList: jobCategory,
        // ),
      ],
    );
  }
}
