import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pcm_vibra/app/modules/quadros/bloc/quadros_bloc.dart';

class ListQuadros extends StatefulWidget {
  @override
  _ListQuadrosState createState() => _ListQuadrosState();
}

class _ListQuadrosState extends State<ListQuadros> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuadrosBloc, QuadrosState>(
      builder: (context, state) {
        return Container();
      },
    );
  }
}
