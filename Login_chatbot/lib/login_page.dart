import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controladores para os campos de entrada (nome e senha)
  final TextEditingController _nomeUsuarioController = TextEditingController();
  final TextEditingController _senhaUsuarioController = TextEditingController();

  // Variável que simula mensagem de erro
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bem vindo ao Chat Bot!'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: const Color(0xffa6c7ff),
      body: Padding(
        // Criando um padding de 16px
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // Centralizando os widgets
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Campo de entrada para o nome do usuário
            TextField(
              controller: _nomeUsuarioController,
              decoration: const InputDecoration(
                // Indicando ao usuário o que deve ser digitado
                labelText: 'Usuário',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Campo de entrada para a senha do usuário
            TextField(
              controller: _senhaUsuarioController,
              obscureText: true, // Ocultando o texto
              decoration: const InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Exibindo mensagem em caso de erro
            if (errorMessage != null)
              Text(
                errorMessage!,
                style: const TextStyle(color: Colors.red),
              ),
            const SizedBox(height: 20),

            // Botão de login
            ElevatedButton(
              onPressed: _handleLogin, // Chamando função quando pressionado
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }

  // Função de validação dos dados
  void _handleLogin() {
    final nomeUsuario = _nomeUsuarioController.text;
    final senha = _senhaUsuarioController.text;

    // Validação simples
    setState(() {
      if (nomeUsuario.isEmpty || senha.isEmpty) {
        errorMessage = 'Por favor, preencha todos os campos';
      } else {
        errorMessage = null;
        // Navegar para a página do chatbot
        Navigator.pushNamed(context, '/chat');
      }
    });
  }
}
