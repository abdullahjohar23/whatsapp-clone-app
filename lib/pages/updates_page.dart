import 'package:flutter/material.dart';
import 'package:whatsapp_clon_app/pages/single_inbox_design.dart';
import 'package:whatsapp_clon_app/pages/single_status_design.dart';

class StatusPage extends StatefulWidget {
    const StatusPage({super.key});

    @override
    State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
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
                                'Updates',
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
            body: Stack( // If the body isn't taking up full screen height, the button might be clipped, overlapped, or outside the visible area
                children: [
                    Padding(
                        padding: EdgeInsets.only(left: _deviceWidth * 0.045, right: _deviceWidth * 0.045, top: _deviceWidth * 0.045),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                // profile owner
                                Text('Status', style: TextStyle(fontSize: _deviceWidth*0.065, fontWeight: FontWeight.bold)),
                                SizedBox(height: _deviceHeight *0.02),
                                ChatTile(imagePath: 'assets/abdullah.jpg', name: 'Add Status', time: '', message: 'Disappears after 24 hours'),
                                
                                // status
                                Text('Recent Updates', style: TextStyle(fontSize: _deviceWidth*0.045, color: Colors.black54, fontWeight: FontWeight.w700)),
                                SizedBox(height: _deviceHeight *0.02),
                                StatusTile(imagePath: 'assets/faysal.png', name: 'Faysal', time: '12:54 AM'),
                                StatusTile(imagePath: 'assets/emon.png', name: 'Emon', time: '03:12 AM'),
                                StatusTile(imagePath: 'assets/taif.png', name: 'Taif', time: '11:11 AM'),
                            ],
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
                                child: Icon(Icons.camera_enhance, color: Colors.white, size: _deviceWidth * 0.06),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}