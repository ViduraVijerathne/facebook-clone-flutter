import 'dart:convert';

import '../modals/notification_modals.dart';
import 'package:http/http.dart' as http;
class NotificationController{

  //  List<NotificationModal> notifications = [
  //   NotificationModal(id: "1", name: "Saman Saman", notification: "Like you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/1.jpg',mode: 'LIKE',isNew:1),
  //
  // ];

   Future<List<NotificationModal>> getNofitication() async {
     final response = await http.get(Uri.parse('http://192.168.8.171/api/flutter/index.php?json=getNotification'));
     final json = jsonDecode(response.body);

     final List<NotificationModal> notifications = [];

     for (var notificationData in json) {
       final notification = NotificationModal(
         id: notificationData['id'].toString(),
         name: notificationData['name'],
         notification: notificationData['notification'],
         mode: notificationData['mode'],
         isNew: notificationData['isNew'].toString(),
         profile: notificationData['profile'],
         time: notificationData['time'],

       );
       notifications.add(notification);
     }




     return notifications;

   }

}
//
// NotificationModal(id: "2", name: "Kasun kumara", notification: "Comment you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/2.jpg',mode: 'COMMENT',isNew:0),
// NotificationModal(id: "3", name: "Arusha Dilshan", notification: "Like you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/3.jpg',mode: 'LIKE',isNew:1),
// NotificationModal(id: "4", name: "Gotaimbara", notification: "Like you Your Photo", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/4.jpg',mode: 'LIKE',isNew:1),
// NotificationModal(id: "5", name: "Mahinda Rajapaksha", notification: "Comment you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/5.jpg',mode: 'COMMENT',isNew:0),
// NotificationModal(id: "6", name: "K.K Saman", notification: "Like you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/6.jpg',mode: 'LIKE',isNew:1),
// NotificationModal(id: "7", name: "Saman Edirimuni", notification: "Like you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/7.jpg',mode: 'LIKE',isNew:1),
// NotificationModal(id: "8", name: "Sumanga pradeep", notification: "Like you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/8.jpg',mode: 'LIKE',isNew:1),
// NotificationModal(id: "9", name: "Kavinda mahesh", notification: "Like you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/9.jpg',mode: 'LIKE',isNew:0),
// NotificationModal(id: "10", name: "Saman Saman", notification: "Like you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/10.jpg',mode: 'LIKE',isNew:1),
// NotificationModal(id: "11", name: "Saman Saman", notification: "Like you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/11.jpg',mode: 'LIKE',isNew:1),
// NotificationModal(id: "12", name: "Saman Saman", notification: "Like you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/12.jpg',mode: 'LIKE',isNew:0),
// NotificationModal(id: "13", name: "Saman Saman", notification: "Like you Shered", time: "10 min ago", profile: 'https://randomuser.me/api/portraits/women/13.jpg',mode: 'LIKE',isNew:1),
