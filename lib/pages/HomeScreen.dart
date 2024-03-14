import 'package:flutter/material.dart';
import 'package:flutter_demo_book/utils/colors.dart';
import 'package:flutter_demo_book/utils/customWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> subjectList = [
      'Madhyamik Physics',
      'Madhyamik Chemistry',
      'Madhyamik Biology'
    ];
    String selectedSubject = '';

    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              appText(
                title: 'Subject',
                fontSize: 20,
                textColor: blackColor,
              ),
              const SizedBox(height: 10),
              dropdownField(
                hinttext: "Select Subject",
                items: subjectList,
                selectedValue:
                    selectedSubject.isNotEmpty ? selectedSubject : null,
                onChanged: (String? value) {
                  setState(() {
                    selectedSubject = value ?? '';
                  });
                },
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 20),
              appText(
                title: 'Mobile Number',
                fontSize: 20,
                textColor: blackColor,
              ),
              const SizedBox(height: 10),
              textfield(
                hinttext: 'Enter Mobile Number',
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  appButton(
                    buttonText: 'Generate OTP',
                    ontap: () {},
                    btnColor: blackColor,
                    btnTextColor: whiteColor,
                  ),
                  appButton(
                    buttonText: 'Resend OTP',
                    ontap: () {},
                    btnColor: whiteColor,
                    btnTextColor: blackColor,
                  )
                ],
              ),
              const SizedBox(height: 10),
              appText(
                title: 'OTP',
                fontSize: 20,
                textColor: blackColor,
              ),
              const SizedBox(height: 10),
              textfield(
                hinttext: 'Enter OTP',
              ),
              const SizedBox(height: 20),
              appText(
                title: 'Scratch Text',
                fontSize: 20,
                textColor: blackColor,
              ),
              const SizedBox(height: 10),
              textfield(
                hinttext: 'Enter Text If You Have',
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  appButton(
                    buttonText: 'Submit',
                    ontap: () {},
                    btnColor: whiteColor,
                    btnTextColor: blackColor,
                    btnHeight: 35,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
