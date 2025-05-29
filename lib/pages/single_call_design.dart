import 'package:flutter/material.dart';

class CallTile extends StatelessWidget {
    final String imagePath;
    final String name;
    
    const CallTile({
        required this.imagePath,
        required this.name,
        super.key
    });

    @override
    Widget build(BuildContext context) {
        double deviceWidth = MediaQuery.of(context).size.width;
        double deviceHeight = MediaQuery.of(context).size.height;

        return Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.025),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Row(
                            children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(imagePath, height: deviceWidth *0.14, width: deviceWidth *0.14, fit: BoxFit.cover,),
                                ),
                                
                                SizedBox(width: deviceWidth*0.05),
                                
                                Text(name, style: TextStyle(color: Colors.black, fontSize: deviceWidth*0.055, fontWeight: FontWeight.w400)),
                            ],
                        ),

                        Row(
                            children: [
                                Icon(Icons.call_outlined, size: deviceWidth*0.075),
                                SizedBox(width: deviceWidth*0.09),
                                Icon(Icons.videocam_outlined, size: deviceWidth*0.075),                                                            
                            ],
                        ),
                    ],
                ),
        );
    }
}