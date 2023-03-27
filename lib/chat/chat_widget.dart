import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youphoria/chat/text_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatWidget extends StatefulWidget {
  final String messsage;
  final int index;
  late final AnimatedTextKit animatedTextKit; // Add this field

  ChatWidget({Key? key, required this.messsage, required this.index})
      : super(key: key) {
    // Initialize the animatedTextKit field in the constructor
    animatedTextKit = AnimatedTextKit(
      isRepeatingAnimation: false,
      repeatForever: false,
      displayFullTextOnTap: true,
      totalRepeatCount: 0,
      animatedTexts: [
        TyperAnimatedText(
          messsage.trim(),
        )
      ],
    );
  }

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: widget.index == 0
              ? const EdgeInsets.only(left: 30, right: 10)
              : const EdgeInsets.only(right: 30, left: 10),
          decoration: BoxDecoration(
            color: widget.index == 0
                ? Theme.of(context).colorScheme.primary.withOpacity(.3)
                : Theme.of(context).colorScheme.secondary.withOpacity(.3),
            borderRadius: widget.index == 0
                ? const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    widget.index == 1
                        ? const Padding(
                            padding: EdgeInsets.only(right: 8, left: 2),
                            child: Icon(
                              Icons.auto_awesome_outlined,
                              size: 25,
                            ),
                          )
                        : const SizedBox.shrink(),
                    Expanded(
                      child: widget.index == 0
                          ? TextWidget(
                              text: widget.messsage,
                            )
                          : Padding(
                              padding: const EdgeInsets.only(right: 14),
                              child: DefaultTextStyle(
                                style: TextStyle(
                                  fontFamily:
                                      GoogleFonts.comfortaa().fontFamily,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                ),
                                child: widget.animatedTextKit,
                              ),
                            ),
                    ),
                    widget.index == 0
                        ? const Padding(
                            padding: EdgeInsets.only(right: 2, left: 8),
                            child: Icon(
                              Icons.person_outlined,
                              size: 25,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
