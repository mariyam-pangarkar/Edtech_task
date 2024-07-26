import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Suggestion extends StatefulWidget {
  const Suggestion({super.key});

  @override
  State<Suggestion> createState() => _SuggestionState();
}

class _SuggestionState extends State<Suggestion> {
  final List<Map<String, dynamic>> suggestion = [
    {
      'name': 'Raj Sharma',
      'username': 'Govt college of...',
      'image': 'images/sugg1.png'
    },
    {
      'name': 'Ria Sen',
      'username': 'Govt college of...',
      'image': 'images/sugg2.png',
    },
    {
      'name': 'Ria Ver',
      'username': 'Govt college of...',
      'image': 'images/sugg3.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        
        const Padding(
          padding: EdgeInsets.symmetric(vertical:18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('People you might know',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600)),
              Text(
                'See All',
                style: TextStyle(
                    color: Color(0xff16C083), fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.6,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: suggestion.length,
            itemBuilder: (context, index) {
              final sugg = suggestion[index];
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.6,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xffDCDCDC), width: 1.5),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.close),
                        ],
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(sugg['image']),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        sugg['name'],
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        sugg['username'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Color(0xff747474),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black, width: 1.5),
                          ),
                          child: const Center(
                            child: Text(
                              'Follow',
                              style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
