import 'package:flutter/material.dart';

class SpotifyScreen extends StatefulWidget {
  const SpotifyScreen({super.key});

  @override
  State<SpotifyScreen> createState() => _SpotifyScreenState();
}

class _SpotifyScreenState extends State<SpotifyScreen> {
  Widget _artist(String name, String image, double size) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              image,
              width: size,
              height: size,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final artistSize = (width - 32 - 24) / 2.2;

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      'Recently played',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.notifications_none,
                        color: Colors.white, size: 28),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.history, color: Colors.white, size: 28),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.settings_outlined,
                        color: Colors.white, size: 28),
                  ),
                ],
              ),

              // Artists row
              const SizedBox(height: 32),
              Row(
                children: [
                  _artist('Lana Del Rey', 'assets/images/lana.jpg', artistSize),
                  _artist('Marvin Gaye', 'assets/images/mavin (1).png',
                      artistSize),
                ],
              ),

              // 2021 in review
              const SizedBox(height: 48),
              Row(
                children: [
                  Image.asset(
                    'assets/images/2021.png',
                    width: 72,
                    height: 72,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 14),
                  const Text(
                    'Your 2021 in review',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              // Cards
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(
                          'assets/images/top songs.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(
                          'assets/images/top artist.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}