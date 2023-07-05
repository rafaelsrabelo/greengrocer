import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/sign_up_screen.dart';
import 'package:greengrocer/src/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Cadastro',
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 40),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(45))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomTextiField(icon: Icons.email, label: 'Email'),
                        const CustomTextiField(
                          icon: Icons.password,
                          label: 'Senha',
                          isSecret: true,
                        ),
                        CustomTextiField(icon: Icons.person, label: 'Nome'),
                        CustomTextiField(icon: Icons.phone, label: 'Telefone'),
                        CustomTextiField(
                            icon: Icons.file_copy_outlined, label: 'CPF'),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.blue, // Defina a cor desejada aqui
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18))),
                              onPressed: () {},
                              child: const Text(
                                'Cadastrar Usuário',
                                style: TextStyle(fontSize: 18),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
