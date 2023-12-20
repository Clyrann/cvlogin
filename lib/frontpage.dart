import 'skills.dart';
import 'package:flutter/material.dart';
import 'secondpage.dart';
import 'educ.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(30, 40, 30, 0),
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Curriculum Vitae',
            ),
          ),
          backgroundColor: Color.fromARGB(153, 255, 0, 0),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 50, 0),
          child: SingleChildScrollView(
            reverse: true,
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/7.png',
                    ),
                    radius: 70.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Adrian Ken Rosario",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "BSIT 4",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Divider(
                  height: 50,
                  color: Color.fromARGB(153, 255, 0, 0),
                ),
                Text(
                  "Contact Information:",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.mail,
                        color: Colors.white), // Replace with your desired icon
                    SizedBox(
                        width: 8.0), // Add some space between the icon and text
                    Text(
                      'rosario30910@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.call,
                        color: Colors.white), // Replace with your desired icon
                    SizedBox(
                        width: 8.0), // Add some space between the icon and text
                    Text(
                      '+639761351011',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.g_mobiledata,
                        color: Colors.white), // Replace with your desired icon
                    SizedBox(
                        width: 8.0), // Add some space between the icon and text
                    Text(
                      'Clyrann',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.facebook,
                        color: Colors.white), // Replace with your desired icon
                    SizedBox(
                        width: 8.0), // Add some space between the icon and text
                    Text(
                      'Ayeeeeeken',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Divider(
                  height: 50,
                  color: Color.fromARGB(153, 255, 0, 0),
                ),
                SizedBox(
                  width: 20,
                  height: 0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => secondpage(),
                          ),
                        )
                      },
                      icon: Icon(
                        Icons.person_outlined,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => educ(),
                          ),
                        )
                      },
                      icon: Icon(
                        Icons.school_outlined,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => skills(),
                          ),
                        )
                      },
                      icon: Icon(
                        Icons.workspace_premium_outlined,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
