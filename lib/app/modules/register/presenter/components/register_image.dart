import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pcm_vibra/app/modules/register/bloc/register_bloc.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:ionicons/ionicons.dart';

Widget image(BuildContext context) {
  // ignore: close_sinks
  final bloc = BlocProvider.of<RegisterBloc>(context);
  return BlocBuilder<RegisterBloc, RegisterState>(builder: (_, state) {
    if (state is EditingState) {
      if (state.users.imagem != null) {
        return GestureDetector(
          onTap: () => bloc.add(GetImage()),
          child: (UniversalPlatform.isWeb)
              ? Container(
                  height: 120,
                  width: 120,
                  child: CircleAvatar(
                      backgroundImage: MemoryImage(state.users.imagem)))
              : Container(
                  height: 120,
                  width: 120,
                  child: CircleAvatar(
                    backgroundImage: MemoryImage(state.users.imagem),
                  )),
        );
      } else {
        return GestureDetector(
          onTap: () => bloc.add(GetImage()),
          child: Center(
            child: CircleAvatar(
                radius: 41,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Icon(
                      Ionicons.person,
                      size: 40,
                      color: Colors.grey,
                    ))),
          ),
        );
      }
    } else {
      return Center(
        child: CircleAvatar(
            radius: 41,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
                child: Icon(
                  Ionicons.person,
                  size: 40,
                  color: Colors.grey,
                ))),
      );
    }
  });
}
