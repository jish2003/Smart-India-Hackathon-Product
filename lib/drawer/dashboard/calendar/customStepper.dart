import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  StepperDemo() : super();

  final String title = "Admission Process";

  @override
  StepperDemoState createState() => StepperDemoState();
}

class StepperDemoState extends State<StepperDemo> {
  //
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Fill the Form of CAP Allotment'),
      content: Text('Fill the Cap Round Form'),
      isActive: true,
    ),
    Step(
      title: Text('CAP allotment 1'),
      content: Text(
          'If you want to freeze the college alotted , then Freeze else go for next round'),
      isActive: true,
    ),
    Step(
      title: Text('CAP alloment 2'),
      content: Text('Confirm College Alotted in this round'),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text('Confirm College alloted in Cap Rounds'),
      content: Text('Confirm the College Alloted in Cap Round'),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text('Visit College Offline'),
      content:
          Text('Visit College offline Complete the offline Admission Process'),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text('All Set to GO'),
      content: Text(''),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Admission Process"),
      ),
      // Body
      body: Container(
        child: Stepper(
          currentStep: this.current_step,
          steps: steps,
          // type: StepperType.vertical,
          onStepTapped: (step) {
            setState(() {
              current_step = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (current_step < steps.length - 1) {
                current_step = current_step + 1;
              } else {
                current_step = 0;
              }
            });
          },
          // onStepCancel: () {
          //   setState(() {
          //     if (current_step > 0) {
          //       current_step = current_step - 1;
          //     } else {
          //       current_step = 0;
          //     }
          //   });
          // },
        ),
      ),
    );
  }
}
