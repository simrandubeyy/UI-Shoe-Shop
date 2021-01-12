import 'package:flutter/material.dart';

//my import

import 'package:shopapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  //create maps inside list usinng key values
  var product_list = [
    {
      "name": "Golden heels",
      "picture": "images/products/flats1.jpg",
      "old_price": 1000,
      "price": 700,
    },
    {
      "name": "Blue heels",
      "picture": "images/products/heels2.jpg",
      "old_price": 2500,
      "price": 2000,
    },
    {
      "name": "Nike Pink",
      "picture": "images/products/shoes102.jpg",
      "old_price": 2000,
      "price": 1800,
    },
    {
      "name": "Purple Sports",
      "picture": "images/products/snekars1.jpg",
      "old_price": 3000,
      "price": 2500,
    },
    {
      "name": "Red Hilfiger",
      "picture": "images/products/slippersboy.jpg",
      "old_price": 700,
      "price": 500,
    },
    {
      "name": "Girl Slippers",
      "picture": "images/products/slippers1.jpg",
      "old_price": 1000,
      "price": 800,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //here we are passing the values to the product details page Refer Product details
                builder: (context) => new ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          prod_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                      new Text(
                        "\₹${prod_price}",
                        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
