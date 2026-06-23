import 'package:flutter/material.dart';

final List<IconData> navIcons = [
  Icons.home_filled,                      // Home
  Icons.menu_book_outlined,               // Courses (open book)
  Icons.bolt_outlined,                    // DG Labs (lightning bolt)
  Icons.account_balance_wallet_outlined,  // Wallet
  Icons.travel_explore,                   // Social (globe with magnifier)
  Icons.person_outline,                   // Profile
];

final List<String> navLabels = [
  'Home',
  'Courses',
  'DG Labs',
  'Wallet',
  'Social',
  'Profile',
];

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0; // Tracks the active tab

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background for the app body
      body: Center(
        child: Text(
          'Active Tab: ${navLabels[_selectedIndex]}', 
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF222222),
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.white70,
            selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            unselectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            
            // Loop through your arrays to generate the items dynamically
            items: List.generate(
              navIcons.length,
              (index) => BottomNavigationBarItem(
                icon: Icon(navIcons[index]),
                label: navLabels[index],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}),
    );
    
  }
}