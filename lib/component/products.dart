

import 'package:creative_it_flutter_last/seminar/details.dart';
import 'package:flutter/material.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Balzer1",
      "picture": "assets/image_03.jpg",
      "old_price": "200.0",
      "price": "150.0",
    },
    {
      "name": "Balzer2",
      "picture": "assets/image_02.jpg",
      "old_price": "200.0",
      "price": "150.0",
    },
    {
      "name": "Balzer3",
      "picture": "assets/image_04.jpg",
      "old_price": "200.0",
      "price": "150.0",
    },
    {
      "name": "Balzer3",
      "picture": "assets/image_04.jpg",
      "old_price": "200.0",
      "price": "150.0",
    },
    {
      "name": "Balzer3",
      "picture": "assets/image_04.jpg",
      "old_price": "200.0",
      "price": "150.0",
    },
    {
      "name": "Balzer3",
      "picture": "assets/image_04.jpg",
      "old_price": "200.0",
      "price": "150.0",
    },
    {
      "name": "Balzer3",
      "picture": "assets/image_04.jpg",
      "old_price": "200.0",
      "price": "150.0",
    },
    {
      "name": "Balzer3",
      "picture": "assets/image_04.jpg",
      "old_price": "200.0",
      "price": "150.0",
    },
    {
      "name": "Balzer3",
      "picture": "assets/image_04.jpg",
      "old_price": "200.0",
      "price": "150.0",
    },
    {
      "name": "Balzer3",
      "picture": "assets/image_04.jpg",
      "old_price": "200.0",
      "price": "150.0",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return pmyProduct(
            pname: product_list[index]["name"],
            pic: product_list[index]["picture"],
            price: product_list[index]["price"],
            old_price: product_list[index]['old_price'],
          );
        });
  }
}

class pmyProduct extends StatelessWidget {
  final String pname;
  final String pic;
  final String old_price;
  final String price;

  pmyProduct({this.pname, this.pic, this.old_price, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:InkWell(
        onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> Deatils(
          podname:pname,
          podimg: pic,
          podoldprice: old_price,
          podprice: price,

        ))),
        child: GridTile(
          footer: Container(
            color: Colors.white60,
            child: ListTile(
              leading: Text(
                pname,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              title: Text(
                "Price " + "\$" + price,
                style:
                TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Old Price " + "\$" + price,
                style: TextStyle(
                    color: Colors.black54,
                    decoration: TextDecoration.lineThrough),
              ),
            ),
          ),
          child: Image.asset(
            pic,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
