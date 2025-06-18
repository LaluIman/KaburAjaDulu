import 'package:flutter/material.dart';
import 'package:kaburajadulu/screens/home_screen.dart';
import 'package:kaburajadulu/screens/screen.dart';
import 'package:svg_flutter/svg.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final List<Widget> screens = [
      const HomeScreen(),
      const Screen(),
      const Screen(),
      Screen(),
    ];
    
    final Color selectedIconColor = Color(0xff038ED3);
    final Color unselectedIconColor = Color(0xff868686);

    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: selectedIconColor,
        unselectedItemColor: unselectedIconColor,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500
        ),
         onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          //home
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SvgPicture.asset('assets/icons/Home_Icon.svg', width: 35, height: 35, fit: BoxFit.cover, 
              color: selectedIndex == 0 ? selectedIconColor : unselectedIconColor,),
            ),
            label: 'Home',
          ),
          //Explore
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SvgPicture.asset('assets/icons/Explore_Icon.svg', width: 35, height: 35, fit: BoxFit.cover,
              color: selectedIndex == 1 ? selectedIconColor : unselectedIconColor,),
            ),
            label: 'Explore',
          ),
          //Favourite
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SvgPicture.asset('assets/icons/Favourite_Icon.svg', width: 35, height: 35, fit: BoxFit.cover,
              color: selectedIndex == 2 ? selectedIconColor : unselectedIconColor,),
            ),
            label: 'Favourite',
          ),
          //Account
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SvgPicture.asset('assets/icons/Account_Icon.svg', width: 35, height: 35, fit: BoxFit.cover,
              color: selectedIndex == 3 ? selectedIconColor : unselectedIconColor,),
            ),
            label: 'Account',
          ),
        ],
      )
    );
  }
}
