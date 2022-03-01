import 'package:flutter/material.dart';

class cart_product extends StatefulWidget {
  @override
  _cart_productState createState() => _cart_productState();
}

class _cart_productState extends State<cart_product> {
  var product_on_cart = [
    {
      "name": "Balzer1",
      "picture": "assets/image_03.jpg",
      "size": "M",
      "color": "black",
      "price": 150.0,
      "qty": 1
    },
    {
      "name": "Balzer2",
      "picture": "assets/image_02.jpg",
      "size": "X",
      "color": "Red",
      "price": 150.0,
      "qty": 1
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: product_on_cart.length,
      itemBuilder: (context, int index) {
        return singleCartProduct(
          cart_pname: product_on_cart[index]["name"],
          cart_pic: product_on_cart[index]["picture"],
          cart_size: product_on_cart[index]["size"],
          cart_color: product_on_cart[index]["color"],
          cart_price: product_on_cart[index]["price"],
          cart_qty: product_on_cart[index]["qty"],
        );
      },
    );
  }
}

class singleCartProduct extends StatelessWidget {
  final cart_pname;
  final cart_pic;
  final cart_size;
  final cart_price;
  final cart_color;
  final cart_qty;

  singleCartProduct(
      {this.cart_pname,
      this.cart_pic,
      this.cart_size,
      this.cart_color,
      this.cart_price,
      this.cart_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: ListTile(

        leading: Image.asset(
          cart_pic,
          width: 50.0,
          height: 50.0,
        ),
        title: Text(cart_pname),
        subtitle: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(2.0),
                child:
                    Text("Size", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(cart_size),
              ),
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  "Color",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(cart_color),
              ),

              Padding(
                padding: EdgeInsets.all(2.0),
                child: Row(
                  children: <Widget>[

                    IconButton(icon: Icon(Icons.arrow_left), onPressed: () {}),
                    Text("1"),
                    IconButton(icon: Icon(Icons.arrow_right), onPressed: () {}),



                  ],

                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text("\$" + cart_price.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15)),
          )
        ]),
        trailing: Column(

          children: <Widget>[
            IconButton(icon: Icon(Icons.delete),onPressed: (){},)
          ],
        ),
      ),
    );
  }
}
