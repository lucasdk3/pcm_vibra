import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pcm_vibra/app/modules/register/bloc/register_bloc.dart';
import 'package:pcm_vibra/app/modules/register/infra/register_entity.dart';
import 'package:pcm_vibra/app/ui/forms_ui.dart';

class RegisterForms extends StatefulWidget {
  @override
  _RegisterFormsState createState() => _RegisterFormsState();
}

class _RegisterFormsState extends State<RegisterForms> {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        print(state);
        if (state is EditingState) {
          var error = state.errors;
          return formsW(error.email, error.nome, error.senha, error.telefone);
        } else {
          return formsW('', '', '', '');
        }
      },
    );
  }

  Widget formsW(String errorEmail, String errorNome, String errorSenha,
      String errorTelefone) {
    // ignore: close_sinks
    final bloc = context.read<RegisterBloc>();
    return Column(
      children: [
        forms(
            field: 'Nome',
            error: errorNome != null ? errorNome : null,
            onChanged: (String field) => bloc.add(ChangeNome(nome: field))),
        forms(
            field: 'Email',
            type: TextInputType.emailAddress,
            error: errorEmail != null ? errorEmail : null,
            onChanged: (String field) => bloc.add(ChangeEmail(email: field))),
        forms(
            field: 'Senha',
            error: errorSenha != null ? errorSenha : null,
            onChanged: (String field) => bloc.add(ChangeSenha(senha: field)))
      ],
    );
  }
}
