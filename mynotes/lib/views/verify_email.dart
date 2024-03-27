import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes/services/auth/bloc/auth_bloc.dart';
import 'package:mynotes/services/auth/bloc/auth_event.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verify Email')),
      body: Column(children: [
        const Text(
            "we have sent you an email verification. please verify your email to continue"),
        const Text(
            "If you haven't received the verification email yet, press the button below"),
        TextButton(
          onPressed: () {
            context
                .read<AuthBloc>()
                .add(const AuthEventSendEmailVerification());
          },
          child: const Text('Verify Email'),
        ),
        TextButton(
          onPressed: () async {
            context.read<AuthBloc>().add(
                  const AuthEventLogout(),
                );
          },
          child: const Text('Cancel'),
        )
      ]),
    );
  }
}
