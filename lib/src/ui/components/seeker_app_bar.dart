import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space/src/core/models/cart.dart';
import 'package:space/src/ui/seeker/screens/cart_screen.dart';

import 'badge.dart';


class SeekerAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      snap: true,
      forceElevated: true,
      centerTitle: true,
      title: SizedBox(
        child: Image.asset('assets/logo_vertical.png'),
        height: 30,
      ),
      actions: <Widget>[
        Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
                  child: ch,
                  value: cart.itemCount.toString(),
                ),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          ),
      ],
      bottom: TabBar(
        indicatorColor: Colors.yellow[700],
        labelColor: Colors.yellow[700],
        labelStyle: TextStyle(fontSize: 14, color: Colors.yellow[700]),
        unselectedLabelStyle: TextStyle(color: Color(0xff000000)),
        tabs: <Widget>[
            Tab(text: 'New'),  
            Tab(text: 'Applied'),
            Tab(text: 'Saved'),
          ],
      ),
    );
  }
}
