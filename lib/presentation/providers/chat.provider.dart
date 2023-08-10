import 'package:flutter/cupertino.dart';

import '../../config/helpers/get_yes_no_answer.dart';
import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: "Hola amor", fromWho: FromWho.me),
    Message(text: "Ya regresaste del trabajo?", fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    // Validar que el texto no venga vacio
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    // Evaluar si el mensaje termina con un signo de interrogación
    if (text.endsWith("?")) {
      // Obtener mensaje de "ella"
      await herReply();
    }

    // Notificar a todos los que estan escuchando, sobre el cambio
    notifyListeners();
    // Mover al final el scroll y notificar.
    moveScrollToBottom();
  }

  // Función para mover el scroll de la pantalla al final de la pantalla.
  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    // Notificar a todos los que estan escuchando
    chatScrollController.animateTo(
        // posición a la que se moverá el scroll de la pantalla
        chatScrollController.position.maxScrollExtent,
        // duración de la animación
        duration: const Duration(milliseconds: 300),
        // tipo de curva de la animación
        curve: Curves.easeOut);
  }

  // Obtener el mensaje de "ella" desde la API.
  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getYesNoAnswer();
    messageList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }
}
