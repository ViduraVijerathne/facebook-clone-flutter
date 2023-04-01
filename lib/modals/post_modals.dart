class PostModal {
  String id;
  String name;
  String time;
  String caption;
  String image;
  String profile;
  String likeCount;
  int isLike;

  PostModal(
      {required this.id,
      required this.name,
      required this.time,
      required this.caption,
      required this.image,
      required this.isLike,
      required this.profile,
      required this.likeCount});
}
