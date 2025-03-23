import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/chatPage.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/profilePage.dart';
import 'package:flutter_application_1/searchPage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;

  List<Widget> list = [
    HomePage(),
    SearchPage(),
    ChatPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigation",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 146, 10, 224),
      ),
      body: IndexedStack(
        index: _page,
        children: list,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 146, 10, 224),
        items: [
          CurvedNavigationBarItem(label: "Home", child: Icon(Icons.home)),
          CurvedNavigationBarItem(label: "Search", child: Icon(Icons.home)),
          CurvedNavigationBarItem(label: "Chat", child: Icon(Icons.home)),
          CurvedNavigationBarItem(label: "Profile", child: Icon(Icons.home)),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}


//Personne(age, nom, prenom, adresse(lattituude,longetude,nbr[int(long n1,Animal chat(age)) , int]));