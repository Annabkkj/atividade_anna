import 'package:flutter/material.dart';
import '../styles/appbar_styles.dart';

class AppBarPage extends StatelessWidget{
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppbarStyles.corFundo,
        elevation: 4,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu, color: AppbarStyles.corIcone),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text(" Icone de meu tocado")),

            );
          },
        ),
        title: Text(" Exemplo AppBar", style: AppbarStyles.textoTitulo),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: AppbarStyles.corIcone),
            onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text(" Buscar tocada")),
                );
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite, color: AppbarStyles.corIcone),
            onPressed:() {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text(" Favorito tocando")),
              );
            },
          ),
        ],

      ),
      body: const Center(child: Text(" Conteúdo Tela")),
    );
  }
}