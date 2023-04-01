import 'package:facebook/modals/post_modals.dart';

class PostController {
  PostModal post1 = PostModal(
      id: '1',
      name: 'Vidura Vijerathne',
      time: "12 second ago",
      caption: "Hello World",
      profile: 'https://randomuser.me/api/portraits/women/12.jpg',
      image:
          "hhttps://images.pexels.com/photos/13754489/pexels-photo-13754489.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
      isLike: 0,
      likeCount: "500M");

  List<PostModal> posts = [
    PostModal(
        id: '1',
        name: 'Vidura Vijerathne',
        time: "12 second ago",
        caption: "Hello World",
        image:
            "https://images.pexels.com/photos/3754285/pexels-photo-3754285.jpeg",
        isLike: 1,
        profile: 'https://randomuser.me/api/portraits/women/12.jpg',
        likeCount: "500M"),
    PostModal(
        id: '2',
        name: 'Sahan Sandeepa',
        time: "12 second ago",
        caption: "Doing....",
        image:
            "https://images.pexels.com/photos/15464743/pexels-photo-15464743.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
        isLike: 0,
        profile: 'https://randomuser.me/api/portraits/women/13.jpg',
        likeCount: "500M"),
    PostModal(
        id: '3',
        name: 'Sasanka Deshan',
        time: "12 second ago",
        caption: "Vodka...",
        profile: 'https://randomuser.me/api/portraits/women/14.jpg',
        image:
            "https://images.pexels.com/photos/11001403/pexels-photo-11001403.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
        isLike: 0,
        likeCount: "500M"),
    PostModal(
        id: '4',
        name: 'Sasanka Madushan',
        time: "12 second ago",
        caption: "Nature...",
        profile: 'https://randomuser.me/api/portraits/women/15.jpg',
        image:
            "https://images.pexels.com/photos/12815070/pexels-photo-12815070.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
        isLike: 0,
        likeCount: "500M"),
    // PostModal(
    //     id: '5',
    //     name: 'Sasanka Madushan',
    //     time: "12 second ago",
    //     caption: "Hello World",
    //     profile: 'https://randomuser.me/api/portraits/women/16.jpg',
    //     image:
    //         "https://images.pexels.com/photos/16122628/pexels-photo-16122628.jpeg",
    //     isLike: 0,
    //     likeCount: "500M"),
    // PostModal(
    //     id: '6',
    //     name: 'Vidura Vijerathne',
    //     time: "12 second ago",
    //     caption: "Hello World",
    //     profile: 'https://randomuser.me/api/portraits/women/17.jpg',
    //     image:
    //         "https://images.pexels.com/photos/3754285/pexels-photo-3754285.jpeg",
    //     isLike: 1,
    //     likeCount: "500M"),
    // PostModal(
    //     id: '7',
    //     name: 'Sahan Sandeepa',
    //     time: "12 second ago",
    //     profile: 'https://randomuser.me/api/portraits/women/18.jpg',
    //     caption: "Hello World",
    //     image:
    //         "https://images.pexels.com/photos/3754285/pexels-photo-3754285.jpeg",
    //     isLike: 0,
    //     likeCount: "500M"),
    // PostModal(
    //     id: '8',
    //     name: 'Sasanka Deshan',
    //     time: "12 second ago",
    //     caption: "Hello World",
    //     profile: 'https://randomuser.me/api/portraits/women/19.jpg',
    //     image:
    //         "https://images.pexels.com/photos/3754285/pexels-photo-3754285.jpeg",
    //     isLike: 0,
    //     likeCount: "500M"),
    // PostModal(
    //     id: '9',
    //     name: 'Sasanka Madushan',
    //     time: "12 second ago",
    //     caption: "Hello World",
    //     profile: 'https://randomuser.me/api/portraits/women/20.jpg',
    //     image:
    //         "https://images.pexels.com/photos/3754285/pexels-photo-3754285.jpeg",
    //     isLike: 0,
    //     likeCount: "500M"),
    // PostModal(
    //     id: '10',
    //     name: 'Sasanka Madushan',
    //     time: "12 second ago",
    //     caption: "Hello World",
    //     profile: 'https://randomuser.me/api/portraits/women/21.jpg',
    //     image:
    //         "https://images.pexels.com/photos/3754285/pexels-photo-3754285.jpeg",
    //     isLike: 0,
    //     likeCount: "500M"),
  ];
}
