import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pcm_vibra/app/modules/quadros/bloc/quadros_bloc.dart';
import 'package:pcm_vibra/app/ui/forms_ui.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

Widget searchBar(BuildContext context) {
  // ignore: close_sinks
  final bloc = context.read<QuadrosBloc>();
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: BlocBuilder<QuadrosBloc, QuadrosState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24, top: 12),
          child: forms(
              action: TextInputAction.search,
              icon: Ionicons.search_outline,
              field: 'Pesquise pelo nome',
              onChanged: (String value) =>
                  bloc.add(SearchQuadros(search: value))),
        );
      },
    ),
  );
}
