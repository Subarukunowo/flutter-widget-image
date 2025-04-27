import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile & Hobi',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfilePage(),
      routes: {
        '/anime': (context) => const HobbyPage(
              title: 'Anime',
              color: Colors.red,
              musicPath: 'music/anime.mp3',
            ),
        '/sepakbola': (context) => const HobbyPage(
              title: 'Sepakbola',
              color: Colors.green,
              musicPath: 'music/soccer.mp3',
            ),
        '/game': (context) => const HobbyPage(
              title: 'Game',
              color: Colors.blue,
              musicPath: 'music/game.mp3',
            ),
      },
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            const SizedBox(height: 20),
            _buildBioCard(),
            const SizedBox(height: 30),
            const Text(
              'Hobi Saya',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildHobbyButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildBioCard() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Nama Lengkap: Sandy Mulia Kesuma', style: TextStyle(fontSize: 16)),
            Text('TTL: Bengkalis, 16 Oktober 2004', style: TextStyle(fontSize: 16)),
            Text('Email: sandymuliakesuma@gmail.com', style: TextStyle(fontSize: 16)),
            Text('No HP: 085216146411S', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget _buildHobbyButtons() {
    return Column(
      children: [
        _HobbyButton(
          label: 'Anime',
          color: Colors.red,
          onPressed: () => Navigator.pushNamed(context, '/anime'),
          leading: Image.asset('images/ayang.png', width: 24, height: 24), // Custom icon image
        ),
        const SizedBox(height: 15),
        _HobbyButton(
          label: 'Sepakbola',
          color: Colors.green,
          onPressed: () => Navigator.pushNamed(context, '/sepakbola'),
          icon: Icons.sports_soccer,
        ),
        const SizedBox(height: 15),
        _HobbyButton(
          label: 'Game',
          color: Colors.blue,
          onPressed: () => Navigator.pushNamed(context, '/game'),
          icon: Icons.sports_esports,
        ),
      ],
    );
  }
}

class _HobbyButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final Color color;
  final VoidCallback onPressed;
  final Widget? leading;

  const _HobbyButton({
    this.icon,
    required this.label,
    required this.color,
    required this.onPressed,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null)
            leading!
          else if (icon != null)
            Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Text(label, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

class HobbyPage extends StatefulWidget {
  final String title;
  final Color color;
  final String musicPath;

  const HobbyPage({
    super.key,
    required this.title,
    required this.color,
    required this.musicPath,
  });

  @override
  State<HobbyPage> createState() => _HobbyPageState();
}

class _HobbyPageState extends State<HobbyPage> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _playMusic();
  }

  void _playMusic() async {
    await _audioPlayer.play(AssetSource(widget.musicPath));
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(widget.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: widget.color.withOpacity(0.1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(_getIcon(), size: 80, color: widget.color),
              const SizedBox(height: 20),
              Text(
                'Halaman ${widget.title}',
                style: TextStyle(
                  fontSize: 24,
                  color: widget.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.color,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text('Kembali ke Biodata', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getIcon() {
    switch (widget.title) {
      case 'Anime':
        return Icons.movie;
      case 'Sepakbola':
        return Icons.sports_soccer;
      case 'Game':
        return Icons.sports_esports;
      default:
        return Icons.star;
    }
  }
}
