import 'package:flutter/material.dart';

class StatusTile extends StatelessWidget {
    final String imagePath;
    final String name;
    final String time;

    const StatusTile({
        required this.imagePath,
        required this.name,
        required this.time,
        super.key,
    });
  
    @override
    Widget build(BuildContext context) {
        double deviceWidth = MediaQuery.of(context).size.width;
        double deviceHeight = MediaQuery.of(context).size.height;

        return Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.02),
            child: Row(
                children: [
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green,
                                width: 3,
                            ),
                            borderRadius: BorderRadius.circular(50),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                                imagePath,
                                height: deviceWidth *0.14,
                                width: deviceWidth *0.14,
                                fit: BoxFit.cover,
                            ),
                        ),
                    ),
                    
                    SizedBox(width: deviceWidth *0.04),
                
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Row(
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
                                ],
                            ),
                            
                            Container(
                                width: deviceWidth *0.6,
                                child: Text(
                                    time,
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
