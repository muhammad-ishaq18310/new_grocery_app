import 'package:flutter/material.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.2),
        leading: Icon(Icons.arrow_back),
        actions: const [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          //============= conatiner
          Container(
            height: 170,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              image: DecorationImage(
                  image: AssetImage("assets/images/ginger1.png"),
                  fit: BoxFit.contain),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20), // Adjust the curve as needed
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Arabic Ginger",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 70,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(10)),
                  onPressed: () {},
                  child: Center(child: Icon(Icons.minimize)),
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Center(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '4', // Example text, adjust as needed
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),

                ///------------------- second button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Colors.green),
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          //------------- scond text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  "1kg, 4\$",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //==================================== pragraph text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  "Ginger is flowering plants whose rhizome,"
                  "\n ginger rootor ginger,is widely used as "
                  "\n a spice and a folk medicine",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 67,
            width: 342,
            child: Row(
              children: [
                Container(
                  width: 163,
                  height: 67,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      // Image on the left
                      Container(
                        width: 50, // Adjust the width of the image
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/hand.png"),
                          ),
                        ),
                      ),

                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              '100%',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'organic',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(width: 16), // Space between the two containers

                // Second container start
                Container(
                  width: 163,
                  height: 67,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      // Image on the left
                      Container(
                        width: 50, // Adjust the width of the image
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/book.png"),
                          ),
                        ),
                      ),
                      //=============================== second cotainer
                      SizedBox(width: 16), // Space between image and text
                      // Texts in a Column on the right
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '1 year', // First line of text
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                  fontWeight: FontWeight
                                      .bold), // Customize the text style
                            ),
                            Text(
                              'Expiration', // Second line of text
                              style: TextStyle(
                                  fontSize: 14,
                                  color:
                                      Colors.grey), // Customize the second text
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //================================= second row
          SizedBox(
            height: 67,
            width: 342,
            child: Row(
              children: [
                Container(
                  width: 163,
                  height: 67,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    //========================== first continer
                    children: [
                      Container(
                        width: 50, // Adjust the width of the image
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/star.png"),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              '4.8(256)',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Revivers',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(width: 16), // Space between the two containers

                // Second container start
                Container(
                  width: 163,
                  height: 67,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      // Image on the left
                      Container(
                        width: 50, // Adjust the width of the image
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/fire.png"),
                          ),
                        ),
                      ),
                      //=============================== second cotainer
                      SizedBox(width: 16), // Space between image and text
                      // Texts in a Column on the right
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '8 kcal', // First line of text
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                  fontWeight: FontWeight
                                      .bold), // Customize the text style
                            ),
                            Text(
                              '100 Gram', // Second line of text
                              style: TextStyle(
                                  fontSize: 14,
                                  color:
                                      Colors.grey), // Customize the second text
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Space between the Row and the button

          // Add to Cart Button
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                // Add to cart button pressed
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Set button color to green
                minimumSize:
                    Size(253, 53), // Set the width to 253px and height to 53px
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(16), // Button rounded corners
                ),
              ),
              child: Text(
                'Add to Cart', // Button text
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white), // Customize button text style
              ),
            ),
          ),
        ],
      ),
    );
  }
}
