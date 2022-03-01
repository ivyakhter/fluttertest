import 'package:flutter/material.dart';

import '../Splash.dart';

class Deatils extends StatefulWidget {
  final podname;
  final podprice;
  final podoldprice;
  final podimg;

  Deatils({this.podname, this.podimg, this.podoldprice, this.podprice});

  @override
  _DeatilsState createState() => _DeatilsState();
}

class _DeatilsState extends State<Deatils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Center(
          child: InkWell(
            onTap: () {

            },
            child: Text(
              "Creative IT Institute",
              textAlign: TextAlign.center,
            ),
          ),
        ),
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.podimg),
              ),
              footer: Center(
                child: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      widget.podname,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "\$ ${widget.podoldprice}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Expanded(
                          child: Text("\$ ${widget.podprice}"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: new Text("Choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: new Text("Choose a color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: new Text("Choose a Quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Divider(),
          Column(
            children: <Widget>[
              ListTile(
                title: Text("Product Details"),
                subtitle: Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32."),
              ),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Name "),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(widget.podname),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Brand "),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Brand X "),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Condition "),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("New "),
              )
            ],
          ),
          Divider(),
          Text("Similar Courses "),
          Container(
            height: 450.0,
            child: Container(
              child: Similar_products(),
            ),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
      child: InkWell(
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => Deatils(
                  podname: pname,
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
