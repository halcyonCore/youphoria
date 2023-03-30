import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:youphoria/chat/chat_model.dart';
import 'package:youphoria/chat/chat_widget.dart';
import 'package:youphoria/services/api_services.dart';
import 'dart:developer';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _isTyping = false;

  late TextEditingController textEditingController;
  late FocusNode focusNode;
  late ScrollController _listScrollController;
  @override
  void initState() {
    textEditingController = TextEditingController();
    focusNode = FocusNode();
    _listScrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _listScrollController.dispose();
    textEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  List<ChatModel> chatList = [
    ChatModel(
        message:
            "Hey there! I'm your friendly AI chatbot, ready to help with any sex ed questions you may have. Don't worry, you're not talking to a person, so feel free to ask anything in total privacy. \n\nJust type your question, and I'll do my best to help! 😊",
        chatIndex: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.onBackground,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(40),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: true,
        title: Text(
          'Chat',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
              ),
              color: Theme.of(context).colorScheme.background,
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Flexible(
                  child: ListView.builder(
                    controller: _listScrollController,
                    itemCount: chatList.length,
                    itemBuilder: (context, index) {
                      return ChatWidget(
                        messsage: chatList[index].message,
                        index: chatList[index].chatIndex,
                      );
                    },
                  ),
                ),
                if (_isTyping) ...[
                  SpinKitThreeBounce(
                    color: Theme.of(context).colorScheme.primary,
                    size: 18,
                  ),
                ],
                const SizedBox(height: 15),
                Container(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            focusNode: focusNode,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                            controller: textEditingController,
                            onSubmitted: (value) async {
                              await _sendMessage(textEditingController.text);
                            },
                            decoration: InputDecoration.collapsed(
                              hintText: 'Ask me anything...',
                              hintStyle: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await _sendMessage(textEditingController.text);
                          },
                          icon: Icon(
                            Icons.send,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void scrollListToEnd() {
    _listScrollController.animateTo(
      _listScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  Future<void> _sendMessage(String message) async {
    try {
      String msg = textEditingController.text;
      setState(
        () {
          _isTyping = true;
          chatList.add(
            ChatModel(
              message: message,
              chatIndex: 0,
            ),
          );
          textEditingController.clear();
          focusNode.unfocus();
        },
      );
      chatList.addAll(
        await ApiService.sendMessage(message: msg),
      );

      setState(() {});
    } catch (error) {
      log("error $error");
    } finally {
      scrollListToEnd();
      setState(() {
        _isTyping = false;
      });
    }
  }
}
