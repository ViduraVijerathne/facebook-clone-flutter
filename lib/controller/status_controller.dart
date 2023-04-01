

import '../modals/status_modal.dart';

class StatusController{
  
  static List<OneStatusModal> oneStatus = [
    OneStatusModal(id: "1", image: 'https://images.pexels.com/photos/15476395/pexels-photo-15476395.jpeg', caption: "Sketing..."),
    OneStatusModal(id: "2", image: 'https://images.pexels.com/photos/15173121/pexels-photo-15173121.jpeg', caption: "Home"),
    OneStatusModal(id: "3", image: 'https://images.pexels.com/photos/13754489/pexels-photo-13754489.jpeg', caption: "Hellow")
    
    
  ];
  
  List<StatusModal> status = [
    StatusModal(id: "1", name: "Sahan Sandeepa", profile: 'https://randomuser.me/api/portraits/women/12.jpg', status:oneStatus),
    StatusModal(id: "2", name: "Kavinda Mahesh", profile: 'https://randomuser.me/api/portraits/women/13.jpg', status: oneStatus),
    StatusModal(id: "3", name: "Anuradha Herath", profile: 'https://randomuser.me/api/portraits/women/14.jpg', status: oneStatus),
    StatusModal(id: "4", name: "Herath Mudiyanse", profile: 'https://randomuser.me/api/portraits/women/15.jpg', status: oneStatus)
    
  ];
}