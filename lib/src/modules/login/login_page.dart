import 'package:dw10_modular/src/modules/core/ui/helpers/size_extensions.dart';
import 'package:dw10_modular/src/modules/core/ui/styles/colors_app.dart';
import 'package:dw10_modular/src/modules/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenShortesSide = context.screenShortestSide;
    final screenWidth = context.screenWidth;
    return Scaffold(
      backgroundColor: context.colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenShortesSide * .5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/lanche.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: screenShortesSide * .5,
            padding: EdgeInsets.only(top: context.percentHeight(10)),
            child: Image.asset('assets/images/logo.png'),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: context.percentWidth(
                  screenWidth < 1300 ? .7 : .3,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FractionallySizedBox(
                        widthFactor: .3,
                        child: Image.asset('assets/images/logo.png')),
                    const SizedBox(
                      height: 20,
                    ),
                    FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Login",
                          style: context.textStyles.textTitle,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'E-mail'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Senha'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text('Entrar')))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
////
//
/*
import 'package:flutter/material.dart';

import '../core/ui/ui_dependecies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        showLoader();
        await Future.delayed(const Duration(seconds: 2));
        hideLoader();

        showError('Erro de alguma coisa');
      }),
      body: Container(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Login'),
                ),
              ),
              SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Texto Extra bold',
                    style: context.textStyles.textBold,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
*/