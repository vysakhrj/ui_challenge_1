import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            _buildChatList(context),
          ],
        ),
      ),
    );
  }

  Expanded _buildChatList(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(width: 1, color: Colors.grey[300]!)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, top: 8, right: 10, bottom: 20),
              child: Row(
                children: [
                  SvgPicture.asset("assets/images/neoito_logo.svg"),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "NEOITO",
                    style: TextStyle(fontSize: 16),
                  ),
                  const Spacer(),
                  const Icon(Icons.search),
                ],
              ),
            ),
          ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //       border: InputBorder.none,
          //       icon: Icon(Icons.search),
          //       hintStyle: TextStyle(fontSize: 15),
          //       focusedBorder: InputBorder.none,
          //       contentPadding: EdgeInsets.symmetric(vertical: 5),
          //       hintText: "Search your teammates"),
          // ),
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
                          indent: 10,
                          endIndent: 10,
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
}
