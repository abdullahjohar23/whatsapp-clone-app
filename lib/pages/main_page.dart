import 'package:flutter/material.dart';
import 'package:whatsapp_clon_app/pages/chat_page.dart';
import 'package:whatsapp_clon_app/pages/updates_page.dart'; // contains StatusPage
import 'package:whatsapp_clon_app/pages/calls_page.dart';

class MainPage extends StatefulWidget {
    const MainPage({super.key});

    @override
    State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
    int _currentIndex = 0;

    final PageController _pageController = PageController(initialPage: 0);

    void _onPageChanged(int index) {
        setState(() {
            _currentIndex = index;
        });
    }

    void _onItemTapped(int index) {
        _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 50),
            curve: Curves.easeInOut,
        );
    }

    @override
    Widget build(BuildContext context) {
        return Theme(
            data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
            ),
            
            child: Scaffold(
                body: PageView(
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    children: const [
                        ChatPage(),
                        StatusPage(), // make sure this exists
                        CallsPage(),
                    ],
                ),
                
                bottomNavigationBar: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        Container(
                            // thin horizontal line at the top of the bottomnavbar
                            height: 1, color: Colors.grey[300],
                        ),
                        
                        BottomNavigationBar(
                            currentIndex: _currentIndex,
                            backgroundColor: Colors.white,
                            onTap: _onItemTapped,
                            elevation: 0,
                            
                            selectedItemColor: Color(0xff1dab61),
                            unselectedItemColor: Colors.grey,
                            
                            selectedLabelStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                            ),
                            
                            unselectedLabelStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                            ),
                            
                            type: BottomNavigationBarType.fixed,
                            
                            items: const [
                                BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
                                BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
                                BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
                            ],
                        ),
                    ],
                ),
            ),
        );
    }
}
