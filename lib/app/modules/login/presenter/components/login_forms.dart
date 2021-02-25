import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pcm_vibra/app/modules/login/bloc/login_bloc.dart';
import 'package:pcm_vibra/app/ui/forms_ui.dart';
class LoginForms extends StatefulWidget {
  @override
  _LoginFormsState createState() => _LoginFormsState();
}

class _LoginFormsState extends State<LoginForms> {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        print(state);
        if (state is EditingState) {
          return formsW(state.login.emailError, state.login.senhaError);
        } else {
          return formsW('', '');
        }
      },
    );
  }

  Widget formsW(String errorEmail, String errorSenha) {
    // ignore: close_sinks
    final bloc = context.read<LoginBloc>();
    return Column(
      children: [
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
