class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? url;
  final Sours? sours;

  ArticleModel({
    required this.url,
    required this.sours,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'] ?? 'No Title',
      subTitle: json['description'],
      sours: Sours(
        id: json['source']['id']?.toString(),
        name: json['source']['name'],
      ),
      url: json['url'],
    );
  }

  @override
  String toString() {
    return 'ArticleModel(title: $title, image: $image, subTitle: $subTitle, url: $url, soursId: ${sours?.id}, soursName: ${sours?.name})';
  }
}

class Sours {
  final String? id;
  final String? name;

  Sours({required this.id, required this.name});
}
