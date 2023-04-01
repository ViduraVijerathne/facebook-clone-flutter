import 'package:facebook/components/friend_request_comp.dart';
import 'package:flutter/material.dart';

import '../controller/friends_request_controller.dart';
class Tab_Friends_Screen extends StatelessWidget {
  const Tab_Friends_Screen({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    final FriendsRequestController friendsRequestController = FriendsRequestController();


    return ListView.builder(
      itemCount: friendsRequestController.frendsRequest.length,

      itemBuilder: (context, index) {
        return FriendRequest(friendRequestModal:friendsRequestController.frendsRequest[index],);
      },
    );
  }
}
