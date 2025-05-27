import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
    final String imagePath;
    final String name;
    final String time;
    final String message;

    const ChatTile({
        required this.imagePath,
        required this.name,
        required this.time,
        required this.message,
        super.key,
    });
  
    @override
    Widget build(BuildContext context) {
        double deviceHeight = MediaQuery.of(context).size.height;
        double deviceWidth = MediaQuery.of(context).size.width;

        return Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.035),
            child: Row(
                children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                            imagePath,
                            height: deviceWidth *0.14,
                            width: deviceWidth *0.14,
                            fit: BoxFit.cover,
                        ),
                    ),
                    
                    SizedBox(width: deviceWidth *0.04),
                
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Container(
                                width: deviceWidth *0.72,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Text(
                                            name,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: deviceWidth *0.047,
                                                fontWeight: FontWeight.bold,
                                            ),
                                        ),
                                        
                                        Text(
                                            time,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: deviceWidth *0.038,
                                                fontWeight: FontWeight.w500,
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            
                            Container(
                                width: deviceWidth *0.6,
                                child: Text(
                                    message,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: deviceWidth *0.038,
                                        fontWeight: FontWeight.w500,
                                    ),
                                ),
                            ),
                        ],
                    ),
                ],
            ),
        );
    }
}
