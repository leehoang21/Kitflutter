import 'package:auth_project/bloc/signup_bloc.dart';
import 'package:auth_project/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PressRules extends StatelessWidget {
  const PressRules({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        return Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              value: context.watch<SignupBloc>().state.isOKTermsOfUse,
              onChanged: (value) {
                context.read<SignupBloc>().add(PressTermsOfUse());
              },
            ),
            const Text('tôi đã đọc kĩ'),
            Ges(
              child: const Text(
                ' điều khoản',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              press: (context) {
                Navigator.pushNamed(context, Routes.rules);
              },
            ),
            const Text(' sử dụng'),
          ],
        );
      },
    );
  }
}
