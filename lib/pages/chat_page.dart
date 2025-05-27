import 'package:flutter/material.dart';
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
            backgroundColor: Color(0xfffefefe),

            //* AppBar Design
            appBar: AppBar(
                backgroundColor: Color(0xfffefefe),

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
                    //* Chats 
                    SingleChildScrollView(
                        child: Container(
                            margin: EdgeInsets.only(left: _deviceWidth*0.045, right: _deviceWidth*0.045, top: _deviceHeight*0.04),
                            child: Column(
                                children: [
                                    //* this section is design for single chat and it will be repeated for other chats
                                    ChatTile(imagePath: 'assets/ammu.png', name: 'Ammu', time: 'Yesterday', message: '2 kg alu aan forhad er dokan theke. boro beche anis'),
                                    ChatTile(imagePath: 'assets/faysal.png', name: 'Faysal', time: 'Yesterday', message: 'Kire, ajke ber hobi na?'),
                                    ChatTile(imagePath: 'assets/emon.png', name: 'Emon', time: '1:17 PM', message: 'Gorur hut e jabi kalke?'),
                                    ChatTile(imagePath: 'assets/taif.png', name: 'Taif', time: '5/24/25', message: 'CPS Academy er course ta niba naki dekho'),
                                    ChatTile(imagePath: 'assets/samiul.png', name: 'Samiul IIUC', time: '5/18/25', message: 'Brain Station e apply kor'),
                                    ChatTile(imagePath: 'assets/tanjid.jpg', name: 'Tanjid IIUC', time: '5/17/25', message: 'Brain Station e apply kore kichu hobe na'),
                                    ChatTile(imagePath: 'assets/sunday.png', name: 'Only Sunday', time: '4/22/25', message: 'Faysal: 8tay ber hobo ajke'),
                                    ChatTile(imagePath: 'assets/azim.jpg', name: 'Azim IIUC', time: '4/20/25', message: 'Ekta routine banai dis to bondhu'),
                                    ChatTile(imagePath: 'assets/alauddin.jpg', name: 'Alauddin IIUC', time: '4/17/25', message: 'Algo te abar retake khaisi beda'),
                                    ChatTile(imagePath: 'assets/baizid.jpg', name: 'Baizid Junior', time: '4/13/25', message: 'Bhaiya biye hoye gese amar'),
                                    ChatTile(imagePath: 'assets/nahid.jpg', name: 'Nahid IIUC', time: '4/13/25', message: 'Beda, biye arekta korbo'),
                                ],
                            ),
                        ),
                    ),

                    //* New Message Button
                    Positioned(
                        bottom: _deviceHeight * 0.13, // the widget will be 13% of the screen height above the bottom edg
                        right: _deviceWidth * 0.04, // the widget will be 4% of the screen width from the right edge.
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
        );
    }
}
