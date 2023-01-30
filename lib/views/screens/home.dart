import 'package:flutter/material.dart';
import '../../globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video category'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ...videos
                  .map(
                    (e) => Stack(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  videoLink = e['video'];
                                  Name = e['name'];
                                });
                                Navigator.pushNamed(context, 'video_page',
                                    arguments: e);

                                Globals.image = e['id'];
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.28,
                                width: MediaQuery.of(context).size.width * 1,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: e['img'], fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.28,
                          width: MediaQuery.of(context).size.width * 1,
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            '${e['name']}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                fontSize: 70),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
