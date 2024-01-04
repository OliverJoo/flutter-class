class ImageItem{
  String imgUrl;
  String tags;

//<editor-fold desc="Data Methods">
  ImageItem({
    required this.imgUrl,
    required this.tags,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImageItem &&
          runtimeType == other.runtimeType &&
          imgUrl == other.imgUrl &&
          tags == other.tags);

  @override
  int get hashCode => imgUrl.hashCode ^ tags.hashCode;

  @override
  String toString() {
    return 'ImageItem{ imgUrl: $imgUrl, tags: $tags,}';
  }

  ImageItem copyWith({
    String? imgUrl,
    String? tags,
  }) {
    return ImageItem(
      imgUrl: imgUrl ?? this.imgUrl,
      tags: tags ?? this.tags,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'imgUrl': imgUrl,
      'tags': tags,
    };
  }

  factory ImageItem.fromJson(Map<String, dynamic> map) {
    return ImageItem(
      imgUrl: map['imgUrl'] as String,
      tags: map['tags'] as String,
    );
  }

//</editor-fold>
}