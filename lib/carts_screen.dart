import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44),
        child: SizedBox(
          width: 205,
          child: AppBar(
            leading: Icon(Icons.arrow_back),
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("cart 🎁"),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: ProductListView()),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  maximumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.green),
              onPressed: () {},
              child: Text(
                "check out",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  _ProductListViewState createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  List<Map<String, dynamic>> products = [
    {
      'name': 'Bell Pepper Red',
      'price': '6\$',
      'quantity': 2,
      'image': 'assets/images/cherry1.png',
    },
    {
      'name': 'Butternut Squash',
      'price': '8\$',
      'quantity': 4,
      'image': 'assets/images/pngfuel 4.png',
    },
    {
      'name': 'Arabic Ginger',
      'price': '4\$',
      'quantity': 6,
      'image': 'assets/images/ginger1.png',
    },
    {
      'name': 'Organic Carrots',
      'price': '4\$',
      'quantity': 2,
      'image': 'assets/images/carrot.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            leading: Image.asset(product['image'],
                width: 50, height: 50), // Product Image
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product['name'],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  '1kg, ${product['price']}',
                  style: TextStyle(fontSize: 14, color: Colors.red),
                ),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    setState(() {
                      if (product['quantity'] > 1) {
                        product['quantity']--;
                      }
                    });
                  },
                ),
                Text(
                  product['quantity'].toString(),
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          product['quantity']++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
