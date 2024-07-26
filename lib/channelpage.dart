import 'package:edtech_task/imageclip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChannelPage extends StatefulWidget {
  const ChannelPage({super.key});

  @override
  State<ChannelPage> createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> {
  final List<Map<String, dynamic>> storyimages = [
    {
      'name': 'Papercut',
      'username': 'Interview Questions',
      'image': 'images/story1.png'
    },
    {
      'name': 'Mastermind',
      'username': 'Mind of a CEO',
      'image': 'images/story2.png'
    },
    {
      'name': 'Projex',
      'username': 'Prepare for projects',
      'image': 'images/story3.png'
    },
    {
      'name': 'Lion',
      'username': 'Interview Questions',
      'image': 'images/story4.png'
    }
  ];

  final List<Map<String, dynamic>> cardData = [
    {
      'title': 'Create a resume that will get you hired',
      'subtitle': 'Ira Sherma',
      'color': Color(0xff16C083),
      'image': 'images/lady1.png',
      'data': 'Live',
      'datacolor': Color(0xffFAFAFA),
      'datafontcolor': Colors.black
    },
    {
      'title': 'Projects',
      'subtitle': 'Check out latest projects',
      'color': Colors.black,
      'image': 'images/men.png',
      'data': 'Pro',
      'datacolor': Color(0xff3350ED),
      'datafontcolor': Colors.white,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Wrap(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Browser Community',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Color(0xff2D2B2C), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storyimages.length,
                itemBuilder: (context, index) {
                  final story = storyimages[index];
                  return Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff16C083),
                                    Color(0xffB2C016)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: ClipOval(
                                      child: Image.asset(
                                    story['image'],
                                    fit: BoxFit.fill,
                                  )),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff16C083),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Color(0xff16C083), width: 3),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 100,
                          child: Center(
                            child: Text(
                              story['name'],
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Center(
                            child: Text(
                              story['username'],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  color: Color(0xff929292),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Color(0xff2D2B2C), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.4,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cardData.length,
                itemBuilder: (context, index) {
                  final card = cardData[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: card['color'],
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Wrap(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 14),
                                        decoration: BoxDecoration(
                                          color: card['datacolor'],
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(30),
                                          border: Border.all(
                                              color: card['datacolor'],
                                              width: 1.5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            card['data'],
                                            style: TextStyle(
                                                color: card['datafontcolor'],
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                      ImageClip()
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 100,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(card['title'],
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                ),
                                                maxLines: 2),
                                            Text(card['subtitle'],
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                ),
                                                maxLines: 2),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Image.asset(
                                          card['image'],
                                          height: 150,
                                          width: 200,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
                              padding: EdgeInsets.symmetric(horizontal: 14),
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
                                    'Join Channel',
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
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}


