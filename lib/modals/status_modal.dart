class StatusModal {
  String id;
  String name;
  String profile;
  List<OneStatusModal> status;

  StatusModal(
      {required this.id,
      required this.name,
      required this.profile,
      required this.status});
}

class OneStatusModal {
  String id;
  String image;
  String caption;

  OneStatusModal(
      {required this.id, required this.image, required this.caption});
}
