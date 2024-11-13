import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text("PROFILE"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_rounded),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // PROFILE COLUMN
          Column(
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/diriku.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                "Merry Dwi",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("5026221041"),
            ],
          ),
          const SizedBox(height: 25),
          // COMPLETE PROFILE SECTION
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text(
                  "Take a look at My Special Ability",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "(1/5)",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: List.generate(5, (index) {
              return Expanded(
                child: Container(
                  height: 7,
                  margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 0 ? Colors.blue : Colors.black12,
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 20),
          // PROFILE COMPLETION CARDS
          Column(
            children: profileCompletionCards.map((card) {
              return ListTile(
                leading: Icon(card.icon, color: Colors.blue),
                title: Text(card.title),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text(card.buttonText),
                ),
              );
            }).toList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3, // Set index sesuai tab yang aktif
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          // TODO: Tambahkan logika untuk navigasi jika perlu
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class ProfileCompletionCard {
  final String title;
  final String buttonText;
  final IconData icon;

  ProfileCompletionCard({
    required this.title,
    required this.buttonText,
    required this.icon,
  });
}

List<ProfileCompletionCard> profileCompletionCards = [
  ProfileCompletionCard(
    title: "Pecinta Kucing",
    icon: CupertinoIcons.square_list,
    buttonText: "See My Cat's Photos",
  ),
  ProfileCompletionCard(
    title: "Pecinta Kpop",
    icon: CupertinoIcons.music_note,
    buttonText: "See My Kpop's List",
  ),
  ProfileCompletionCard(
    title: "Penyuka Film dan Drama Jepang/Korean",
    icon: CupertinoIcons.square_list,
    buttonText: "See My movie's list",
  ),
  ProfileCompletionCard(
    title: "Punya Usaha Mochi di rumah",
    icon: CupertinoIcons.square_list,
    buttonText: "See My mochi's catalog menu",
  ),
  ProfileCompletionCard(
    title: "Weekend full baca komik",
    icon: CupertinoIcons.square_list,
    buttonText: "See My list",
  ),
];
