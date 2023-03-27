import 'dart:convert';
import 'dart:io';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:youphoria/chat/chat_model.dart';

final String BASE_URL = 'https://api.openai.com/v1/chat';

class ApiService {
  static Future<List<ChatModel>> sendMessage({required String message}) async {
    await dotenv.load();
    final OPENAI_API_KEY = dotenv.env['OPENAI_API_KEY']!;
    try {
      var response = await http.post(
        Uri.parse("$BASE_URL/completions"),
        headers: {
          "Authorization": "Bearer $OPENAI_API_KEY",
          "Content-Type": "application/json",
        },
        body: jsonEncode(
          {
            "model": "gpt-3.5-turbo",
            "messages": [
              {"role": "user", "content": message}
            ],
            "temperature": 0.9,
            "max_tokens": 180,
          },
        ),
      );
      Map jsonResponse = jsonDecode(response.body);

      if (jsonResponse['error'] != null) {
        throw HttpException(jsonResponse['error']['message']);
      }
      List<ChatModel> chatList = [];
      if (jsonResponse['choices'].length > 0) {
        print(
            "jsonResponse[choices][message]content: ${jsonResponse["choices"][0]["message"]["content"]}");
        chatList = List.generate(
          jsonResponse['choices'].length,
          (index) => ChatModel(
            message: jsonResponse['choices'][index]["message"]["content"],
            chatIndex: 1,
          ),
        );
      }
      return chatList;
    } catch (error) {
      log("error $error");
      rethrow;
    }
  }
}
