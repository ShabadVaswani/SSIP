import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jsk_app/info_menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jsk_app/login.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore_for_file: prefer_const_constructors

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MSG {
  final String msg;

  const MSG(this.msg);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Jan Seva Kendra",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        leading: Image.asset('assets/images/logo.png'),
      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  'Hello User',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.login,
              ),
              title: const Text('Login as Administratior'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Login()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200.0,
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/banner-1.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/banner-2.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 200.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(25.0),
            child: TextFormField(
              onTap: () {
                showSearch(context: context, delegate: DataSearch());
              },
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Search Anything...',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Container(
            alignment: FractionalOffset.centerLeft,
            margin: const EdgeInsets.all(12.0),
            child: const Text(
              'Most Frequently Searched : ',
              style: TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            alignment: FractionalOffset.center,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.idCardClip),
                      ),
                      Text('Aadhar Card'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Info(),
                                  settings: RouteSettings(arguments: 'data')));
                        },
                        icon: Icon(Icons.card_giftcard),
                      ),
                      Text('data')
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.card_giftcard),
                      ),
                      Text('data')
                    ],
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            alignment: FractionalOffset.center,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.card_giftcard),
                      ),
                      Text('data'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.card_giftcard),
                      ),
                      Text('data')
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.card_giftcard),
                      ),
                      Text('data')
                    ],
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            alignment: FractionalOffset.center,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.card_giftcard),
                      ),
                      Text('data'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.card_giftcard),
                      ),
                      Text('data')
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.card_giftcard),
                      ),
                      Text('data')
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  List<String> wlist = ["Hello", "World", "Hpw are you?"];
  List<String> recents = ["Hola", "MF"];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, "null");
      },
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  void showResults(BuildContext context) {
    if (query.isNotEmpty) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => Info(),
            settings: RouteSettings(arguments: query),
          ));
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final list = query.isEmpty
        ? recents
        : wlist.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
          onTap: () {
            query = list[index];
          },
          leading: Icon(Icons.pages),
          title: RichText(
            text: TextSpan(
              text: list[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: list[index].substring(query.length),
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )),
      itemCount: list.length,
    );
  }
}
