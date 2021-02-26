import 'package:flutter/material.dart';
import 'package:pcm_vibra/app/modules/quadros/bloc/quadros_bloc.dart';
import 'package:pcm_vibra/app/modules/quadros/infra/models/quadros_model.dart';
import 'package:pcm_vibra/app/modules/quadros/presenter/components/listQuadros.dart';
import 'package:pcm_vibra/app/modules/quadros/presenter/components/search_bar.dart';
import 'package:pcm_vibra/app/ui/theme/theme.dart';

class QuadrosPage extends StatefulWidget {
  @override
  _QuadrosPageState createState() => _QuadrosPageState();
}

class _QuadrosPageState extends State<QuadrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secundary,
        appBar: searchBar(context),
        body: Column(
          children: [
            SizedBox(height: 10.0),
            Expanded(
              child: ListQuadros(),
            ),
          ],
        ));
  }
}
