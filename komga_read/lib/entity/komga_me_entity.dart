class KomgaMeEntity {
  String? id;
  String? email;
  List<String>? roles;
  bool? sharedAllLibraries;
  List<String>? sharedLibrariesIds;
  List<String>? labelsAllow;
  List<String>? labelsExclude;
  String? ageRestriction;

  KomgaMeEntity(
      {this.id,
      this.email,
      this.roles,
      this.sharedAllLibraries,
      this.sharedLibrariesIds,
      this.labelsAllow,
      this.labelsExclude,
      this.ageRestriction});

  KomgaMeEntity.fromJson(Map<String, dynamic> json) {
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
