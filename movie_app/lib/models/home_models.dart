class MovieItem {
  MovieItemData? data;
  int? createdAt;
  int? updatedAt;
  String? id;
  String? originalName;
  int? imdbVotes;
  String? imdbRating;
  String? rottenRating;
  int? rottenVotes;
  String? year;
  String? imdbId;
  String? alias;
  String? doubanId;
  String? type;
  String? doubanRating;
  int? doubanVotes;
  int? duration;
  String? dateReleased;
  int? rankIndex;

  MovieItem(
      {this.data,
      this.createdAt,
      this.updatedAt,
      this.id,
      this.originalName,
      this.imdbVotes,
      this.imdbRating,
      this.rottenRating,
      this.rottenVotes,
      this.year,
      this.imdbId,
      this.alias,
      this.doubanId,
      this.type,
      this.doubanRating,
      this.doubanVotes,
      this.duration,
      this.dateReleased,
      this.rankIndex});

  MovieItem.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      json['data'].forEach((v) {
        data = MovieItemData.fromJson(v);
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
    originalName = json['originalName'];
    imdbVotes = json['imdbVotes'];
    imdbRating = json['imdbRating'];
    rottenRating = json['rottenRating'];
    rottenVotes = json['rottenVotes'];
    year = json['year'];
    imdbId = json['imdbId'];
    alias = json['alias'];
    doubanId = json['doubanId'];
    type = json['type'];
    doubanRating = json['doubanRating'];
    doubanVotes = json['doubanVotes'];
    duration = json['duration'];
    dateReleased = json['dateReleased'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['id'] = id;
    data['originalName'] = originalName;
    data['imdbVotes'] = imdbVotes;
    data['imdbRating'] = imdbRating;
    data['rottenRating'] = rottenRating;
    data['rottenVotes'] = rottenVotes;
    data['year'] = year;
    data['imdbId'] = imdbId;
    data['alias'] = alias;
    data['doubanId'] = doubanId;
    data['type'] = type;
    data['doubanRating'] = doubanRating;
    data['doubanVotes'] = doubanVotes;
    data['duration'] = duration;
    data['dateReleased'] = dateReleased;
    data['rankIndex'] = rankIndex;
    return data;
  }
}

class MovieItemData {
  int? createdAt;
  int? updatedAt;
  String? id;
  String? poster;
  String? name;
  String? genre;
  String? description;
  String? language;
  String? country;
  String? lang;
  String? shareImage;
  String? movie;

  MovieItemData(
      {this.createdAt,
      this.updatedAt,
      this.id,
      this.poster,
      this.name,
      this.genre,
      this.description,
      this.language,
      this.country,
      this.lang,
      this.shareImage,
      this.movie});

  MovieItemData.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
    poster = json['poster'];
    name = json['name'];
    genre = json['genre'];
    description = json['description'];
    language = json['language'];
    country = json['country'];
    lang = json['lang'];
    shareImage = json['shareImage'];
    movie = json['movie'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['id'] = id;
    data['poster'] = poster;
    data['name'] = name;
    data['genre'] = genre;
    data['description'] = description;
    data['language'] = language;
    data['country'] = country;
    data['lang'] = lang;
    data['shareImage'] = shareImage;
    data['movie'] = movie;
    return data;
  }
}
