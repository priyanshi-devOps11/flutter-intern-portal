import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnnouncementsPage extends StatelessWidget {
  const AnnouncementsPage({super.key});

  final List<String> announcements = const [
    "🚀 New Round 2 tasks will be released on Aug 10th!",
    "🎉 Top interns of the week will be announced tomorrow.",
    "📢 Remember to submit your project on GitHub before the deadline.",
    "💡 Pro Tip: Add animations for bonus points!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Announcements"), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.campaign, color: Colors.blue),
              title: Text(
                announcements[index],
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
          );
        },
      ),
    );
  }
}
