import 'package:edtech_task/signupevent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isExpanded = false;
  final List<Map<String, dynamic>> postdata = [
    {
      'name': 'Dia Mohapatra',
      'username': 'Student @AAM | Learning about finance opportunities and se...',
      'image': 'images/post1.png',
      'is_answer':false,
      'is_mentor':false,
      'title':'What is the simplest investment advice you can give me?'
    },
    {
      'name': 'Noble Babu',
      'username': 'UX Designer | Design Head @Beep | Learn about Research, starting...',
      'image': 'images/post2.png',
      'is_answer':true,
      'is_mentor':true,
      'title':'How do I kickstart my career in 2023 with all this AI noise?'

    },
   
  ];
  @override
  Widget build(BuildContext context) {
    return 
    Wrap(
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
            itemCount: postdata.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final post=postdata[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(post['image']),
                        ),
                        title: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  post['name'],
                                  style: const TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w700),
                                ),
                            post['is_mentor']? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5,vertical: 2),
                                            decoration: BoxDecoration(
                                              color: Color(0xff16C083),
                                              shape: BoxShape.rectangle,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                  color: Color(0xff16C083), width: 1.5),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'Mentor',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 6),
                                              ),
                                            ),
                                          ),
                            ):SizedBox.shrink(),
                              ],
                            ),
                            post['is_answer']?const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('answered',
                                maxLines: 2,
                              
                                                      style: TextStyle(color: Color(0xff16C083),fontSize: 8),),
                            ):Text('') 
                          ],
                        ),
                        subtitle: Column(
                          children: [
                            Text(
                              post['username'],
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff747474)),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        
                      ),
                      ListTile(
                        title: Text(
                          post['title'],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                      LayoutBuilder(builder: (context, constraints) {
                        final textSpan = TextSpan(
                          text:
                              post['username'],
                        );
                
                        final textPainter = TextPainter(
                          text: textSpan,
                          maxLines: isExpanded ? null : 2,
                          textDirection: TextDirection.ltr,
                        );
                
                        textPainter.layout(maxWidth: constraints.maxWidth);
                
                        bool isOverflowing = textPainter.didExceedMaxLines;
                        return ListTile(
                          title: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                     post['username'],
                                  style: TextStyle(color: Colors.black),
                                ),
                                if (!isExpanded && isOverflowing)
                                  TextSpan(
                                    text: '...',
                                  ),
                                TextSpan(
                                  text: isExpanded ? 'View Less' : 'View More',
                                  style: const TextStyle(
                                    color: Color(0xff747474),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      setState(() {
                                        isExpanded = !isExpanded;
                                      });
                                    },
                                ),
                              ],
                            ),
                            maxLines: isExpanded ? null : 2,
                            overflow: isExpanded
                                ? TextOverflow.visible
                                : TextOverflow.ellipsis,
                          ),
                        );
                      }),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF6F6F6),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Color(0xffF6F6F6), width: 1.5),
                                  ),
                                  child: const Center(
                                    child: Row(
                                      children: [
                                        Icon(Icons.arrow_upward_rounded),
                                        Text(
                                          '12 upvotes',
                                          style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff747474)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:4.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffF6F6F6),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: const Color(0xffF6F6F6), width: 1.5),
                                    ),
                                    child: const Center(
                                      child: Icon(Icons.arrow_downward_outlined),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                              decoration: BoxDecoration(
                                color: const Color(0xffF6F6F6),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: const Color(0xffF6F6F6), width: 1.5),
                              ),
                              child: const Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.message),
                                    Text('5 Answers',style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff747474)))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }
}
