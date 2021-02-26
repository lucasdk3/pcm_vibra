import 'package:flutter/material.dart';
import 'package:pcm_vibra/app/modules/quadros/bloc/quadros_bloc.dart';
import 'package:pcm_vibra/app/modules/quadros/infra/models/quadros_model.dart';
import 'package:pcm_vibra/app/ui/theme/theme.dart';

class ListA extends StatelessWidget {
  final List<QuadroModel> quadros;

  const ListA({Key key, this.quadros}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: quadros
            .map(
              (entry) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: primary, borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    key: ValueKey(entry.id),
                    title: Text(entry.equipamento,
                        style: TextStyle(color: Colors.white)),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'ccm: ${entry.ccm}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text('porta: ${entry.ccm}',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList());
  }
}
