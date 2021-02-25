import 'package:flutter/material.dart';
import 'package:pcm_vibra/app/modules/quadros/bloc/quadros_bloc.dart';
import 'package:pcm_vibra/app/ui/forms_ui.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
Widget searchBar(BuildContext context){
  // ignore: close_sinks
    final bloc = context.read<QuadrosBloc>();
  return AppBar(
    title: forms(
      field: 'Pesquise pelo nome',
       onChanged: (String field) => bloc.add(SearchQuadros(search: field))),
    );
}