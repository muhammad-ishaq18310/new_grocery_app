import 'package:flutter/material.dart';
import 'package:flutter_application_1/carts_screen.dart';
import 'package:flutter_application_1/intro_screen.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  Map<String, dynamic> pageview = {
    'imges': [
      'assets/images/pic 3.png',
      'assets/images/pngkey.png',
      'assets/images/maxmeat.png',
    ],
    'offertext': [
      'Ramzan Offer',
      'Bare Eid Offer',
      'free offer',
    ],
    'percantage': [
      'Get 25 %',
      'Get 20 %',
      'Get 10 %',
    ]
  };

  int _selectedScreenIndex = 0;

  final List _screens = [
    CartScreen(),
    const intro_screen(),
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.grey.withOpacity(0.5),
        leading: CircleAvatar(
          radius: 12,
          child: Icon(
            Icons.person,
            color: Colors.green,
          ),
        ),
        title: Column(
          children: const [
            Text(
              "good morning",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff979899)),
            ),
            Text(
              "Amelia barlow",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        actions: [
          SizedBox(
            height: 50,
            child: Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.green,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.green,
                ),
                hintText: "search category",
                hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 150,
              child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(pageview['imges'][index]),
                              fit: BoxFit.fill,
                            ),
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      pageview['offertext'][index],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const Text(
                                      "Get 25% off",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Grab it >",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select catagory  😊",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("see ALL",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (i, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                      ),
                      Text('dhf')
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best selling  🧨",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("see ALL",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    color: Colors.grey.withOpacity(0.1),
                    child: Column(
                      children: [
                        Image.asset("assets/images/cherry1.png"),
                        Text(
                          "Bell pepper Red",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "1kg 4\$",
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Colors.grey.withOpacity(0.1),
                    child: Column(
                      children: [
                        Image.asset("assets/images/maxmeat.png"),
                        Text(
                          "Lamb meat",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "1kg 45\$",
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Screen 6'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Thrid Screen")
        ],
      ),
    );
  }
}
