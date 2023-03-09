class KomgaBookEntity {
  String? id;
  String? seriesId;
  String? seriesTitle;
  String? libraryId;
  String? name;
  String? url;
  int? number;
  String? created;
  String? lastModified;
  String? fileLastModified;
  int? sizeBytes;
  String? size;
  Media? media;
  Metadata? metadata;
  ReadProgress? readProgress;
  bool? deleted;
  String? fileHash;
  String? thumbnail;

  KomgaBookEntity(
      {this.id,
      this.seriesId,
      this.seriesTitle,
      this.libraryId,
      this.name,
      this.url,
      this.number,
      this.created,
      this.lastModified,
      this.fileLastModified,
      this.sizeBytes,
      this.size,
      this.media,
      this.metadata,
      this.readProgress,
      this.deleted,
      this.fileHash,
      this.thumbnail});

  KomgaBookEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    seriesId = json['seriesId'];
    seriesTitle = json['seriesTitle'];
    libraryId = json['libraryId'];
    name = json['name'];
    url = json['url'];
    number = json['number'];
    created = json['created'];
    lastModified = json['lastModified'];
    fileLastModified = json['fileLastModified'];
    sizeBytes = json['sizeBytes'];
    size = json['size'];
    media = json['media'] != null ? Media.fromJson(json['media']) : null;
    metadata = json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    readProgress = json['readProgress'] != null ? ReadProgress.fromJson(json['readProgress']) : null;
    deleted = json['deleted'];
    fileHash = json['fileHash'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['seriesId'] = seriesId;
    data['seriesTitle'] = seriesTitle;
    data['libraryId'] = libraryId;
    data['name'] = name;
    data['url'] = url;
    data['number'] = number;
    data['created'] = created;
    data['lastModified'] = lastModified;
    data['fileLastModified'] = fileLastModified;
    data['sizeBytes'] = sizeBytes;
    data['size'] = size;
    if (media != null) {
      data['media'] = media!.toJson();
    }
    if (metadata != null) {
      data['metadata'] = metadata!.toJson();
    }
    if (readProgress != null) {
      data['readProgress'] = readProgress!.toJson();
    }
    data['deleted'] = deleted;
    data['fileHash'] = fileHash;
    data['thumbnail'] = thumbnail;
    return data;
  }
}

class Media {
  String? status;
  String? mediaType;
  int? pagesCount;
  String? comment;

  Media({this.status, this.mediaType, this.pagesCount, this.comment});

  Media.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    mediaType = json['mediaType'];
    pagesCount = json['pagesCount'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['mediaType'] = mediaType;
    data['pagesCount'] = pagesCount;
    data['comment'] = comment;
    return data;
  }
}

class Metadata {
  String? title;
  bool? titleLock;
  String? summary;
  bool? summaryLock;
  String? number;
  bool? numberLock;
  double? numberSort;
  bool? numberSortLock;
  String? releaseDate;
  bool? releaseDateLock;
  List<String>? authors;
  bool? authorsLock;
  List<String>? tags;
  bool? tagsLock;
  String? isbn;
  bool? isbnLock;
  List<String>? links;
  bool? linksLock;
  String? created;
  String? lastModified;

  Metadata(
      {this.title,
      this.titleLock,
      this.summary,
      this.summaryLock,
      this.number,
      this.numberLock,
      this.numberSort,
      this.numberSortLock,
      this.releaseDate,
      this.releaseDateLock,
      this.authors,
      this.authorsLock,
      this.tags,
      this.tagsLock,
      this.isbn,
      this.isbnLock,
      this.links,
      this.linksLock,
      this.created,
      this.lastModified});

  Metadata.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    titleLock = json['titleLock'];
    summary = json['summary'];
    summaryLock = json['summaryLock'];
    number = json['number'];
    numberLock = json['numberLock'];
    numberSort = json['numberSort'];
    numberSortLock = json['numberSortLock'];
    releaseDate = json['releaseDate'];
    releaseDateLock = json['releaseDateLock'];
    authors = json['authors'].cast<String>();
    authorsLock = json['authorsLock'];
    tags = json['tags'].cast<String>();
    tagsLock = json['tagsLock'];
    isbn = json['isbn'];
    isbnLock = json['isbnLock'];
    links = json['links'].cast<String>();
    linksLock = json['linksLock'];
    created = json['created'];
    lastModified = json['lastModified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['titleLock'] = titleLock;
    data['summary'] = summary;
    data['summaryLock'] = summaryLock;
    data['number'] = number;
    data['numberLock'] = numberLock;
    data['numberSort'] = numberSort;
    data['numberSortLock'] = numberSortLock;
    data['releaseDate'] = releaseDate;
    data['releaseDateLock'] = releaseDateLock;
    data['authors'] = authors;
    data['authorsLock'] = authorsLock;
    data['tags'] = tags;
    data['tagsLock'] = tagsLock;
    data['isbn'] = isbn;
    data['isbnLock'] = isbnLock;
    data['links'] = links;
    data['linksLock'] = linksLock;
    data['created'] = created;
    data['lastModified'] = lastModified;
    return data;
  }
}

class ReadProgress {
  int? page;
  bool? completed;
  String? readDate;
  String? created;
  String? lastModified;

  ReadProgress({this.page, this.completed, this.readDate, this.created, this.lastModified});

  ReadProgress.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    completed = json['completed'];
    readDate = json['readDate'];
    created = json['created'];
    lastModified = json['lastModified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page;
    data['completed'] = completed;
    data['readDate'] = readDate;
    data['created'] = created;
    data['lastModified'] = lastModified;
    return data;
  }
}
