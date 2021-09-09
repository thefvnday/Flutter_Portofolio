
import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: 
            [const Color(0xFF000000), const Color(0xFF000000)], )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,


          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
              radius: 100,
              child: Image.asset('avatar.png'),
            ),
            SizedBox(
              height:  20,
            ),
            Text(
              "Fandy Ahmad Irianto",
                style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Text('Today is better than yesterday, Tomorrow is better than today',
             style: TextStyle( 
               fontSize: 20,
               color: Colors.white,
               fontWeight: FontWeight.w300,
             ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '#FLUTTERDEV🤘',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            Text(
              'Connect With Me',
                style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ), 
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    htmlOpenGithub();
                  },
                  child: Image.asset('github.png',
                      height: 50, color:Colors.white
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    htmlOpenLinkedin();
                  },
                  child: Image.asset('linkedin.png',
                      height: 65, color:Colors.white
                  ),
                ),
                
                GestureDetector(
                  onTap: (){
                    htmlOpenTwitter();
                  },
                  child: Image.asset('twitter.png',
                      height: 50, color:Colors.white
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

               
              ],
            ),
             GestureDetector(
                  onTap: (){
                    htmlDownLoadResume();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFFEC407A),
                          const Color(0xFFEC407A),
                        ]
                      ),
                    ),
                    child: Text(
                      "Check My Resume",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),

               SizedBox(
                  height: 40,
                ),

                Text(
                  "Created by THEFVNDAY",
                  style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  ),
                ),
          ],
        ),
      )
    );
  }
}

void htmlOpenGithub(){
  String url = "http://github.com/thefvnday/";
  html.window.open(url, 'github');
}
void htmlOpenLinkedin(){
  String url = "https://www.linkedin.com/in/fandy-ahmad-irianto-282b12212/";
  html.window.open(url, 'linkedin');
}
void htmlOpenTwitter(){
  String url = "https://twitter.com/fandyirianto";
  html.window.open(url, 'twitter');
}
void htmlDownLoadResume(){
  String url = "http://github.com/thefvnday/";
  html.window.open(url, 'resume');
}

