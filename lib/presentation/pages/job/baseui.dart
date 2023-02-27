import 'package:flutter/material.dart';
import 'package:ovesmart/presentation/widgets/form/oveSmartButton.dart';

class JobBase extends StatelessWidget {
  JobBase(
      {super.key,
      required this.title,
      required this.header,
      this.isFirst = false,
      required this.children,
      required this.next,
      required this.back})
      : super();

  final TextEditingController c = TextEditingController();
  final String title;
  final String header;
  final bool isFirst;
  final Function next;
  final Function back;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    String? character = "";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 4,
        title: Text(
          title,
          style: const TextStyle(color: Colors.red),
        ),
        centerTitle: false,
        leading: const Icon(Icons.close),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 24, 0, 18),
                child: Text(
                  header,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              ...children,
              const Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: isFirst
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.spaceBetween,
                children: [
                  if (!isFirst)
                    OveSmartButton(
                      c: c,
                      title: 'back',
                      onClick: () {
                        // _JobState
                        back();
                      },
                      secondary: true,
                      size: const Size(160, 44),
                    ),
                  OveSmartButton(
                    c: c,
                    title: 'save & continue',
                    onClick: () {
                      print("next t");
                      next();
                    },
                    size: const Size(160, 44),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// List<String> jobCategory = [
//   "development",
//   "webDesign",
//   "uxResearcher",
//   "visualDesigner",
//   "interactionDesigner",
//   "uxEngineer",
//   "other"
// ];
