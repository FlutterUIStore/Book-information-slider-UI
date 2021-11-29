import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            alignment: Alignment.center,
            color: Colors.black,
            child: Row(
              children: [
                SizedBox(
                  height: 170,
                  width: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: screens.length,
                    itemBuilder: (BuildContext context,int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  image: NetworkImage(
                                    screens[index].backgroundimage,),
                                    width: 100,
                                    height: 120,
                                    fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  SizedBox(
                                    width: 120,
                                    child: Text(screens[index].text,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        letterSpacing: 0.9,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children:  [
                                      const Icon(Icons.star,size: 15,),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      const Text("4.5",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        width: 50,
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.remove_red_eye,size: 15,),
                                          SizedBox(
                                        width: 2,
                                      ),
                                      Text("4.5k",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),),
                                        ],
                                      ),
                                        decoration: BoxDecoration(
                                          color: Colors.purple.shade100,
                                          borderRadius: BorderRadius.circular(50)
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}

class BoxModel {
  String backgroundimage;
  String text;

  BoxModel({
    required this.backgroundimage,
    required this.text,
  });
}

List<BoxModel> screens = <BoxModel>[
  BoxModel(
    backgroundimage: 'https://static.packt-cdn.com/products/9781786461629/cover/smaller',
    text: 'AUTHENTIC Guide To C And C++ PROGRAMMING Language',
  ),
  BoxModel(
    backgroundimage: "https://static.packt-cdn.com/products/9781788996082/cover/9781788996082-original.png",
    text: "Flutter Apprentice First EDITION Learn to Build Cross-Platform Apps.",
  ),
  BoxModel(
    backgroundimage: 'https://dart.dev/assets/cover/dart-apprentice-efb5ede1ef176e6a8f9fb648ae2d792054ef5d6790441fcb9f97d27b23ca692f.png',
    text: 'Dart Apprentice FIRST EDITION Beginning Programming With Dart',
  ),
];

