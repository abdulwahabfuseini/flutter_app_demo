import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/button_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          // brightness: Brightness.dark,
        ),
      ),
      home: const BottomNavBar(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text(
          "My Ticket",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
        // backgroundColor: Colors.red,
        elevation: 20,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.green],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bgImage.jpeg",
            height: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(

            height: 300,
            child: Center(
              child: Text(
                "Background Image",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),

      // Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.black,
      //   padding: EdgeInsets.all(20),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     spacing: 20,
      //     children: [
      //       Container(
      //         height: 150,
      //         width: 150,
      //         decoration: BoxDecoration(
      //           color: Colors.red,
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         child: Center(
      //           child: Text(
      //             "Red Box",
      //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //           ),
      //         ),
      //       ),
      //       Container(
      //         height: 150,
      //         width: 150,
      //         decoration: BoxDecoration(
      //           color: Colors.yellow,
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         child: Center(
      //           child: Text(
      //             "Yellow Box",
      //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //           ),
      //         ),
      //       ),
      //       Container(
      //         height: 150,
      //         width: 150,
      //         decoration: BoxDecoration(
      //           color: Colors.green,
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         child: Center(
      //           child: Text(
      //             "Green Box",
      //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
