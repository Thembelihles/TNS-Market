import 'package:flutter/material.dart';
import 'package:tsnmarket/pages/product_details.dart';
import 'package:google_fonts/google_fonts.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 599,
      "price": 450,
    },

    {
      "name": "Black Biker Jacket",
      "picture": "images/products/jackets/prod5137538_1.jpg",
      "old_price": 1300,
      "price": 1150,
    },
    {
      "name": "Brown Check Jacket",
      "picture": "images/products/jackets/prod7022346_1.jpg",
      "old_price": 1700,
      "price": 1599,
    },
    {
      "name": "Tan Notch Coat",
      "picture": "images/products/jackets/prod7026045_1.jpg",
      "old_price": 1300,
      "price": 1250,
    },
    {
      "name": "Charcoal Coat",
      "picture": "images/products/jackets/prod5137538_1.jpg",
      "old_price": 1500,
      "price": 1399,
    },
    {
      "name": "Caramel Parka Jacket",
      "picture": "images/products/jackets/prod7114875_1.jpg",
      "old_price": 1000,
      "price": 899,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 250,
      "price": 150,
    },
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
      "price": 100,
    },

    {
      "name": "Black Blocked Sweat",
      "picture": "images/products/Tops/prod7108733_1.jpg",
      "old_price": 450,
      "price": 440,
    },
    {
      "name": "Black Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 120,
      "price": 110,
    },
    {
      "name": "White V-Neck Tee",
      "picture": "images/products/Tops/prod5881396_1.jpg",
      "old_price": 350,
      "price": 299,
    },
    {
      "name": "Grey Pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "Grey Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 220,
      "price": 130,
    },
    {
      "name": "Mustard Turtle Neck",
      "picture": "images/products/Tops/prod7087830_1.jpg",
      "old_price": 250,
      "price": 250,
    },
    {
      "name": "Floral Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 230,
      "price": 120,
    },
    {
      "name": "Black Zip Tee",
      "picture": "images/products/Tops/prod5876628_1.jpg",
      "old_price": 400,
      "price": 299,
    },
    {
      "name": "Pink Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 350,
      "price": 300,
    },
    {
      "name": "Black Fitted Top",
      "picture": "images/products/Tops/prod7142496_1.jpg",
      "old_price": 600,
      "price": 525,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_oldprice: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  Single_prod(
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

                    child: new Row(children: <Widget>[
                      Expanded(child: new Text(prod_name,style: GoogleFonts.squadaOne(color: Colors.black,fontSize: 16),),
                      ),
                      new Text("\R${prod_price}",style: GoogleFonts.squadaOne(color: Colors.green,fontSize: 16),)
                    ],)
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}

