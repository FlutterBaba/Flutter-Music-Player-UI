import 'package:flutter/material.dart';
import 'package:flutter_music_player_ui/home_page.dart';

class Discover extends StatelessWidget {
  const Discover({Key? key}) : super(key: key);

  Widget buildDiscover({title, icon}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xff363342),
            child: Icon(icon),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            title,
            style: TextStyle(color: Color(0xff565462)),
          )
        ],
      ),
    );
  }

  Widget buildSingleMusic({onTap, image}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Procrastination is it",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "really that bad?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "TOM HEART",
                    style: TextStyle(
                      color: Color(0xff504e5c),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1d2c),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Text(
                "Discover",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildDiscover(
                    icon: Icons.near_me,
                    title: "Startup",
                  ),
                  buildDiscover(
                    icon: Icons.work,
                    title: "Work",
                  ),
                  buildDiscover(
                    icon: Icons.supervisor_account_rounded,
                    title: "Life",
                  ),
                  buildDiscover(
                    icon: Icons.data_usage_rounded,
                    title: "Data",
                  ),
                  buildDiscover(
                    icon: Icons.games,
                    title: "Games",
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Color(0xff353342),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  physics: BouncingScrollPhysics(),
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 20.0,
                  children: [
                    buildSingleMusic(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomePage(
                              appBarColor: Color(0xff29104d),
                              color: Color(0xff220e3e),
                              iconColor: Color(0xff76678c),
                              image: "images/music.png",
                              inactiveColor: Color(0xff362051),
                              shadowColor: Color(0xff38136a),
                              textColor: Color(0xff7a6b90),
                              timeColor: Color(0xffac9dbe),
                            ),
                          ),
                        );
                      },
                      image: "images/music.png",
                    ),
                    buildSingleMusic(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomePage(
                              appBarColor: Color(0xff0f2d35),
                              color: Color(0xff0d282f),
                              iconColor: Color(0xff849495),
                              image: "images/music2.png",
                              inactiveColor: Color(0xff2f4a4e),
                              shadowColor: Color(0xffc3f4b),
                              textColor: Color(0xff2f4b52),
                              timeColor: Color(0xff5f727a),
                            ),
                          ),
                        );
                      },
                      image: "images/music2.png",
                    ),
                    buildSingleMusic(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomePage(
                              appBarColor: Color(0xff29104d),
                              color: Color(0xff220e3e),
                              iconColor: Color(0xff76678c),
                              image: "images/music.png",
                              inactiveColor: Color(0xff362051),
                              shadowColor: Color(0xff38136a),
                              textColor: Color(0xff7a6b90),
                              timeColor: Color(0xffac9dbe),
                            ),
                          ),
                        );
                      },
                      image: "images/music.png",
                    ),
                    buildSingleMusic(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomePage(
                              appBarColor: Color(0xff3f1516),
                              color: Color(0xff2f0f0e),
                              iconColor: Color(0xff836667),
                              image: "images/music3.png",
                              inactiveColor: Color(0xff5c3e3f),
                              shadowColor: Color(0xff631a1a),
                              textColor: Color(0xffab908d),
                              timeColor: Color(0xffd2b9b8),
                            ),
                          ),
                        );
                      },
                      image: "images/music3.png",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
