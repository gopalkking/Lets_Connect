
import 'package:flutter/material.dart';
import 'package:lets_connect/components/user_tile.dart';
import 'package:lets_connect/pages/chat_page.dart';
import 'package:lets_connect/services/auth/auth_service.dart';
import 'package:lets_connect/components/my_drawer.dart';
import 'package:lets_connect/services/chat/chat_service.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});
 final ChatService _chatService = ChatService();
 final AuthService _authService =AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      
      ),
      drawer: const MyDrawer(),
      body: _buildUserList(),
    );
  }
  
  //build a list of users except for the current logged in  user 
Widget _buildUserList(){
  return StreamBuilder(
    stream: _chatService.getUsersStream(),
    builder: (context,snapshot){
    //error
    if (snapshot.hasError) {
      return const Text("Error");
    }

    //loading..
    if (snapshot.connectionState == ConnectionState.waiting) {
    return const Text("Loading..");      
    }

    //return list view
    return ListView(
      children: snapshot.data!.map<Widget>((userData) => _buildUserListItem(userData,context),).toList(),
    );
    },
    );

}
//build invidual list tile for user
Widget _buildUserListItem(Map<String,dynamic> userData,BuildContext context){
   return UserTile(
    text: userData["email"],
    onTap: (){
      // tapped on a user -> go to chat
      Navigator.push(context,MaterialPageRoute(builder: (context) => ChatPage(
        receiverEmail: userData["email"],
      ),));
    },
   );
}

  

}

