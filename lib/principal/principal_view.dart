import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:majesticons_flutter/majesticons_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({Key? key}) : super(key: key);

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Principal'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCupertinoModalBottomSheet(
            enableDrag: false,
            isDismissible: false,
            expand: true,
            context: context,
            builder: (context) {
              final _formKey = GlobalKey<FormState>();
              return Material(
                child: Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    iconTheme: const IconThemeData(color: Colors.black),
                  ),
                  body: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/boxes.png',
                              height: 100,
                              width: 100,
                            ),
                            const ListTile(
                              title: Text('Olá!'),
                              subtitle: Text('Adicone sua encomenda para continuar'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(hintText: 'Código'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(hintText: 'Descrição'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Majesticon(Majesticon.boxLine),
      ),
    );
  }
}
