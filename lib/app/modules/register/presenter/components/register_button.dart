import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pcm_vibra/app/modules/register/bloc/register_bloc.dart';
import 'package:pcm_vibra/app/ui/buttons_ui.dart';

Widget registerButton(BuildContext context) {
  // ignore: close_sinks
  final bloc = BlocProvider.of<RegisterBloc>(context);
  return BlocBuilder<RegisterBloc, RegisterState>(
    builder: (context, state) {
      if (state is EditingState) {
        return (state.loading)
            ? CircularProgressIndicator()
            : Center(
                child: buttonUi(() {
                  if (state is EditingState) {
                    bloc.add(Register(users: state.users));
                  }
                }, 'Registrar'),
              );
      } else {
        return Container();
      }
    },
  );
}
