import 'package:flutter/material.dart';
import 'package:whatsapp_clon_app/pages/chat_page.dart';
import 'package:whatsapp_clon_app/pages/calls_page.dart';
import 'package:whatsapp_clon_app/pages/updates_page.dart';

class MainPage extends StatefulWidget {
    const MainPage({super.key});

    @override
    State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
    int _currentIndex = 0; 

    final List<Widget> _screens = [
        ChatPage(),
        StatusPage(),
        CallsPage()
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(            
            body: _screens[_currentIndex],

            bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (index) {
                    setState(() {
                        _currentIndex = index;
                    });
                },

                backgroundColor: Colors.white,
                elevation: 0,

                selectedItemColor: Color(0xff1dab61), // icon color (selected) - applies to both icon and label
                unselectedItemColor: Colors.grey, // icon color (unselected) - applies to both icon and label
                
                selectedLabelStyle: TextStyle(
                    color: Colors.black, // this only works with fixedType but it won't work because selectedItemColor overwrites the color. you need to handle it separately
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                ),
                
                unselectedLabelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                ),

                type: BottomNavigationBarType.fixed, // needed to apply text styles

                items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.chat),
                        label: 'Chats',
                    ),

                    BottomNavigationBarItem(
                        icon: Icon(Icons.update),
                        label: 'Updates',
                    ),

                    BottomNavigationBarItem(
                        icon: Icon(Icons.call),
                        label: 'Calls',
                    ),
                ],
            ),
        );
    }
}
