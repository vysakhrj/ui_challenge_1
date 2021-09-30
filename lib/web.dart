import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Web extends StatefulWidget {
  const Web({
    Key? key,
    this.isMedium,
  }) : super(key: key);

  final bool? isMedium;

  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          _buildChatList(),
          _buildOpenedChat(),
        ],
      ),
    );
  }

  Expanded _buildChatList() {
    return Expanded(
        flex: widget.isMedium! ? 1 : 3,
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(width: 1, color: Colors.grey[300]!)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 8, right: 10, bottom: 15),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/images/neoito_logo.svg"),
                    const Spacer(),
                    const Text(
                      "NEOITO",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              TextFormField(
                cursorColor: Colors.deepOrange,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.deepOrange,
                    ),
                    hintStyle: TextStyle(fontSize: 15),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(25.0),
                    //   borderSide: BorderSide(
                    //     color: Colors.red,
                    //     width: 2.0,
                    //   ),
                    // ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    hintText: "Search your teammates"),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  removeTop: false,
                  context: context,
                  child: ListView.builder(
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        return Column(
                          children: const <Widget>[
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.deepOrange,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              ),
                              title: Text("First Name"),
                              subtitle: Text(
                                "The last message",
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Text(
                                "09:41pm",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Divider(
                              indent: 5,
                            ),
                          ],
                        );
                      }),
                ),
              )
            ],
          ),
        ));
  }

  Expanded _buildOpenedChat() {
    return Expanded(
      flex: widget.isMedium! ? 2 : 8,
      child: Column(
        children: <Widget>[_backGround()],
      ),
    );
  }

  Widget _appBar() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        margin: EdgeInsets.zero,
        child: Row(
          children: const <Widget>[
            CircleAvatar(
              backgroundColor: Colors.deepOrange,
              child: Icon(Icons.person),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text("User name"),
            ),
            Spacer(),
            Icon(Icons.search_rounded)
          ],
        ),
      ),
    );
  }

  Widget _backGround() {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/chat_background.svg",
              cacheColorFilter: true,
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.25,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Connect with your teamate to better understand them and  make work easy.",
            ),
          ],
        ),
      ),
    );
  }
}
