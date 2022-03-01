
import 'package:creative_it_flutter_last/component/cart_products.dart';
import 'package:flutter/material.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Center(
            child: InkWell(
          onTap: () {},
          child: Text(
            "Creative IT Institute",
            textAlign: TextAlign.center,
          ),
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),

      body: cart_product(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Divider(),
            Expanded(
                child: ListTile(
                 title: Text("Total"),
                 subtitle: Text("\$" + "230"),
            )),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                child: Text(
                  "Cheek Out",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
