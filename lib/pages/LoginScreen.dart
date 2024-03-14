import 'package:flutter/material.dart';
import 'package:flutter_demo_book/pages/RegistrationScreen.dart';
import 'package:flutter_demo_book/pages/dashboard/DocumentScreen.dart';
import 'package:flutter_demo_book/utils/colors.dart';
import 'package:flutter_demo_book/utils/customWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> subjectList = [
      'Madhyamik Physics',
      'Madhyamik Chemistry',
      'Madhyamik Biology'
    ];
    String selectedSubject = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
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
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                appButton(
                  buttonText: 'Enter',
                  ontap: () {},
                  btnColor: whiteColor,
                  btnTextColor: blackColor,
                  btnHeight: 35,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                appText(
                  title: 'Do not have any account?',
                  fontSize: 16,
                  textColor: blackColor,
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const RegistrationScreen(),
                      ),
                    );
                  },
                  child: appText(
                    title: 'Register',
                    fontSize: 15,
                    textColor: blueColor,
                    textFontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const DocumentScreen(),
                      ),
                    );
                  },
                  child: appText(
                    title: 'Document',
                    fontSize: 15,
                    textColor: blueColor,
                    textFontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
