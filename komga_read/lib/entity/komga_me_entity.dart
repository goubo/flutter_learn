import 'dart:convert';

import 'package:komga_read/generated/json/base/json_field.dart';
import 'package:komga_read/generated/json/komga_me_entity.g.dart';

@JsonSerializable()
class KomgaMeEntity {

	late String id;
	late String email;
	late List<String> roles;
	late bool sharedAllLibraries;
	late List<dynamic> sharedLibrariesIds;
	late List<dynamic> labelsAllow;
	late List<dynamic> labelsExclude;
	dynamic ageRestriction;
  
  KomgaMeEntity();

  factory KomgaMeEntity.fromJson(Map<String, dynamic> json) => $KomgaMeEntityFromJson(json);

  Map<String, dynamic> toJson() => $KomgaMeEntityToJson(this);

  KomgaMeEntity copyWith({String? id, String? email, List<String>? roles, bool? sharedAllLibraries, List<dynamic>? sharedLibrariesIds, List<dynamic>? labelsAllow, List<dynamic>? labelsExclude, dynamic ageRestriction}) {
      return KomgaMeEntity()..id= id ?? this.id
			..email= email ?? this.email
			..roles= roles ?? this.roles
			..sharedAllLibraries= sharedAllLibraries ?? this.sharedAllLibraries
			..sharedLibrariesIds= sharedLibrariesIds ?? this.sharedLibrariesIds
			..labelsAllow= labelsAllow ?? this.labelsAllow
			..labelsExclude= labelsExclude ?? this.labelsExclude
			..ageRestriction= ageRestriction ?? this.ageRestriction;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}