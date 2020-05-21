import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:tsnmarket/componets/horizontal_listview.dart';
import 'package:tsnmarket/componets/Products.dart';
import 'package:tsnmarket/pages/cart.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
        height: 150.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [

            AssetImage('images/jackets.jpg'),
            AssetImage('images/c1.jpg'),
            AssetImage('images/Tops.jpg'),
            AssetImage('images/m1.jpeg'),
            AssetImage('images/Denime.jpg'),
            AssetImage('images/w4.jpeg'),
            AssetImage('images/hemisphere.jpg'),
            AssetImage('images/w3.jpeg'),
            AssetImage('images/m2.jpg'),

          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          dotColor: Colors.black12,
          dotIncreasedColor: Colors.black,
          indicatorBgPadding: 2.0,
          dotBgColor: Colors.transparent,

        )
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.black,

        title: Text('TSN Market',style: GoogleFonts.squadaOne(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30.0)),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> new Cart()));

              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Thembelihle Nhleko'),
              accountEmail: Text('nhlekothembelihle2@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.black
              ),
            ),
            //body




            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                trailing: new Icon(Icons.arrow_forward_ios,color: Colors.black),
                leading: Icon(Icons.home,color: Colors.black,),
              ), ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                trailing: new Icon(Icons.arrow_forward_ios,color: Colors.black),
                leading: Icon(Icons.person,color: Colors.black,),

              ), ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                trailing: new Icon(Icons.arrow_forward_ios,color: Colors.black),
                leading: Icon(Icons.shopping_basket,color: Colors.black,),
              ), ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart'),
                trailing: new Icon(Icons.arrow_forward_ios,color: Colors.black),
                leading: Icon(Icons.shopping_cart,color: Colors.black,),
              ), ),




            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                trailing: new Icon(Icons.arrow_forward_ios,color: Colors.black),
                leading: Icon(Icons.favorite,color: Colors.black,),
              ), ),



            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Store Locator'),
                trailing: new Icon(Icons.arrow_forward_ios,color: Colors.black),
                leading: Icon(Icons.location_on,color: Colors.black,),
              ), ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.black12,),
              ), ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.black12,),

              ), ),





          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('CATEGORIES',style: GoogleFonts.squadaOne(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20.0),)),),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
              child:
              Container(
                  alignment: Alignment.centerLeft,
                  child: new Text('RECENT PRODUCTS',style: GoogleFonts.squadaOne(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20.0),))),

          //GridView

          Flexible(child: Products()),
        ],
      ),

    );
  }
}
