class KomgaSeriesEntity {
  String? id;
  String? libraryId;
  String? name;
  String? url;
  String? created;
  String? lastModified;
  String? fileLastModified;
  int? booksCount;
  int? booksReadCount;
  int? booksUnreadCount;
  int? booksInProgressCount;
  Metadata? metadata;
  BooksMetadata? booksMetadata;
  bool? deleted;
  String? thumbnail;

  KomgaSeriesEntity(
      {this.id,
      this.libraryId,
      this.name,
      this.url,
      this.created,
      this.lastModified,
      this.fileLastModified,
      this.booksCount,
      this.booksReadCount,
      this.booksUnreadCount,
      this.booksInProgressCount,
      this.metadata,
      this.booksMetadata,
      this.deleted,
      this.thumbnail});

  KomgaSeriesEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    libraryId = json['libraryId'];
    name = json['name'];
    url = json['url'];
    created = json['created'];
    lastModified = json['lastModified'];
    fileLastModified = json['fileLastModified'];
    booksCount = json['booksCount'];
    booksReadCount = json['booksReadCount'];
    booksUnreadCount = json['booksUnreadCount'];
    booksInProgressCount = json['booksInProgressCount'];
    metadata = json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    booksMetadata = json['booksMetadata'] != null ? BooksMetadata.fromJson(json['booksMetadata']) : null;
    deleted = json['deleted'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['libraryId'] = libraryId;
    data['name'] = name;
    data['url'] = url;
    data['created'] = created;
    data['lastModified'] = lastModified;
    data['fileLastModified'] = fileLastModified;
    data['booksCount'] = booksCount;
    data['booksReadCount'] = booksReadCount;
    data['booksUnreadCount'] = booksUnreadCount;
    data['booksInProgressCount'] = booksInProgressCount;
    if (metadata != null) {
      data['metadata'] = metadata!.toJson();
    }
    if (booksMetadata != null) {
      data['booksMetadata'] = booksMetadata!.toJson();
    }
    data['deleted'] = deleted;
    data['thumbnail'] = thumbnail;
    return data;
  }
}

class Metadata {
  String? status;
  bool? statusLock;
  String? title;
  bool? titleLock;
  String? titleSort;
  bool? titleSortLock;
  String? summary;
  bool? summaryLock;
  String? readingDirection;
  bool? readingDirectionLock;
  String? publisher;
  bool? publisherLock;
  String? ageRating;
  bool? ageRatingLock;
  String? language;
  bool? languageLock;
  List<String>? genres;
  bool? genresLock;
  List<String>? tags;
  bool? tagsLock;
  String? totalBookCount;
  bool? totalBookCountLock;
  List<String>? sharingLabels;
  bool? sharingLabelsLock;
  List<String>? links;
  bool? linksLock;
  List<String>? alternateTitles;
  bool? alternateTitlesLock;
  String? created;
  String? lastModified;

  Metadata(
      {this.status,
      this.statusLock,
      this.title,
      this.titleLock,
      this.titleSort,
      this.titleSortLock,
      this.summary,
      this.summaryLock,
      this.readingDirection,
      this.readingDirectionLock,
      this.publisher,
      this.publisherLock,
      this.ageRating,
      this.ageRatingLock,
      this.language,
      this.languageLock,
      this.genres,
      this.genresLock,
      this.tags,
      this.tagsLock,
      this.totalBookCount,
      this.totalBookCountLock,
      this.sharingLabels,
      this.sharingLabelsLock,
      this.links,
      this.linksLock,
      this.alternateTitles,
      this.alternateTitlesLock,
      this.created,
      this.lastModified});

  Metadata.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusLock = json['statusLock'];
    title = json['title'];
    titleLock = json['titleLock'];
    titleSort = json['titleSort'];
    titleSortLock = json['titleSortLock'];
    summary = json['summary'];
    summaryLock = json['summaryLock'];
    readingDirection = json['readingDirection'];
    readingDirectionLock = json['readingDirectionLock'];
    publisher = json['publisher'];
    publisherLock = json['publisherLock'];
    ageRating = json['ageRating'];
    ageRatingLock = json['ageRatingLock'];
    language = json['language'];
    languageLock = json['languageLock'];
    genres = json['genres'].cast<String>();
    genresLock = json['genresLock'];
    tags = json['tags'].cast<String>();
    tagsLock = json['tagsLock'];
    totalBookCount = json['totalBookCount'];
    totalBookCountLock = json['totalBookCountLock'];
    sharingLabels = json['sharingLabels'].cast<String>();
    sharingLabelsLock = json['sharingLabelsLock'];
    links = json['links'].cast<String>();
    linksLock = json['linksLock'];
    alternateTitles = json['alternateTitles'].cast<String>();
    alternateTitlesLock = json['alternateTitlesLock'];
    created = json['created'];
    lastModified = json['lastModified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['statusLock'] = statusLock;
    data['title'] = title;
    data['titleLock'] = titleLock;
    data['titleSort'] = titleSort;
    data['titleSortLock'] = titleSortLock;
    data['summary'] = summary;
    data['summaryLock'] = summaryLock;
    data['readingDirection'] = readingDirection;
    data['readingDirectionLock'] = readingDirectionLock;
    data['publisher'] = publisher;
    data['publisherLock'] = publisherLock;
    data['ageRating'] = ageRating;
    data['ageRatingLock'] = ageRatingLock;
    data['language'] = language;
    data['languageLock'] = languageLock;
    data['genres'] = genres;
    data['genresLock'] = genresLock;
    data['tags'] = tags;
    data['tagsLock'] = tagsLock;
    data['totalBookCount'] = totalBookCount;
    data['totalBookCountLock'] = totalBookCountLock;
    data['sharingLabels'] = sharingLabels;
    data['sharingLabelsLock'] = sharingLabelsLock;
    data['links'] = links;
    data['linksLock'] = linksLock;
    data['alternateTitles'] = alternateTitles;
    data['alternateTitlesLock'] = alternateTitlesLock;
    data['created'] = created;
    data['lastModified'] = lastModified;
    return data;
  }
}

class BooksMetadata {
  List<String>? authors;
  List<String>? tags;
  String? releaseDate;
  String? summary;
  String? summaryNumber;
  String? created;
  String? lastModified;

  BooksMetadata(
      {this.authors, this.tags, this.releaseDate, this.summary, this.summaryNumber, this.created, this.lastModified});

  BooksMetadata.fromJson(Map<String, dynamic> json) {
    authors = json['authors'].cast<String>();
    tags = json['tags'].cast<String>();
    releaseDate = json['releaseDate'];
    summary = json['summary'];
    summaryNumber = json['summaryNumber'];
    created = json['created'];
    lastModified = json['lastModified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['authors'] = authors;
    data['tags'] = tags;
    data['releaseDate'] = releaseDate;
    data['summary'] = summary;
    data['summaryNumber'] = summaryNumber;
    data['created'] = created;
    data['lastModified'] = lastModified;
    return data;
  }
}
