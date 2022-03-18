import 'package:flutter/material.dart';
import 'package:practicas/Styles/colors_view.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text(
          'Recuperar contraseña',
          style: TextStyle(fontSize: 15),
        ),
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        actions: [
          Container(
            padding: const EdgeInsets.only(left: 0),
            height: 60,
            width: 90,
            child: Image.asset('assets/img/splash.png'),
          )
        ],
        backgroundColor: ColorSelect.txtBoHe,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 60, top: 50),
                padding: const EdgeInsets.only(right: 8.5),
                child: const Text(
                  'Ingresa tu email para recuperar tu contraseña',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: ColorSelect.txtBoSubHe),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(right: 210),
                child: const Text(
                  'Correo electrónico',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Email Adress',
                  ),
                  onChanged: (text) {},
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Ingrese su correo electronico registrado y le \nenviaremos un correo electrónico que contiene un \nenlace para restablecer su contraseña',
                  style: TextStyle(color: ColorSelect.txtBoSubHe, fontSize: 15),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 360),
                child: SizedBox(
                  width: size.width - 70,
                  height: 50,
                  child: ElevatedButton(
                      child: const Text(
                        'Enviar Solicitud',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: ColorSelect.splashColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
