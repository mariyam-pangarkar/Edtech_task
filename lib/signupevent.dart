import 'package:edtech_task/imageclip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupEvent extends StatefulWidget {
  const SignupEvent({super.key});

  @override
  State<SignupEvent> createState() => _SignupEventState();
}

class _SignupEventState extends State<SignupEvent> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children:[ Stack(
        children: [
          Container(
            
           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),

          
                                gradient: const LinearGradient(
                                  colors: [
                                    Colors.blue,
                                    Color.fromARGB(255, 14, 5, 51)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                )),
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1st',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            shadows: [
                              Shadow(
                                blurRadius: 2.0,
                                color: Colors.white,
                                offset: Offset(1.0, 1.0),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'DUBLIN',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                blurRadius: 1.5,
                                color: Colors.white,
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'HACK-ATHON',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            shadows: [
                              Shadow(
                                blurRadius: 2.0,
                                color: Colors.white,
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Key to making tough decisions ',
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            ImageClip()
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -30,
                  left: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      width: 120,
                      height: 120, 
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 83, 16, 16)
                            .withOpacity(0.7), 
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: ClipPath(
                      clipper: TriangleClipper(),
                      child: Container(
                        width: 200, 
                        height: 200,
                        color: Color.fromARGB(255, 61, 60, 24)
                            .withOpacity(0.7), 
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 70,
                  bottom: MediaQuery.of(context).size.height / 7,
                  child: Transform.rotate(
                    angle: 30 * 3.14 / 35, 
                    child: Container(
                      width: 180,
                      height: 100,
                      color: const Color.fromARGB(255, 29, 30, 30)
                          .withOpacity(0.8),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            left: 20,
            bottom: 20,
            child: Text(
              'Hackathon Event . 12 Dec',
              maxLines: 2,
              style: TextStyle(
                  fontSize: 8, color: Colors.white, fontWeight: FontWeight.w700),
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
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text(
                        'Sign up for Event',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      ],

    )
    ;
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path()
      ..moveTo(size.width / 2, 0) 
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height) 
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
