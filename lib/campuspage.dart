import 'package:edtech_task/Posts.dart';
import 'package:edtech_task/imageclip.dart';
import 'package:edtech_task/signupevent.dart';
import 'package:edtech_task/suggestion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CampusPage extends StatefulWidget {
  const CampusPage({super.key});

  @override
  State<CampusPage> createState() => _CampusPageState();
}

class _CampusPageState extends State<CampusPage> {
  List<String> boxes = [
    '#Career',
    '#Projects',
    '#UX/UI',
    '#Branding',
  ];
  final List<Map<String, dynamic>> cardData = [
    {
      'title': 'Create a resume that will get you hired',
      'subtitle': 'Ira Sherma',
      'color': const Color(0xff16C083),
      'image': 'images/lady1.png'
    },
    {
      'title': 'Manage your Time efficiently and',
      'subtitle': 'Vishak Nair',
      'color': const Color(0xff7B61FF),
      'image': 'images/lady1.png',
    },
  ];
  
  var is_SelectedIndex = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Audio Rooms',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2D2B2C),
                      fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: boxes.length,
                itemBuilder: (context, index) {
                  bool isSelected = is_SelectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        is_SelectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          color: isSelected ? Color(0xFFBEE4D7) : Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: isSelected
                                  ? Color(0xFFBEE4D7)
                                  : Color(0xff16C083),
                              width: 1.5),
                        ),
                        child: Center(
                          child: Text(
                            boxes[index],
                            style: const TextStyle(
                                color: Color(0xff16C083), fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardData.length,
                itemBuilder: (context, index) {
                  final card = cardData[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Stack(
                      children: [
                        Card(
                          elevation: 4,
                          color: card['color'],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 14),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.red, width: 1.5),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Live',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 16),
                                          ),
                                        ),
                                      ),
                                      ImageClip()
                                    ],
                                  ),
                                  const SizedBox(height: 40,),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                card['title'],
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              Text(
                                                card['subtitle'],
                                                style: const TextStyle(
                                                  color: Colors.white70,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.vertical(
                                                top: Radius.circular(15)),
                                            child: Image.asset(
                                              card['image'],
                                              height: double.infinity,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: 40,
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(30),
                                border:
                                    Border.all(color: Colors.black, width: 1.5),
                              ),
                              child: const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 8.0),
                                child: Center(
                                  child: Text(
                                    'Join',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10), 
            const Post(),  // this page will show the 2 post cards
            const SignupEvent(), //this will show signup card
            const Suggestion(), //this will show the friend suggestion page
          ],
        ),
      ),
    );
  }
}
