import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xFF25A0DE),
            height: 120.0,
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.bottomCenter,
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
                      Navigator.pop(context, 'Back to Home');
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
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.black12,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                title: TextField(
                ),
                trailing: IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.blue,
                  disabledColor: Colors.grey,
                  onPressed: ()=> print('Kirim'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
