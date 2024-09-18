import 'package:flutter/material.dart';
import 'package:prof_whatsapp_ui/colors.dart';
import 'package:prof_whatsapp_ui/widgets/chat_list.dart';
import 'package:prof_whatsapp_ui/widgets/contact_list.dart';
import 'package:prof_whatsapp_ui/widgets/web_chat_appbar.dart';
import 'package:prof_whatsapp_ui/widgets/web_profile_bar.dart';
import 'package:prof_whatsapp_ui/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.077,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/dara.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const WebChatAppBar(),
                const Expanded(
                  child: ChatList(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.077,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                        color: dividerColor,
                      )),
                      color: chatBarMessage),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.emoji_emotions_outlined, size: 12),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          size: 12,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 12,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: chatBarMessage,
                              hintText: 'Type a message',
                              hintStyle: const TextStyle(
                                fontSize: 12,
                                color: Colors.white60,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding: const EdgeInsets.all(14),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: Colors.white60,
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
