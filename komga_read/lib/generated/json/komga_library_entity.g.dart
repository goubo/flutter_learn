import 'package:komga_read/generated/json/base/json_convert_content.dart';
import 'package:komga_read/entity/komga_library_entity.dart';

KomgaLibraryEntity $KomgaLibraryEntityFromJson(Map<String, dynamic> json) {
	final KomgaLibraryEntity komgaLibraryEntity = KomgaLibraryEntity();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		komgaLibraryEntity.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		komgaLibraryEntity.name = name;
	}
	final String? root = jsonConvert.convert<String>(json['root']);
	if (root != null) {
		komgaLibraryEntity.root = root;
	}
	final bool? importComicInfoBook = jsonConvert.convert<bool>(json['importComicInfoBook']);
	if (importComicInfoBook != null) {
		komgaLibraryEntity.importComicInfoBook = importComicInfoBook;
	}
	final bool? importComicInfoSeries = jsonConvert.convert<bool>(json['importComicInfoSeries']);
	if (importComicInfoSeries != null) {
		komgaLibraryEntity.importComicInfoSeries = importComicInfoSeries;
	}
	final bool? importComicInfoCollection = jsonConvert.convert<bool>(json['importComicInfoCollection']);
	if (importComicInfoCollection != null) {
		komgaLibraryEntity.importComicInfoCollection = importComicInfoCollection;
	}
	final bool? importComicInfoReadList = jsonConvert.convert<bool>(json['importComicInfoReadList']);
	if (importComicInfoReadList != null) {
		komgaLibraryEntity.importComicInfoReadList = importComicInfoReadList;
	}
	final bool? importComicInfoSeriesAppendVolume = jsonConvert.convert<bool>(json['importComicInfoSeriesAppendVolume']);
	if (importComicInfoSeriesAppendVolume != null) {
		komgaLibraryEntity.importComicInfoSeriesAppendVolume = importComicInfoSeriesAppendVolume;
	}
	final bool? importEpubBook = jsonConvert.convert<bool>(json['importEpubBook']);
	if (importEpubBook != null) {
		komgaLibraryEntity.importEpubBook = importEpubBook;
	}
	final bool? importEpubSeries = jsonConvert.convert<bool>(json['importEpubSeries']);
	if (importEpubSeries != null) {
		komgaLibraryEntity.importEpubSeries = importEpubSeries;
	}
	final bool? importMylarSeries = jsonConvert.convert<bool>(json['importMylarSeries']);
	if (importMylarSeries != null) {
		komgaLibraryEntity.importMylarSeries = importMylarSeries;
	}
	final bool? importLocalArtwork = jsonConvert.convert<bool>(json['importLocalArtwork']);
	if (importLocalArtwork != null) {
		komgaLibraryEntity.importLocalArtwork = importLocalArtwork;
	}
	final bool? importBarcodeIsbn = jsonConvert.convert<bool>(json['importBarcodeIsbn']);
	if (importBarcodeIsbn != null) {
		komgaLibraryEntity.importBarcodeIsbn = importBarcodeIsbn;
	}
	final bool? scanForceModifiedTime = jsonConvert.convert<bool>(json['scanForceModifiedTime']);
	if (scanForceModifiedTime != null) {
		komgaLibraryEntity.scanForceModifiedTime = scanForceModifiedTime;
	}
	final bool? scanDeep = jsonConvert.convert<bool>(json['scanDeep']);
	if (scanDeep != null) {
		komgaLibraryEntity.scanDeep = scanDeep;
	}
	final bool? repairExtensions = jsonConvert.convert<bool>(json['repairExtensions']);
	if (repairExtensions != null) {
		komgaLibraryEntity.repairExtensions = repairExtensions;
	}
	final bool? convertToCbz = jsonConvert.convert<bool>(json['convertToCbz']);
	if (convertToCbz != null) {
		komgaLibraryEntity.convertToCbz = convertToCbz;
	}
	final bool? emptyTrashAfterScan = jsonConvert.convert<bool>(json['emptyTrashAfterScan']);
	if (emptyTrashAfterScan != null) {
		komgaLibraryEntity.emptyTrashAfterScan = emptyTrashAfterScan;
	}
	final String? seriesCover = jsonConvert.convert<String>(json['seriesCover']);
	if (seriesCover != null) {
		komgaLibraryEntity.seriesCover = seriesCover;
	}
	final bool? hashFiles = jsonConvert.convert<bool>(json['hashFiles']);
	if (hashFiles != null) {
		komgaLibraryEntity.hashFiles = hashFiles;
	}
	final bool? hashPages = jsonConvert.convert<bool>(json['hashPages']);
	if (hashPages != null) {
		komgaLibraryEntity.hashPages = hashPages;
	}
	final bool? analyzeDimensions = jsonConvert.convert<bool>(json['analyzeDimensions']);
	if (analyzeDimensions != null) {
		komgaLibraryEntity.analyzeDimensions = analyzeDimensions;
	}
	final bool? unavailable = jsonConvert.convert<bool>(json['unavailable']);
	if (unavailable != null) {
		komgaLibraryEntity.unavailable = unavailable;
	}
	return komgaLibraryEntity;
}

Map<String, dynamic> $KomgaLibraryEntityToJson(KomgaLibraryEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['root'] = entity.root;
	data['importComicInfoBook'] = entity.importComicInfoBook;
	data['importComicInfoSeries'] = entity.importComicInfoSeries;
	data['importComicInfoCollection'] = entity.importComicInfoCollection;
	data['importComicInfoReadList'] = entity.importComicInfoReadList;
	data['importComicInfoSeriesAppendVolume'] = entity.importComicInfoSeriesAppendVolume;
	data['importEpubBook'] = entity.importEpubBook;
	data['importEpubSeries'] = entity.importEpubSeries;
	data['importMylarSeries'] = entity.importMylarSeries;
	data['importLocalArtwork'] = entity.importLocalArtwork;
	data['importBarcodeIsbn'] = entity.importBarcodeIsbn;
	data['scanForceModifiedTime'] = entity.scanForceModifiedTime;
	data['scanDeep'] = entity.scanDeep;
	data['repairExtensions'] = entity.repairExtensions;
	data['convertToCbz'] = entity.convertToCbz;
	data['emptyTrashAfterScan'] = entity.emptyTrashAfterScan;
	data['seriesCover'] = entity.seriesCover;
	data['hashFiles'] = entity.hashFiles;
	data['hashPages'] = entity.hashPages;
	data['analyzeDimensions'] = entity.analyzeDimensions;
	data['unavailable'] = entity.unavailable;
	return data;
}