import 'package:flutter/material.dart';

class SpotifyScreen extends StatefulWidget {
const SpotifyScreen({super.key});

@override
State<SpotifyScreen> createState() => _SpotifyScreenState();
}

class _SpotifyScreenState extends State<SpotifyScreen> {
// Round artist picture with name below
Widget artist(String name, String image) {
return Padding(
padding: const EdgeInsets.only(right: 20),
child: Column(
children: [
CircleAvatar(
radius: 45,
backgroundImage: AssetImage(image),
),
const SizedBox(height: 8),
Text(
name,
style: const TextStyle(
color: Colors.white,
fontSize: 12,
),
),
],
),
);
}

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.black,
appBar: AppBar(
backgroundColor: Colors.black,
foregroundColor: Colors.white,
title: const Text(
"Recently Played",
style: TextStyle(color: Colors.white),
),
actions: const [
Icon(Icons.notification_add),
SizedBox(width: 20),
Icon(Icons.history),
SizedBox(width: 20),
Icon(Icons.settings),
SizedBox(width: 14),
],
),
body: Padding(
padding: const EdgeInsets.all(16),
child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
artist("BTS", "assets/images/euro3.jpg"),
artist("SVT", "assets/images/euro3.jpg"),
],
),
),
);
}
}