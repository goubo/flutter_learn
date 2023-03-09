class KomgaLibraryEntity {
  String? id;
  String? name;
  String? root;
  bool? importComicInfoBook;
  bool? importComicInfoSeries;
  bool? importComicInfoCollection;
  bool? importComicInfoReadList;
  bool? importComicInfoSeriesAppendVolume;
  bool? importEpubBook;
  bool? importEpubSeries;
  bool? importMylarSeries;
  bool? importLocalArtwork;
  bool? importBarcodeIsbn;
  bool? scanForceModifiedTime;
  bool? scanDeep;
  bool? repairExtensions;
  bool? convertToCbz;
  bool? emptyTrashAfterScan;
  String? seriesCover;
  bool? hashFiles;
  bool? hashPages;
  bool? analyzeDimensions;
  bool? unavailable;

  KomgaLibraryEntity(
      {this.id,
      this.name,
      this.root,
      this.importComicInfoBook,
      this.importComicInfoSeries,
      this.importComicInfoCollection,
      this.importComicInfoReadList,
      this.importComicInfoSeriesAppendVolume,
      this.importEpubBook,
      this.importEpubSeries,
      this.importMylarSeries,
      this.importLocalArtwork,
      this.importBarcodeIsbn,
      this.scanForceModifiedTime,
      this.scanDeep,
      this.repairExtensions,
      this.convertToCbz,
      this.emptyTrashAfterScan,
      this.seriesCover,
      this.hashFiles,
      this.hashPages,
      this.analyzeDimensions,
      this.unavailable});

  KomgaLibraryEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    root = json['root'];
    importComicInfoBook = json['importComicInfoBook'];
    importComicInfoSeries = json['importComicInfoSeries'];
    importComicInfoCollection = json['importComicInfoCollection'];
    importComicInfoReadList = json['importComicInfoReadList'];
    importComicInfoSeriesAppendVolume = json['importComicInfoSeriesAppendVolume'];
    importEpubBook = json['importEpubBook'];
    importEpubSeries = json['importEpubSeries'];
    importMylarSeries = json['importMylarSeries'];
    importLocalArtwork = json['importLocalArtwork'];
    importBarcodeIsbn = json['importBarcodeIsbn'];
    scanForceModifiedTime = json['scanForceModifiedTime'];
    scanDeep = json['scanDeep'];
    repairExtensions = json['repairExtensions'];
    convertToCbz = json['convertToCbz'];
    emptyTrashAfterScan = json['emptyTrashAfterScan'];
    seriesCover = json['seriesCover'];
    hashFiles = json['hashFiles'];
    hashPages = json['hashPages'];
    analyzeDimensions = json['analyzeDimensions'];
    unavailable = json['unavailable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['root'] = root;
    data['importComicInfoBook'] = importComicInfoBook;
    data['importComicInfoSeries'] = importComicInfoSeries;
    data['importComicInfoCollection'] = importComicInfoCollection;
    data['importComicInfoReadList'] = importComicInfoReadList;
    data['importComicInfoSeriesAppendVolume'] = importComicInfoSeriesAppendVolume;
    data['importEpubBook'] = importEpubBook;
    data['importEpubSeries'] = importEpubSeries;
    data['importMylarSeries'] = importMylarSeries;
    data['importLocalArtwork'] = importLocalArtwork;
    data['importBarcodeIsbn'] = importBarcodeIsbn;
    data['scanForceModifiedTime'] = scanForceModifiedTime;
    data['scanDeep'] = scanDeep;
    data['repairExtensions'] = repairExtensions;
    data['convertToCbz'] = convertToCbz;
    data['emptyTrashAfterScan'] = emptyTrashAfterScan;
    data['seriesCover'] = seriesCover;
    data['hashFiles'] = hashFiles;
    data['hashPages'] = hashPages;
    data['analyzeDimensions'] = analyzeDimensions;
    data['unavailable'] = unavailable;
    return data;
  }
}
