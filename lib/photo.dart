class Photos {
  final int id;
  final String title;
  final String url;

  Photos({ this.id, this.title, this.url});

  factory Photos.fromJson(Map<String, dynamic> json) => Photos(
      id: json['id'],
      title: json['title'],
      url: json['url']);
}