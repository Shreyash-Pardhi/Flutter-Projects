// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes/services/auth/auth_exceptions.dart';
import 'package:mynotes/services/auth/bloc/auth_bloc.dart';
import 'package:mynotes/services/auth/bloc/auth_event.dart';
import 'package:mynotes/services/auth/bloc/auth_state.dart';
import 'package:mynotes/utilities/dialogs/error_dialog.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _pass;

  @override
  void initState() {
    _email = TextEditingController();
    _pass = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state is AuthStateRegistering) {
          if (state.exception is WeakPasswordAuthException) {
            await showErrorDialog(context, 'Weak Password');
          } else if (state.exception is ChannelErrorAuthException) {
            await showErrorDialog(
                context, 'Please enter both Email and Password');
          } else if (state.exception is EmailAlreadyInUseAuthException) {
            await showErrorDialog(
                context, 'Email is already in use, Please use another Email');
          } else if (state.exception is InvalidEmailAuthException) {
            await showErrorDialog(context, 'This is an invalid email address');
          } else if (state.exception is GenericAuthException) {
            await showErrorDialog(context, 'Registration is Failed');
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: _email,
                enableSuggestions: false,
                autocorrect: false,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Enter Email',
                ),
              ),
              TextField(
                controller: _pass,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                  hintText: 'Enter Password',
                ),
              ),
              TextButton(
                onPressed: () async {
                  final email = _email.text;
                  final pass = _pass.text;
                  context.read<AuthBloc>().add(
                        AuthEventRegister(
                          email,
                          pass,
                        ),
                      );
                },
                child: const Text('Register'),
              ),
              TextButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(
                          const AuthEventLogout(),
                        );
                  },
                  child: const Text('Already Registered? Login Here!')),
            ],
          ),
        ),
      ),
    );
  }
}
