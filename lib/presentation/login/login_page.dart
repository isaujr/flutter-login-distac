import 'package:flutter/material.dart';
import 'package:teste_flutter/constants/colors/AppColors.dart';
import 'package:teste_flutter/presentation/shared/inputs/button.dart';
import 'package:teste_flutter/presentation/shared/inputs/input_email_widget.dart';
import 'package:teste_flutter/presentation/shared/inputs/input_pass_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();
  final confirmationFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: size.height * 0.8,
          width: size.width * 0.3,
          decoration: const BoxDecoration(
            color: AppColors.hintGrey,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                child: Image.network('assets/imagens/logodistac.png'),
              ),
              const SizedBox(height: 40),
              InputEmailWidget(
                onChanged: (_) {},
                validator: (_) {},
                currentValue: '',
                nextFocusNode: confirmationFocus,
                focusNode: emailFocus,
              ),
              const SizedBox(height: 10),
              InputPassWidget(
                labelText: 'Password',
                onChanged: (_) {},
                validator: (_) {},
                currentValue: '',
                nextFocusNode: confirmationFocus,
                focusNode: passwordFocus,
              ),
              const SizedBox(height: 15),
              const Button(title: 'Acessar', background: AppColors.primaryColor),
              const SizedBox(height: 6),
              const Button(title: 'Primeiro Acesso', background: AppColors.hintGrey),
            ],
          ),
        ),
      ),
    );
  }
}
