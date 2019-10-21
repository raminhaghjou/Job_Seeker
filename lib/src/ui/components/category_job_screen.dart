import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:space/src/ui/components/category_job.dart';

class CategoryScreen extends StatefulWidget {
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[CategoryJob()],
      ),
    );
  }
}
