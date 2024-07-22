import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _one_appState();
}

class _one_appState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: new Color(0xff075e54),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.qr_code_scanner),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black12,
              ),
              padding: EdgeInsets.all(03),
              child: TextField(
                onChanged: (value) {
                  // Handle search logic here
                },
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.grey),
                ),
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.archive_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Archived",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(child: second_app())
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          // Set a visible background color
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          //currentIndex: _selectedIndex,
          //  onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          // Ensure labels are always visible
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   backgroundColor: Colors.green,
        //   items: [
        //     BottomNavigationBarItem(
        //       backgroundColor: Colors.white,
        //       icon: Icon(
        //         Icons.home,
        //         color: Colors.black,
        //       ),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.search),
        //       label: 'Search',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: 'Profile',
        //     ),
        //   ],
        // ),

        // bottomSheet: second_app(),
      ),
    );
  }
}

class second_app extends StatelessWidget {
  second_app({super.key});

  List<String> ab = <String>[
    'vimal           ',
    'abdul',
    'joel',
    'muhil',
    'amma',
    'GAMES AND MOVIES',
    'chandru fr',
    'subakar',
    'harish kanish',
    'giri',
    'billu fr',
    'prasana',
    'SJC/22-25/BCA-B/S1'
  ];

  List<String> c = <String>[
    'count 1          ',
    'count 2          ',
    'count 3          ',
    'count 4          ',
    'count 5          ',
    'count 6          ',
    'count 7          ',
    'count 8          ',
    'count 9          ',
    'count 10          ',
    'count 11          ',
    'count 12          ',
    'count  13'
  ];

  List<String> ba = <String>[
    'dai task mudichitiya da',
    'enna da pandra',
    'naa vittila erukkan',
    'dai movie download pannitaya da',
    'enga pa vandutu erukka',
    'GTA 5 download pannitiya ',
    'dai python course start panniya da',
    'dai na busy ya erukan ff aadalam',
    'anna ff id send pannu',
    'da innaiki ya collage varala',
    'dai tamil pdf send pannu da',
    'dai enna group la add pannu',
    'student tomorrow collage  holiday'
  ];

  List<String> a1 = <String>[
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: ab.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.white,
          height: 100,
          width: 500,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "${a1[index]}",
                  ),
                  radius: 35.0,
                ),
              ),
              SizedBox(width: 10),
              Center(
                child: Container(
                  color: Colors.white,
                  height: 50,
                  width: 310,
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    width: 310,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Second(data: ("${c[index]}"))));
                          },
                          child: Expanded(
                            child: Container(
                              width: 310,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "${ab[index]}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${ba[index]}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w100),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Text("${ca[index]}"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.grey,
          height: 5,
          thickness: 0.5,
        );
      },
    );
  }
}
