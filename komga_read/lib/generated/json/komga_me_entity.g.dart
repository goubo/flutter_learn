import 'package:komga_read/generated/json/base/json_convert_content.dart';
import 'package:komga_read/entity/komga_me_entity.dart';

KomgaMeEntity $KomgaMeEntityFromJson(Map<String, dynamic> json) {
	final KomgaMeEntity komgaMeEntity = KomgaMeEntity();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		komgaMeEntity.id = id;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		komgaMeEntity.email = email;
	}
	final List<String>? roles = jsonConvert.convertListNotNull<String>(json['roles']);
	if (roles != null) {
		komgaMeEntity.roles = roles;
	}
	final bool? sharedAllLibraries = jsonConvert.convert<bool>(json['sharedAllLibraries']);
	if (sharedAllLibraries != null) {
		komgaMeEntity.sharedAllLibraries = sharedAllLibraries;
	}
	final List<dynamic>? sharedLibrariesIds = jsonConvert.convertListNotNull<dynamic>(json['sharedLibrariesIds']);
	if (sharedLibrariesIds != null) {
		komgaMeEntity.sharedLibrariesIds = sharedLibrariesIds;
	}
	final List<dynamic>? labelsAllow = jsonConvert.convertListNotNull<dynamic>(json['labelsAllow']);
	if (labelsAllow != null) {
		komgaMeEntity.labelsAllow = labelsAllow;
	}
	final List<dynamic>? labelsExclude = jsonConvert.convertListNotNull<dynamic>(json['labelsExclude']);
	if (labelsExclude != null) {
		komgaMeEntity.labelsExclude = labelsExclude;
	}
	final dynamic ageRestriction = jsonConvert.convert<dynamic>(json['ageRestriction']);
	if (ageRestriction != null) {
		komgaMeEntity.ageRestriction = ageRestriction;
	}
	return komgaMeEntity;
}

Map<String, dynamic> $KomgaMeEntityToJson(KomgaMeEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['email'] = entity.email;
	data['roles'] =  entity.roles;
	data['sharedAllLibraries'] = entity.sharedAllLibraries;
	data['sharedLibrariesIds'] =  entity.sharedLibrariesIds;
	data['labelsAllow'] =  entity.labelsAllow;
	data['labelsExclude'] =  entity.labelsExclude;
	data['ageRestriction'] = entity.ageRestriction;
	return data;
}