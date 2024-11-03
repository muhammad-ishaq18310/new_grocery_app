import 'package:flutter/material.dart';

class VegetablesScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      "image":
          "assets/images/cherry1.png", // Replace with your actual image path or URL
      "text": "Bell pepper red  \n  1 kg per \$6",
    },
    {
      "image": "assets/images/gobi.png",
      "text": "Fresh lettuce \n  1 kg per \$2",
    },
    {
      "image": "assets/images/carrot.png",
      "text": "fresh carrot \n  1 kg per \$4",
    },
    {
      "image": "assets/images/ginger1.png ",
      "text": "Abrabic ginger \n  1 kg per \$4",
    },
    {
      "image": "assets/images/pngfuel 4.png",
      "text": "Butternut squash \n  1 kg per \$4",
    },
    {
      "image": "assets/images/pngkey.png",
      "text": "fresh brocooli \n  1 kg per \$2",
    },
  ];
  VegetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_left_outlined),
        title: Text(
          "Vegetabals",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.search)],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (i, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                ///--------------- first continer
                child: Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    image: DecorationImage(
                      image: AssetImage(items[index]["image"]!),
                      fit: BoxFit.contain,
                    ),
                  ),

                  //----------------- first conatiner text

                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Text(
                          items[index]["text"]!,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        //--------------- first continer button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ), // Button background color to black
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,

                /////----------------------------------- scond container
              ),
              Expanded(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    image: DecorationImage(
                      image: AssetImage(
                          items[(index + 1) % items.length]["image"]!),
                      fit: BoxFit.contain,
                    ),
                  ),

                  //------------------- text secondcontainer
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Text(
                          items[(index + 1) % items.length]["text"]!,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        ///-----------------elevetae button of second container
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
