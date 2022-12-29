import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //greetings row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Hi, Jared!
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hi, Jared!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '23 Jan,2022',
                        style: TextStyle(color: Colors.blue[200]),
                      ),
                    ],
                  ),

                  // Notification
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              //search bar
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // how do you feel?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "How do you feel?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ],
              ),

              SizedBox(
                height: 25,
              ),

              // 4 diff faces bad, fine, well, excellent
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //badly
                  Column(
                    children: const [
                      EmoticonFace(
                        emoticonFace: "😩",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Bad",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      EmoticonFace(
                        emoticonFace: "🙂",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Well",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      EmoticonFace(
                        emoticonFace: "😄",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Fine",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      EmoticonFace(
                        emoticonFace: "🥳",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Amazing",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
