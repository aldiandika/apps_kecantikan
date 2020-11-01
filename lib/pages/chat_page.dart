import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<MessageItem> items = List<MessageItem>();

  TextEditingController msgCon = TextEditingController();

  void sendMessage() {
    if (msgCon.text.isEmpty) {
      return;
    } else {
      setState(() {
        print(msgCon.text);
        items.insert(0, MessageItem('you', msgCon.text));
        items.insert(0, MessageItem('dr. Zara', msgCon.text));
      });
    }
    msgCon.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Appbar
          Container(
            height: 100.0,
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                color: Color(0xFF986756),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                )),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context, 'Back');
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 20.0,
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 50.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'dr. Zara S.Pk.',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'online',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Body
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.black12,
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: ListView.builder(
                  itemCount: items.length,
                  reverse: true,
                  itemBuilder: (context, index) {
                    MessageItem item = items[index];
                    return Container(
                      alignment: (item.user == 'you')
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: (item.user == 'you')
                                ? Color(0xFFE6BCA8)
                                : Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                item.user,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: (item.user == 'you')
                                      ? Colors.white
                                      : Color(0xFFE6BCA8), //0xFF25A0DE
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                item.content,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: (item.user == 'you')
                                      ? Colors.white
                                      : Color(0xFFE6BCA8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                title: TextField(
                  controller: msgCon,
                  cursorColor: Color(0xFF986756),
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                  ),
                ),
                trailing: IconButton(
                    icon: Icon(Icons.send),
                    color: Color(0xFF986756),
                    disabledColor: Colors.grey,
                    onPressed: sendMessage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MessageItem {
  String user;
  String content;

  MessageItem(this.user, this.content);
}
