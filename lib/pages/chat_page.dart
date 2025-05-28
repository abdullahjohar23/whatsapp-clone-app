import 'package:flutter/material.dart';
import 'package:whatsapp_clon_app/pages/chat_data.dart';
import 'package:whatsapp_clon_app/pages/single_inbox_design.dart';

class ChatPage extends StatefulWidget {
    const ChatPage({super.key});

    @override
    State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
    late double _deviceHeight, _deviceWidth;

    @override
    Widget build(BuildContext context) {
        _deviceHeight = MediaQuery.of(context).size.height;
        _deviceWidth = MediaQuery.of(context).size.width;

        return Scaffold(
            backgroundColor: Colors.white,

            //* AppBar Design
            appBar: AppBar(
                backgroundColor: Colors.white,

                // here scrolledUnderElevation is enough to remove the light grayish elevation that shows up when the screen is scrolled down
                elevation: 0,
                scrolledUnderElevation: 0, // it says, “Don’t show any shadow or elevation when the page scrolls — keep my AppBar looking flat and clean”
                surfaceTintColor: Colors.transparent, // it says, “Hey, don’t apply any extra glossy tint or highlight on my AppBar — I want the raw background color to show”

                title: Padding(
                    padding: EdgeInsets.only(top: _deviceHeight/55),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                        children: [
                            Text(
                                'WhatsApp',
                                style: TextStyle(
                                    color: Color(0xff1dab61),
                                    fontSize: _deviceWidth/15,
                                    fontWeight: FontWeight.bold
                                ),
                            ),
                    
                            Row(
                                children: [
                                    Icon(Icons.camera_alt_outlined, size: _deviceWidth/15),
                                    SizedBox(width: _deviceWidth/20),
                                    Icon(Icons.search, size: _deviceWidth/15),
                                    SizedBox(width: _deviceWidth/20),
                                    Icon(Icons.more_vert, size: _deviceWidth/15),
                                ],
                            ),
                        ],
                    ),
                ),

                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(_deviceHeight*0.01),
                    child: Container(
                        color: Colors.grey[300],
                        height: 1,
                    ),
                ),
            ),

            //* Body Section
            body: Stack(
                children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.045),
                        // Showing Chats 
                        child: ListView.builder(
                            padding: EdgeInsets.only(top: _deviceHeight * 0.04),
                            itemCount: chatData.length, // watch chat_data.dart page
                            itemBuilder: (context, index) {
                                final chat = chatData[index];
                                return ChatTile(imagePath: chat['imagePath']!, name: chat['name']!, time: chat['time']!, message: chat['message']!);
                            },
                        ),
                    ),

                    //* New Message Button
                    Positioned(
                        bottom: _deviceHeight * 0.07, // the widget will be 7% of the screen height above the bottom edge
                        right: _deviceWidth * 0.05, // the widget will be 5% of the screen width from the right edge
                        
                        child: Material(
                            elevation: 3,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff1dab61),
                                ),
                                height: _deviceHeight * 0.08,
                                width: _deviceHeight * 0.08,
                                child: Icon(Icons.message, color: Colors.white, size: _deviceWidth * 0.07),
                            ),
                        ),
                    ),
                ],
            ),
            
            /*
            By default, when you use floatingActionButton inside a Scaffold, Flutter places the button in the bottom-right corner of the screen with some padding from the edges
            If you were to use this instead of Positioned():
                - you would have no control to place it in different position
                - you had to put it outside the Stack() [you wouldn't even need Stack() then, cause floatingActionButton by default comes on top of the screen]

            New Message Button
            floatingActionButton: FloatingActionButton(
                backgroundColor: Color(0xff1dab61),
                child: Icon(Icons.message, color: Colors.white, size: _deviceWidth * 0.07),
                onPressed: () {
                    button doesn't work
                },
            ),
            */
        );
    }
}
