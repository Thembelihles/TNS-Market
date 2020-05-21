import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsnmarket/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_old_price;
  final product_detail_new_price;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_picture,
      this.product_detail_old_price,
      this.product_detail_new_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: Text('TSN Market',
                style: GoogleFonts.squadaOne(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30.0))),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 250.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(widget.product_detail_name,
                        style: GoogleFonts.squadaOne(
                            color: Colors.black, fontSize: 20)),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text(
                          "R${widget.product_detail_old_price}",
                          style: GoogleFonts.squadaOne(
                              color: Colors.black45,
                              fontSize: 16,
                              decoration: TextDecoration.lineThrough),
                        )),
                        Expanded(
                            child: new Text(
                          "R${widget.product_detail_new_price}",
                          style: GoogleFonts.squadaOne(
                              color: Colors.green,
                              fontSize: 16,
                              decoration: TextDecoration.none),
                        ))
                      ],
                    ),
                  ),
                )),
          ),

          //            ================the first buttons============

          Row(
            children: <Widget>[
              //      ============the size button============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size",
                                style: GoogleFonts.squadaOne(
                                    color: Colors.black, fontSize: 20)),
                            content: new Text("Choose the size",
                                style:
                                    GoogleFonts.squadaOne(color: Colors.black)),
                            actions: <Widget>[
                              new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text(
                                    "close",
                                    style: GoogleFonts.squadaOne(
                                      color: Colors.blue,
                                    ),
                                  ))
                            ],
                          );
                        });
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "Size",
                        style: GoogleFonts.squadaOne(color: Colors.white),
                      )),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              //=================the color button============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Color",
                                style: GoogleFonts.squadaOne(
                                    color: Colors.black, fontSize: 20)),
                            content: new Text("Choose the color",
                                style:
                                    GoogleFonts.squadaOne(color: Colors.black)),
                            actions: <Widget>[
                              new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text(
                                    "close",
                                    style: GoogleFonts.squadaOne(
                                      color: Colors.blue,
                                    ),
                                  ))
                            ],
                          );
                        });
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "Color",
                        style: GoogleFonts.squadaOne(color: Colors.white),
                      )),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              //====================Qty button=====================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Qty",
                                style: GoogleFonts.squadaOne(
                                    color: Colors.black, fontSize: 20)),
                            content: new Text("Choose the quantity",
                                style:
                                    GoogleFonts.squadaOne(color: Colors.black)),
                            actions: <Widget>[
                              new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text(
                                    "close",
                                    style: GoogleFonts.squadaOne(
                                      color: Colors.blue,
                                    ),
                                  ))
                            ],
                          );
                        });
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "Qty",
                        style: GoogleFonts.squadaOne(color: Colors.white),
                      )),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //            ================the Second buttons============

          Row(
            children: <Widget>[
              //      ============the size button============
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    textColor: Colors.white,
                    elevation: 0.1,
                    child: new Text("Buy now",
                        style: GoogleFonts.squadaOne(color: Colors.white,fontSize: 20))),
              ),

              new IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
            ],
          ),

          Divider(),

          new ListTile(
            title: new Text("Product details",
                style:
                    GoogleFonts.squadaOne(color: Colors.black, fontSize: 20)),
            subtitle: new Text(
                "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: GoogleFonts.squadaOne(color: Colors.black45)),
          ),
          Divider(),

          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product name : ",
                  style: GoogleFonts.squadaOne(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(
                  widget.product_detail_name,
                  style: GoogleFonts.squadaOne(color: Colors.black),
                ),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product brand : ",
                  style: GoogleFonts.squadaOne(color: Colors.grey),
                ),
              ),
              //=================================remeber to create the product brand=======================
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(
                  "Brand X",
                  style: GoogleFonts.squadaOne(color: Colors.black),
                ),
              )
            ],
          ),

          //============================remember to add condition field for the product===========================
          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product condition : ",
                  style: GoogleFonts.squadaOne(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(
                  "NEW",
                  style: GoogleFonts.squadaOne(color: Colors.black),
                ),
              )
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products",
                style: GoogleFonts.squadaOne(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0)),
          ),

          //SIMILAR PRODUCT SELECTION
          new Container(
            height: 340.0,
            child: Simular_products(),
          )
        ],
      ),
    );
  }
}

class Simular_products extends StatefulWidget {
  @override
  _Simular_productsState createState() => _Simular_productsState();
}

class _Simular_productsState extends State<Simular_products> {
  var product_list = [
    {
      "name": " Purple Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 420,
      "price": 350,
    },
    {
      "name": "Red Hills",
      "picture": "images/products/hills2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Black Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Grey Pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 85,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Simular_Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_oldprice: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Simular_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  Simular_Single_prod(
      {this.prod_name, this.prod_picture, this.prod_oldprice, this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  //this is where i am passing the values of the product to product_details page
                  builder: (context) => new ProductDetails(
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_oldprice,
                        product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white,
                      child: new Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text(
                              prod_name,
                              style: GoogleFonts.squadaOne(
                                  color: Colors.black, fontSize: 16),
                            ),
                          ),
                          new Text(
                            "\R${prod_price}",
                            style: GoogleFonts.squadaOne(
                                color: Colors.green, fontSize: 16),
                          )
                        ],
                      )),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
