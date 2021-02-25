import 'package:flutter/material.dart';
import 'package:pcm_vibra/app/modules/quadros/presenter/components/listQuadros.dart';

import 'components/search_bar.dart';

class QuadrosPage extends StatefulWidget {
  @override
  _QuadrosPageState createState() => _QuadrosPageState();
}

class _QuadrosPageState extends State<QuadrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchBar(context),
      body: ListQuadros(),
    );
  }
}
