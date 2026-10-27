import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F5F3),
      appBar: AppBar(
        title: const Text('Student Profile'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Avatar with a white ring (visual change #2)
                const Center(
                  child: CircleAvatar(
                    radius: 62,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.teal,
                      child: Text(
                        'SID',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Seth Ivan Decena',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'BS Information Technology',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(height: 24),

                // Rounded, elevated card (visual change #3)
                const Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.badge, color: Colors.teal),
                        title: Text('Student Number'),
                        subtitle: Text('571049'),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(Icons.school, color: Colors.teal),
                        title: Text('Year Level and Section'),
                        subtitle: Text('3rd Year - BS IT'),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(Icons.email, color: Colors.teal),
                        title: Text('Email Address'),
                        subtitle: Text('s.decena.571049@umindanao.edu.ph'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                const Text(
                  'About Me',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'I am a 3rd-year Information Technology student at the '
                  'University of Mindanao. I learn best by building real '
                  'projects, and I enjoy turning ideas into working apps. '
                  'My goal is to grow into a skilled and well-rounded developer.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
                const SizedBox(height: 24),

                const Text(
                  'Hobbies and Interests',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),

                // Chips with icons (visual change #4)
                const Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Chip(
                      avatar: Icon(Icons.sports_basketball, size: 18),
                      label: Text('Basketball'),
                    ),
                    Chip(
                      avatar: Icon(Icons.sports_esports, size: 18),
                      label: Text('Playing Video Games'),
                    ),
                    Chip(
                      avatar: Icon(Icons.flight, size: 18),
                      label: Text('Travel'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}