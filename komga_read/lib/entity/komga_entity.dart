///登录的返回
class KomgaMe {
  String? id;
  String? email;
  List<String>? roles;
  bool? sharedAllLibraries;
  List<String>? sharedLibrariesIds;
  List<String>? labelsAllow;
  List<String>? labelsExclude;
  String? ageRestriction;

  KomgaMe(
      {this.id,
      this.email,
      this.roles,
      this.sharedAllLibraries,
      this.sharedLibrariesIds,
      this.labelsAllow,
      this.labelsExclude,
      this.ageRestriction});

  KomgaMe.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    roles = json['roles'].cast<String>();
    sharedAllLibraries = json['sharedAllLibraries'];
    sharedLibrariesIds = json['sharedLibrariesIds'].cast<String>();
    labelsAllow = json['labelsAllow'].cast<String>();
    labelsExclude = json['labelsExclude'].cast<String>();
    ageRestriction = json['ageRestriction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['roles'] = roles;
    data['sharedAllLibraries'] = sharedAllLibraries;
    data['sharedLibrariesIds'] = sharedLibrariesIds;
    data['labelsAllow'] = labelsAllow;
    data['labelsExclude'] = labelsExclude;
    data['ageRestriction'] = ageRestriction;
    return data;
  }
}

///书架
class KomgaLibrary {
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

  KomgaLibrary(
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

  KomgaLibrary.fromJson(Map<String, dynamic> json) {
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
