import 'package:komga_read/generated/json/base/json_field.dart';
import 'package:komga_read/generated/json/komga_series_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class KomgaSeriesEntity {

	late String id;
	late String libraryId;
	late String name;
	late String url;
	late String created;
	late String lastModified;
	late String fileLastModified;
	late int booksCount;
	late int booksReadCount;
	late int booksUnreadCount;
	late int booksInProgressCount;
	late KomgaSeriesMetadata metadata;
	late KomgaSeriesBooksMetadata booksMetadata;
	late bool deleted;
  
  KomgaSeriesEntity();

  factory KomgaSeriesEntity.fromJson(Map<String, dynamic> json) => $KomgaSeriesEntityFromJson(json);

  Map<String, dynamic> toJson() => $KomgaSeriesEntityToJson(this);

  KomgaSeriesEntity copyWith({String? id, String? libraryId, String? name, String? url, String? created, String? lastModified, String? fileLastModified, int? booksCount, int? booksReadCount, int? booksUnreadCount, int? booksInProgressCount, KomgaSeriesMetadata? metadata, KomgaSeriesBooksMetadata? booksMetadata, bool? deleted}) {
      return KomgaSeriesEntity()..id= id ?? this.id
			..libraryId= libraryId ?? this.libraryId
			..name= name ?? this.name
			..url= url ?? this.url
			..created= created ?? this.created
			..lastModified= lastModified ?? this.lastModified
			..fileLastModified= fileLastModified ?? this.fileLastModified
			..booksCount= booksCount ?? this.booksCount
			..booksReadCount= booksReadCount ?? this.booksReadCount
			..booksUnreadCount= booksUnreadCount ?? this.booksUnreadCount
			..booksInProgressCount= booksInProgressCount ?? this.booksInProgressCount
			..metadata= metadata ?? this.metadata
			..booksMetadata= booksMetadata ?? this.booksMetadata
			..deleted= deleted ?? this.deleted;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class KomgaSeriesMetadata {

	late String status;
	late bool statusLock;
	late String title;
	late bool titleLock;
	late String titleSort;
	late bool titleSortLock;
	late String summary;
	late bool summaryLock;
	late String readingDirection;
	late bool readingDirectionLock;
	late String publisher;
	late bool publisherLock;
	dynamic ageRating;
	late bool ageRatingLock;
	late String language;
	late bool languageLock;
	late List<dynamic> genres;
	late bool genresLock;
	late List<dynamic> tags;
	late bool tagsLock;
	dynamic totalBookCount;
	late bool totalBookCountLock;
	late List<dynamic> sharingLabels;
	late bool sharingLabelsLock;
	late List<dynamic> links;
	late bool linksLock;
	late List<dynamic> alternateTitles;
	late bool alternateTitlesLock;
	late String created;
	late String lastModified;
  
  KomgaSeriesMetadata();

  factory KomgaSeriesMetadata.fromJson(Map<String, dynamic> json) => $KomgaSeriesMetadataFromJson(json);

  Map<String, dynamic> toJson() => $KomgaSeriesMetadataToJson(this);

  KomgaSeriesMetadata copyWith({String? status, bool? statusLock, String? title, bool? titleLock, String? titleSort, bool? titleSortLock, String? summary, bool? summaryLock, String? readingDirection, bool? readingDirectionLock, String? publisher, bool? publisherLock, dynamic ageRating, bool? ageRatingLock, String? language, bool? languageLock, List<dynamic>? genres, bool? genresLock, List<dynamic>? tags, bool? tagsLock, dynamic totalBookCount, bool? totalBookCountLock, List<dynamic>? sharingLabels, bool? sharingLabelsLock, List<dynamic>? links, bool? linksLock, List<dynamic>? alternateTitles, bool? alternateTitlesLock, String? created, String? lastModified}) {
      return KomgaSeriesMetadata()..status= status ?? this.status
			..statusLock= statusLock ?? this.statusLock
			..title= title ?? this.title
			..titleLock= titleLock ?? this.titleLock
			..titleSort= titleSort ?? this.titleSort
			..titleSortLock= titleSortLock ?? this.titleSortLock
			..summary= summary ?? this.summary
			..summaryLock= summaryLock ?? this.summaryLock
			..readingDirection= readingDirection ?? this.readingDirection
			..readingDirectionLock= readingDirectionLock ?? this.readingDirectionLock
			..publisher= publisher ?? this.publisher
			..publisherLock= publisherLock ?? this.publisherLock
			..ageRating= ageRating ?? this.ageRating
			..ageRatingLock= ageRatingLock ?? this.ageRatingLock
			..language= language ?? this.language
			..languageLock= languageLock ?? this.languageLock
			..genres= genres ?? this.genres
			..genresLock= genresLock ?? this.genresLock
			..tags= tags ?? this.tags
			..tagsLock= tagsLock ?? this.tagsLock
			..totalBookCount= totalBookCount ?? this.totalBookCount
			..totalBookCountLock= totalBookCountLock ?? this.totalBookCountLock
			..sharingLabels= sharingLabels ?? this.sharingLabels
			..sharingLabelsLock= sharingLabelsLock ?? this.sharingLabelsLock
			..links= links ?? this.links
			..linksLock= linksLock ?? this.linksLock
			..alternateTitles= alternateTitles ?? this.alternateTitles
			..alternateTitlesLock= alternateTitlesLock ?? this.alternateTitlesLock
			..created= created ?? this.created
			..lastModified= lastModified ?? this.lastModified;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class KomgaSeriesBooksMetadata {

	late List<dynamic> authors;
	late List<dynamic> tags;
	dynamic releaseDate;
	late String summary;
	late String summaryNumber;
	late String created;
	late String lastModified;
  
  KomgaSeriesBooksMetadata();

  factory KomgaSeriesBooksMetadata.fromJson(Map<String, dynamic> json) => $KomgaSeriesBooksMetadataFromJson(json);

  Map<String, dynamic> toJson() => $KomgaSeriesBooksMetadataToJson(this);

  KomgaSeriesBooksMetadata copyWith({List<dynamic>? authors, List<dynamic>? tags, dynamic releaseDate, String? summary, String? summaryNumber, String? created, String? lastModified}) {
      return KomgaSeriesBooksMetadata()..authors= authors ?? this.authors
			..tags= tags ?? this.tags
			..releaseDate= releaseDate ?? this.releaseDate
			..summary= summary ?? this.summary
			..summaryNumber= summaryNumber ?? this.summaryNumber
			..created= created ?? this.created
			..lastModified= lastModified ?? this.lastModified;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}