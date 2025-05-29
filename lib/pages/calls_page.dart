import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:whatsapp_clon_app/pages/single_call_design.dart';

class CallsPage extends StatefulWidget {
    const CallsPage({super.key});

    @override
    State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
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
                                'Calls',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: _deviceWidth/15,
                                    fontWeight: FontWeight.w500
                                ),
                            ),
                    
                            Row(
                                children: [
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
                        padding: EdgeInsets.only(left: _deviceWidth * 0.045, right: _deviceWidth * 0.045, top: _deviceWidth * 0.2),
                        child: Column(
                            children: [
                                Center(
                                    child: Column(
                                        children: [
                                        Text('Make private calls', style: TextStyle(color: Colors.black, fontSize: _deviceWidth*0.07, fontWeight: FontWeight.w500)),
                                        SizedBox(height: _deviceHeight * 0.03),
                                        Text('Stay connected with secure vide and audio\ncalls to any device',
                                            style: TextStyle(
                                                color: Colors.black54, fontSize: _deviceWidth*0.035),
                                                textAlign: TextAlign.center
                                            ),
                                        ],
                                    ),
                                ),

                                SizedBox(height: _deviceHeight * 0.06),

                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Text('Start a call', style: TextStyle(color: Colors.black, fontSize: _deviceWidth*0.06, fontWeight: FontWeight.w700)),
                                        Material(
                                            elevation: 2,
                                            borderRadius: BorderRadius.circular(20),

                                            child: Container(
                                                padding: EdgeInsets.symmetric(horizontal: _deviceWidth*0.05, vertical: _deviceWidth*0.01),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius: BorderRadius.circular(20),
                                                ),
                                                child: Text('More', style: TextStyle(color: Colors.black, fontSize: _deviceWidth*0.045, fontWeight: FontWeight.w700)),
                                            ),
                                        ),
                                    ],
                                ),

                                SizedBox(height: _deviceHeight*0.04),

                                Column(
                                    children: [
                                        CallTile(imagePath: 'assets/taif.png', name: 'Taif'),
                                        CallTile(imagePath: 'assets/tanjid.jpg', name: 'Tanjid'),
                                        CallTile(imagePath: 'assets/emon.png', name: 'Emon'),
                                        CallTile(imagePath: 'assets/faysal.png', name: 'Faysal'),
                                    ],
                                ),
                            ],
                        ),
                    ),

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
                                child: Icon(MdiIcons.phonePlus, color: Colors.white, size: _deviceWidth * 0.07),
                            ),
                        ),
                    ),
                ],
            ),

            /*
            body: SizedBox.expand(
                child: Stack( // If the body isn't taking up full screen height, the button might be clipped, overlapped, or outside the visible area
                    children: [
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.045),
                            // Showing Chats 
                            child: Text(
                                'Working...'
                            ),
                        ),

                        // New Message Button
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
                                    child: Icon(MdiIcons.phonePlus, color: Colors.white, size: _deviceWidth * 0.07),
                                ),
                            ),
                        ),
                    ],
                ),
            ),
            */
        );
    }
}