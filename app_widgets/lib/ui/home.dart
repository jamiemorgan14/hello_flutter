import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepOrangeAccent,
        padding: EdgeInsets.only(top: 30.0, left: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Margherita',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Tomato, Mozzarella, Basil',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Marinara',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Tomato, Garlic',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
            PizzaImageWidget(),
            OrderButton(),
          ],

          // width: 192.0,
          // height: 96.0,
          // margin: EdgeInsets.only(left: 50.0)
        ),
      ),
    );
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/meltypizza.png');
    Image image = Image(image: pizzaAsset, width: 250.0, height: 250.0);
    return Container(
      child: image,
      padding: EdgeInsets.only(top: 20.0),
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order your Pizza!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
