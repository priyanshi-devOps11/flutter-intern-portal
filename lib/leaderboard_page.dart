import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  final List<Map<String, dynamic>> leaders = const [
    {"name": "Ananya", "donations": 7500},
    {"name": "Priyanshi", "donations": 5000},
    {"name": "Rohit", "donations": 4500},
    {"name": "Neha", "donations": 3800},
    {"name": "Aryan", "donations": 2000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Leaderboard"), centerTitle: true),
      body: ListView.builder(
        itemCount: leaders.length,
        itemBuilder: (context, index) {
          final leader = leaders[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                leader["name"],
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              trailing: Text(
                "₹${leader["donations"]}",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
