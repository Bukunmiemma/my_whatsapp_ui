import 'package:flutter/material.dart';
import 'package:prof_whatsapp_ui/colors.dart';
import 'package:prof_whatsapp_ui/screen/info.dart';
import 'package:prof_whatsapp_ui/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg',
              ),
              radius: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Text(
              info[3]['name'].toString(),
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/dara.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const ChatList(),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: chatBarMessage,
              prefixIcon: const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 7),
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.white54,
                  size: 12,
                ),
              ),
              hintText: 'Type a message',
              hintStyle: const TextStyle(
                fontSize: 12,
                color: Colors.white60,
              ),
              suffixIcon: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Icon(
                      Icons.attach_file,
                      color: Colors.white54,
                      size: 12,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white54,
                      size: 12,
                    ),
                  ),
                ],
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.all(9),
            ),
          ),
        ],
      ),
    );
  }
}
