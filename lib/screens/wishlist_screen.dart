// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:messfinder/screens/mess_screen.dart';
import 'package:messfinder/screens/login_screen.dart';
import 'package:messfinder/screens/home_screen.dart';
// Model class for mess details
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
  
  List<Mess> bookmarkedMesses = [
    Mess(
      name: 'Mess_1',
      description: 'Delicious food in a cozy environment.',
      imagePath: 'assets/mess_pic/Mess_1.png',
    ),
    Mess(
      name: 'Mess_3',
      description: 'Healthy and tasty meals served here.',
      imagePath: 'assets/mess_pic/Mess_3.png',
    ),
    Mess(
      name: 'Mess_5',
      description: 'Variety of cuisines to satisfy your taste buds.',
      imagePath: 'assets/mess_pic/Mess_5.png',
    ),
  ];
    List imgList = [
    'Mess_1',
    'Mess_2',
    'Mess_3',
    'Mess_4',
    'Mess_5',
  ];


  WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
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
                  builder: (context) => MessScreen(imgList[index]),
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
                builder: (context) =>  HomePage(),
              ),
            );
           
          } else if (value == 1) {
              
            
          } else if (value == 2) {
             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  WishlistScreen(),
              ),
            );
          } else if (value == 3) {
             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          }
        },
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Colors.purple,
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Messes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
