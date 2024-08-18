import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/email_sender.dart';
import 'package:portfolio/widgets/custom_textfield.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController subjectController;
  late final TextEditingController messageController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    subjectController = TextEditingController();
    messageController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    subjectController.dispose();
    messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      width: screenWidth / 1.3,
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'CONTACT',
                style:
                    GoogleFonts.lato(textStyle: const TextStyle(fontSize: 30)),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 3,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  hintText: 'Your Name',
                  controller: nameController,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  hintText: 'Email',
                  controller: emailController,
                  isEmail: true,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  hintText: 'Subject',
                  controller: subjectController,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  hintText: 'Message',
                  maxLines: 5,
                  controller: messageController,
                ),
                const SizedBox(height: 70),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await sendEmail(
                        name: nameController.text,
                        email: emailController.text,
                        subject: subjectController.text,
                        message: messageController.text,
                      );
                      nameController.clear();
                      emailController.clear();
                      subjectController.clear();
                      messageController.clear();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 20,
                    padding: const EdgeInsets.all(30.0),
                    textStyle: GoogleFonts.lato(
                      textStyle: const TextStyle(fontSize: 22),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    backgroundColor: const Color(0xFF282C35),
                  ),
                  child: const Text('Get in Touch'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
