import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  void sendEmail() async {
    final name = nameController.text;
    final email = emailController.text;
    final message = messageController.text;

    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'madhusudhankosari@gmail.com', // change if needed
      query:
          'subject=Portfolio Contact from $name&body=Email: $email\n\n$message',
    );

    await launchUrl(emailUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact Me")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "Your Name"),
              ),
              const SizedBox(height: 12),

              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: "Your Email"),
              ),
              const SizedBox(height: 12),

              TextField(
                controller: messageController,
                maxLines: 5,
                decoration: const InputDecoration(labelText: "Message"),
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: sendEmail,
                child: const Text("Send Message"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
