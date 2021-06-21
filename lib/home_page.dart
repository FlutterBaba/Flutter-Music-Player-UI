import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String image;
  final Color color;
  final Color iconColor;
  final Color timeColor;
  final Color appBarColor;
  final Color textColor;
  final Color inactiveColor;
  final Color shadowColor;

  HomePage({
    required this.appBarColor,
    required this.color,
    required this.iconColor,
    required this.image,
    required this.inactiveColor,
    required this.shadowColor,
    required this.textColor,
    required this.timeColor,
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPlay = false;
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: widget.appBarColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: widget.shadowColor,
                      spreadRadius: 5,
                      blurRadius: 200,
                    )
                  ],
                ),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Procrastination is it\nreally that bad?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "TOM HEART",
                          style: TextStyle(
                            color: widget.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 100,
                    inactiveColor: widget.inactiveColor,
                    activeColor: Color(0xfffffeff),
                    onChanged: (double value) {
                      setState(
                        () {
                          _currentSliderValue = value;
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "3:35",
                          style: TextStyle(
                            color: widget.timeColor,
                          ),
                        ),
                        Text(
                          "4:00",
                          style: TextStyle(
                            color: widget.timeColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.skip_previous_rounded,
                        size: 60,
                        color: Colors.white,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isPlay = !isPlay;
                          });
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            isPlay ? Icons.play_arrow : Icons.pause,
                            size: 40,
                            color: widget.color,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.skip_next_rounded,
                        size: 60,
                        color: Colors.white,
                      )
                    ],
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.airplay,
                        color: widget.iconColor,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.open_in_new,
                        color: widget.iconColor,
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
  }
}
