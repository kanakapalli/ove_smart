import 'package:flutter/material.dart';

class OveSmartRadioList extends StatefulWidget {
  const OveSmartRadioList({
    Key? key,
    required this.controller,
    required this.radioList,
    required this.title,
  }) : super(key: key);

  final TextEditingController controller;
  final String title;

  final List<String> radioList;

  @override
  State<OveSmartRadioList> createState() => _OveSmartRadioListState();
}

class _OveSmartRadioListState extends State<OveSmartRadioList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
          child: Text(
            widget.title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.radioList.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Radio<String>(
                    activeColor: const Color(0xFF1FCEA4),
                    value: widget.radioList[index],
                    groupValue: widget.controller.text,
                    onChanged: (String? value) {
                      widget.controller.text = value!;
                      setState(() {});
                    },
                  ),
                  Text(widget.radioList[index])
                ],
              );
            }),
      ],
    );
  }
}
