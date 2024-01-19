// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:messfinder/screens/mess_screen.dart';
import 'package:messfinder/screens/login_screen.dart';
import 'package:messfinder/screens/home_screen.dart';


class Mess {
  final String name;
  final String description;
  final String imagePath;

  Mess({
    required this.name,
    required this.description,
    required this.imagePath,
  });
}

class WishlistScreen extends StatelessWidget {
  final List<String> wishlistedMessNames;

  WishlistScreen({Key? key, required this.wishlistedMessNames}) : super(key: key);

  List<Mess> get bookmarkedMesses {
    
    return messList
        .where((mess) => wishlistedMessNames.contains(mess.name))
        .toList();
  }

  List<Mess> messList = [
    Mess(
      name: 'Mess_1',
      description: 'Delicious food in a cozy environment.',
      imagePath: 'assets/mess_pic/Mess_1.png',
    ),
    Mess(
      name: 'Mess_2',
      description: 'Amazing facilities',
      imagePath: 'assets/mess_pic/Mess_2.png',
    ),
    Mess(
      name: 'Mess_3',
      description: 'Healthy and tasty meals served here.',
      imagePath: 'assets/mess_pic/Mess_3.png',
    ),
    Mess(
      name: 'Mess_4',
      description: 'Excellent environment with security',
      imagePath: 'assets/mess_pic/Mess_4.png',
    ),
    Mess(
      name: 'Mess_5',
      description: 'Variety of cuisines to satisfy your taste buds.',
      imagePath: 'assets/mess_pic/Mess_5.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
        backgroundColor: const Color.fromARGB(255, 194, 131, 233),
      ),
      body: ListView.builder(
        itemCount: bookmarkedMesses.length,
        itemBuilder: (context, index) {
          Mess mess = bookmarkedMesses[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessScreen(mess.name),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  mess.imagePath,
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
                title: Text(mess.name),
                subtitle: Text(mess.description),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          } else if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WishlistScreen(
                  wishlistedMessNames: wishlistedMessNames,
                ),
              ),
            );
          } else if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          }
        },
        iconSize: 35,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
