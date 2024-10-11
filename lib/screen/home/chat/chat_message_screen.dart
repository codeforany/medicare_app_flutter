import 'package:flutter/material.dart';
import 'package:medicare/common/color_extension.dart';

class ChatMessageScreen extends StatefulWidget {
  const ChatMessageScreen({super.key});

  @override
  State<ChatMessageScreen> createState() => _ChatMessageScreenState();
}

class _ChatMessageScreenState extends State<ChatMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.primary,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.close,
              color: TColor.primaryText,
            )),
        title: Row(
          children: [
            Text(
              "Dr. Manish Chutake",
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: TColor.green,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: TColor.primary,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.video_call,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          itemBuilder: (context, index) {
            var isSenderMessage = index % 3 == 0;

            return Row(
              mainAxisAlignment: isSenderMessage
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!isSenderMessage)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/img/u1.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),

                  constraints: BoxConstraints(
                    maxWidth: context.width * 0.7
                  ),
                  decoration: BoxDecoration(
                    color: isSenderMessage
                        ? const Color(0xffF5F5F5)
                        : TColor.primary,
                    borderRadius: isSenderMessage
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          )
                        : const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                  ),
                  child: Text(
                    "Hi  Doctor, as per discussion Plz gave me medicine on my Fever and reaction on skin.",
                    style: TextStyle(
                      color:
                          isSenderMessage ? TColor.primaryText : Colors.white,
                    ),
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 8,
          ),
          itemCount: 20,
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: TColor.primary,
        ),
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff647EE6),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.attach_file,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints(maxHeight: 100.0),
                    child: TextField(
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                      maxLines: null,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Type something ...",
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14)),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 25,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
