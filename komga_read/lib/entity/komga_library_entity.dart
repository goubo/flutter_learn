import 'package:komga_read/generated/json/base/json_field.dart';
import 'package:komga_read/generated/json/komga_library_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class KomgaLibraryEntity {

	late String id;
	late String name;
	late String root;
	late bool importComicInfoBook;
	late bool importComicInfoSeries;
	late bool importComicInfoCollection;
	late bool importComicInfoReadList;
	late bool importComicInfoSeriesAppendVolume;
	late bool importEpubBook;
	late bool importEpubSeries;
	late bool importMylarSeries;
	late bool importLocalArtwork;
	late bool importBarcodeIsbn;
	late bool scanForceModifiedTime;
	late bool scanDeep;
	late bool repairExtensions;
	late bool convertToCbz;
	late bool emptyTrashAfterScan;
	late String seriesCover;
	late bool hashFiles;
	late bool hashPages;
	late bool analyzeDimensions;
	late bool unavailable;
  
  KomgaLibraryEntity();

  factory KomgaLibraryEntity.fromJson(Map<String, dynamic> json) => $KomgaLibraryEntityFromJson(json);

  Map<String, dynamic> toJson() => $KomgaLibraryEntityToJson(this);

  KomgaLibraryEntity copyWith({String? id, String? name, String? root, bool? importComicInfoBook, bool? importComicInfoSeries, bool? importComicInfoCollection, bool? importComicInfoReadList, bool? importComicInfoSeriesAppendVolume, bool? importEpubBook, bool? importEpubSeries, bool? importMylarSeries, bool? importLocalArtwork, bool? importBarcodeIsbn, bool? scanForceModifiedTime, bool? scanDeep, bool? repairExtensions, bool? convertToCbz, bool? emptyTrashAfterScan, String? seriesCover, bool? hashFiles, bool? hashPages, bool? analyzeDimensions, bool? unavailable}) {
      return KomgaLibraryEntity()..id= id ?? this.id
			..name= name ?? this.name
			..root= root ?? this.root
			..importComicInfoBook= importComicInfoBook ?? this.importComicInfoBook
			..importComicInfoSeries= importComicInfoSeries ?? this.importComicInfoSeries
			..importComicInfoCollection= importComicInfoCollection ?? this.importComicInfoCollection
			..importComicInfoReadList= importComicInfoReadList ?? this.importComicInfoReadList
			..importComicInfoSeriesAppendVolume= importComicInfoSeriesAppendVolume ?? this.importComicInfoSeriesAppendVolume
			..importEpubBook= importEpubBook ?? this.importEpubBook
			..importEpubSeries= importEpubSeries ?? this.importEpubSeries
			..importMylarSeries= importMylarSeries ?? this.importMylarSeries
			..importLocalArtwork= importLocalArtwork ?? this.importLocalArtwork
			..importBarcodeIsbn= importBarcodeIsbn ?? this.importBarcodeIsbn
			..scanForceModifiedTime= scanForceModifiedTime ?? this.scanForceModifiedTime
			..scanDeep= scanDeep ?? this.scanDeep
			..repairExtensions= repairExtensions ?? this.repairExtensions
			..convertToCbz= convertToCbz ?? this.convertToCbz
			..emptyTrashAfterScan= emptyTrashAfterScan ?? this.emptyTrashAfterScan
			..seriesCover= seriesCover ?? this.seriesCover
			..hashFiles= hashFiles ?? this.hashFiles
			..hashPages= hashPages ?? this.hashPages
			..analyzeDimensions= analyzeDimensions ?? this.analyzeDimensions
			..unavailable= unavailable ?? this.unavailable;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}