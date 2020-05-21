import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


//my imports
import 'package:tsnmarket/componets/cart_products.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.black,

        title: Text('Shopping Cart',style: GoogleFonts.squadaOne(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30.0)),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),

      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: new Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title:  new Text("Total:"),
              subtitle: new Text("\R230"),
            )),
            Expanded(
              child: new MaterialButton(onPressed:(){},
              child: new Text("Check Out", style: GoogleFonts.squadaOne(color: Colors.white,fontSize: 20)),
              color: Colors.black,),
            )
          ],
        ),
      ),
    );
  }
}
