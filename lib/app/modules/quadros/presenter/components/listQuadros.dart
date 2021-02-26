import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pcm_vibra/app/modules/quadros/bloc/quadros_bloc.dart';
import 'package:pcm_vibra/app/modules/quadros/infra/models/quadros_model.dart';
import 'package:pcm_vibra/app/modules/quadros/presenter/components/list.dart';
import 'package:pcm_vibra/app/ui/theme/theme.dart';

class ListQuadros extends StatefulWidget {
  @override
  _ListQuadrosState createState() => _ListQuadrosState();
}

class _ListQuadrosState extends State<ListQuadros> {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final bloc = context.read<QuadrosBloc>();
    return BlocBuilder<QuadrosBloc, QuadrosState>(
      builder: (_, state) {
        if (state is LoadingState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is QuadrosInitial) {
          bloc.add(GetQuadros());
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: primary,
            ),
          );
        } else if (state is FullState) {
          return ListA(quadros: state.items);
        } else if (state is SearchState) {
          return ListA(quadros: state.searchItems);
        }
      },
    );
  }
}
