import 'package:flutter/material.dart';

class ImageClip extends StatefulWidget {
  const ImageClip({super.key});

  @override
  State<ImageClip> createState() => _ImageClipState();
}

  @override
  final List<String> circularImage = [
    'images/clipimage1.png',
    'images/clip2.png',
    'images/clip3.png',
  ];
class _ImageClipState extends State<ImageClip> {
  Widget build(BuildContext context) {
    return    SizedBox(
                                        height: 60,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                                          child: SizedBox(
                                            width: (circularImage.length * 20) + 60.0,
                                            child: Stack(
                                              
                                              children: circularImage
                                                  .asMap()
                                                  .entries
                                                  .map((entry) {
                                                int index = entry.key;
                                                String imagePath = entry.value;
                                                return Positioned(
                                                  
                                                  left: index * 25.0,
                                                  child: Stack(
                                                clipBehavior: Clip.none,
                        
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          color: Colors.white,
                                                        ),
                                                        child: ClipOval(
                                                          child: Image.asset(
                                                            imagePath,
                                                            width: 40,
                                                            height: 40,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      if (index == circularImage.length - 1)
                                                        Positioned(
                                                          left: 20,
                                                          child: Container(
                                                            width: 40,
                                                            height: 40,
                                                            alignment: Alignment.center,
                                                            decoration: BoxDecoration(
                                                             shape: BoxShape.circle,
                                                              color: Colors.white.withOpacity(0.8),
                                                            ),
                                                            child: Text(
                                                              '42+',
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                      )
                                    ;
  }
}