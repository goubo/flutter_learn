import 'package:komga_read/generated/json/base/json_convert_content.dart';
import 'package:komga_read/entity/komga_series_entity.dart';

KomgaSeriesEntity $KomgaSeriesEntityFromJson(Map<String, dynamic> json) {
	final KomgaSeriesEntity komgaSeriesEntity = KomgaSeriesEntity();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		komgaSeriesEntity.id = id;
	}
	final String? libraryId = jsonConvert.convert<String>(json['libraryId']);
	if (libraryId != null) {
		komgaSeriesEntity.libraryId = libraryId;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		komgaSeriesEntity.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		komgaSeriesEntity.url = url;
	}
	final String? created = jsonConvert.convert<String>(json['created']);
	if (created != null) {
		komgaSeriesEntity.created = created;
	}
	final String? lastModified = jsonConvert.convert<String>(json['lastModified']);
	if (lastModified != null) {
		komgaSeriesEntity.lastModified = lastModified;
	}
	final String? fileLastModified = jsonConvert.convert<String>(json['fileLastModified']);
	if (fileLastModified != null) {
		komgaSeriesEntity.fileLastModified = fileLastModified;
	}
	final int? booksCount = jsonConvert.convert<int>(json['booksCount']);
	if (booksCount != null) {
		komgaSeriesEntity.booksCount = booksCount;
	}
	final int? booksReadCount = jsonConvert.convert<int>(json['booksReadCount']);
	if (booksReadCount != null) {
		komgaSeriesEntity.booksReadCount = booksReadCount;
	}
	final int? booksUnreadCount = jsonConvert.convert<int>(json['booksUnreadCount']);
	if (booksUnreadCount != null) {
		komgaSeriesEntity.booksUnreadCount = booksUnreadCount;
	}
	final int? booksInProgressCount = jsonConvert.convert<int>(json['booksInProgressCount']);
	if (booksInProgressCount != null) {
		komgaSeriesEntity.booksInProgressCount = booksInProgressCount;
	}
	final KomgaSeriesMetadata? metadata = jsonConvert.convert<KomgaSeriesMetadata>(json['metadata']);
	if (metadata != null) {
		komgaSeriesEntity.metadata = metadata;
	}
	final KomgaSeriesBooksMetadata? booksMetadata = jsonConvert.convert<KomgaSeriesBooksMetadata>(json['booksMetadata']);
	if (booksMetadata != null) {
		komgaSeriesEntity.booksMetadata = booksMetadata;
	}
	final bool? deleted = jsonConvert.convert<bool>(json['deleted']);
	if (deleted != null) {
		komgaSeriesEntity.deleted = deleted;
	}
	return komgaSeriesEntity;
}

Map<String, dynamic> $KomgaSeriesEntityToJson(KomgaSeriesEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['libraryId'] = entity.libraryId;
	data['name'] = entity.name;
	data['url'] = entity.url;
	data['created'] = entity.created;
	data['lastModified'] = entity.lastModified;
	data['fileLastModified'] = entity.fileLastModified;
	data['booksCount'] = entity.booksCount;
	data['booksReadCount'] = entity.booksReadCount;
	data['booksUnreadCount'] = entity.booksUnreadCount;
	data['booksInProgressCount'] = entity.booksInProgressCount;
	data['metadata'] = entity.metadata.toJson();
	data['booksMetadata'] = entity.booksMetadata.toJson();
	data['deleted'] = entity.deleted;
	return data;
}

KomgaSeriesMetadata $KomgaSeriesMetadataFromJson(Map<String, dynamic> json) {
	final KomgaSeriesMetadata komgaSeriesMetadata = KomgaSeriesMetadata();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		komgaSeriesMetadata.status = status;
	}
	final bool? statusLock = jsonConvert.convert<bool>(json['statusLock']);
	if (statusLock != null) {
		komgaSeriesMetadata.statusLock = statusLock;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		komgaSeriesMetadata.title = title;
	}
	final bool? titleLock = jsonConvert.convert<bool>(json['titleLock']);
	if (titleLock != null) {
		komgaSeriesMetadata.titleLock = titleLock;
	}
	final String? titleSort = jsonConvert.convert<String>(json['titleSort']);
	if (titleSort != null) {
		komgaSeriesMetadata.titleSort = titleSort;
	}
	final bool? titleSortLock = jsonConvert.convert<bool>(json['titleSortLock']);
	if (titleSortLock != null) {
		komgaSeriesMetadata.titleSortLock = titleSortLock;
	}
	final String? summary = jsonConvert.convert<String>(json['summary']);
	if (summary != null) {
		komgaSeriesMetadata.summary = summary;
	}
	final bool? summaryLock = jsonConvert.convert<bool>(json['summaryLock']);
	if (summaryLock != null) {
		komgaSeriesMetadata.summaryLock = summaryLock;
	}
	final String? readingDirection = jsonConvert.convert<String>(json['readingDirection']);
	if (readingDirection != null) {
		komgaSeriesMetadata.readingDirection = readingDirection;
	}
	final bool? readingDirectionLock = jsonConvert.convert<bool>(json['readingDirectionLock']);
	if (readingDirectionLock != null) {
		komgaSeriesMetadata.readingDirectionLock = readingDirectionLock;
	}
	final String? publisher = jsonConvert.convert<String>(json['publisher']);
	if (publisher != null) {
		komgaSeriesMetadata.publisher = publisher;
	}
	final bool? publisherLock = jsonConvert.convert<bool>(json['publisherLock']);
	if (publisherLock != null) {
		komgaSeriesMetadata.publisherLock = publisherLock;
	}
	final dynamic ageRating = jsonConvert.convert<dynamic>(json['ageRating']);
	if (ageRating != null) {
		komgaSeriesMetadata.ageRating = ageRating;
	}
	final bool? ageRatingLock = jsonConvert.convert<bool>(json['ageRatingLock']);
	if (ageRatingLock != null) {
		komgaSeriesMetadata.ageRatingLock = ageRatingLock;
	}
	final String? language = jsonConvert.convert<String>(json['language']);
	if (language != null) {
		komgaSeriesMetadata.language = language;
	}
	final bool? languageLock = jsonConvert.convert<bool>(json['languageLock']);
	if (languageLock != null) {
		komgaSeriesMetadata.languageLock = languageLock;
	}
	final List<dynamic>? genres = jsonConvert.convertListNotNull<dynamic>(json['genres']);
	if (genres != null) {
		komgaSeriesMetadata.genres = genres;
	}
	final bool? genresLock = jsonConvert.convert<bool>(json['genresLock']);
	if (genresLock != null) {
		komgaSeriesMetadata.genresLock = genresLock;
	}
	final List<dynamic>? tags = jsonConvert.convertListNotNull<dynamic>(json['tags']);
	if (tags != null) {
		komgaSeriesMetadata.tags = tags;
	}
	final bool? tagsLock = jsonConvert.convert<bool>(json['tagsLock']);
	if (tagsLock != null) {
		komgaSeriesMetadata.tagsLock = tagsLock;
	}
	final dynamic totalBookCount = jsonConvert.convert<dynamic>(json['totalBookCount']);
	if (totalBookCount != null) {
		komgaSeriesMetadata.totalBookCount = totalBookCount;
	}
	final bool? totalBookCountLock = jsonConvert.convert<bool>(json['totalBookCountLock']);
	if (totalBookCountLock != null) {
		komgaSeriesMetadata.totalBookCountLock = totalBookCountLock;
	}
	final List<dynamic>? sharingLabels = jsonConvert.convertListNotNull<dynamic>(json['sharingLabels']);
	if (sharingLabels != null) {
		komgaSeriesMetadata.sharingLabels = sharingLabels;
	}
	final bool? sharingLabelsLock = jsonConvert.convert<bool>(json['sharingLabelsLock']);
	if (sharingLabelsLock != null) {
		komgaSeriesMetadata.sharingLabelsLock = sharingLabelsLock;
	}
	final List<dynamic>? links = jsonConvert.convertListNotNull<dynamic>(json['links']);
	if (links != null) {
		komgaSeriesMetadata.links = links;
	}
	final bool? linksLock = jsonConvert.convert<bool>(json['linksLock']);
	if (linksLock != null) {
		komgaSeriesMetadata.linksLock = linksLock;
	}
	final List<dynamic>? alternateTitles = jsonConvert.convertListNotNull<dynamic>(json['alternateTitles']);
	if (alternateTitles != null) {
		komgaSeriesMetadata.alternateTitles = alternateTitles;
	}
	final bool? alternateTitlesLock = jsonConvert.convert<bool>(json['alternateTitlesLock']);
	if (alternateTitlesLock != null) {
		komgaSeriesMetadata.alternateTitlesLock = alternateTitlesLock;
	}
	final String? created = jsonConvert.convert<String>(json['created']);
	if (created != null) {
		komgaSeriesMetadata.created = created;
	}
	final String? lastModified = jsonConvert.convert<String>(json['lastModified']);
	if (lastModified != null) {
		komgaSeriesMetadata.lastModified = lastModified;
	}
	return komgaSeriesMetadata;
}

Map<String, dynamic> $KomgaSeriesMetadataToJson(KomgaSeriesMetadata entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['statusLock'] = entity.statusLock;
	data['title'] = entity.title;
	data['titleLock'] = entity.titleLock;
	data['titleSort'] = entity.titleSort;
	data['titleSortLock'] = entity.titleSortLock;
	data['summary'] = entity.summary;
	data['summaryLock'] = entity.summaryLock;
	data['readingDirection'] = entity.readingDirection;
	data['readingDirectionLock'] = entity.readingDirectionLock;
	data['publisher'] = entity.publisher;
	data['publisherLock'] = entity.publisherLock;
	data['ageRating'] = entity.ageRating;
	data['ageRatingLock'] = entity.ageRatingLock;
	data['language'] = entity.language;
	data['languageLock'] = entity.languageLock;
	data['genres'] =  entity.genres;
	data['genresLock'] = entity.genresLock;
	data['tags'] =  entity.tags;
	data['tagsLock'] = entity.tagsLock;
	data['totalBookCount'] = entity.totalBookCount;
	data['totalBookCountLock'] = entity.totalBookCountLock;
	data['sharingLabels'] =  entity.sharingLabels;
	data['sharingLabelsLock'] = entity.sharingLabelsLock;
	data['links'] =  entity.links;
	data['linksLock'] = entity.linksLock;
	data['alternateTitles'] =  entity.alternateTitles;
	data['alternateTitlesLock'] = entity.alternateTitlesLock;
	data['created'] = entity.created;
	data['lastModified'] = entity.lastModified;
	return data;
}

KomgaSeriesBooksMetadata $KomgaSeriesBooksMetadataFromJson(Map<String, dynamic> json) {
	final KomgaSeriesBooksMetadata komgaSeriesBooksMetadata = KomgaSeriesBooksMetadata();
	final List<dynamic>? authors = jsonConvert.convertListNotNull<dynamic>(json['authors']);
	if (authors != null) {
		komgaSeriesBooksMetadata.authors = authors;
	}
	final List<dynamic>? tags = jsonConvert.convertListNotNull<dynamic>(json['tags']);
	if (tags != null) {
		komgaSeriesBooksMetadata.tags = tags;
	}
	final dynamic releaseDate = jsonConvert.convert<dynamic>(json['releaseDate']);
	if (releaseDate != null) {
		komgaSeriesBooksMetadata.releaseDate = releaseDate;
	}
	final String? summary = jsonConvert.convert<String>(json['summary']);
	if (summary != null) {
		komgaSeriesBooksMetadata.summary = summary;
	}
	final String? summaryNumber = jsonConvert.convert<String>(json['summaryNumber']);
	if (summaryNumber != null) {
		komgaSeriesBooksMetadata.summaryNumber = summaryNumber;
	}
	final String? created = jsonConvert.convert<String>(json['created']);
	if (created != null) {
		komgaSeriesBooksMetadata.created = created;
	}
	final String? lastModified = jsonConvert.convert<String>(json['lastModified']);
	if (lastModified != null) {
		komgaSeriesBooksMetadata.lastModified = lastModified;
	}
	return komgaSeriesBooksMetadata;
}

Map<String, dynamic> $KomgaSeriesBooksMetadataToJson(KomgaSeriesBooksMetadata entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['authors'] =  entity.authors;
	data['tags'] =  entity.tags;
	data['releaseDate'] = entity.releaseDate;
	data['summary'] = entity.summary;
	data['summaryNumber'] = entity.summaryNumber;
	data['created'] = entity.created;
	data['lastModified'] = entity.lastModified;
	return data;
}