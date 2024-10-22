/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the EmpPersonalInfo type in your schema. */
class EmpPersonalInfo extends amplify_core.Model {
  static const classType = const _EmpPersonalInfoModelType();
  final String id;
  final String? _empID;
  final int? _age;
  final String? _aTQualify;
  final String? _alternateNo;
  final String? _agent;
  final String? _contactNo;
  final String? _cob;
  final String? _ctryOfOrigin;
  final String? _chinese;
  final String? _dob;
  final String? _educLevel;
  final String? _email;
  final List<String>? _eduDetails;
  final String? _empBadgeNo;
  final List<String>? _empDocUpload;
  final List<String>? _familyDetails;
  final String? _gender;
  final String? _lang;
  final String? _marital;
  final String? _name;
  final String? _nationality;
  final String? _nationalCat;
  final String? _otherNation;
  final String? _oCOfOrigin;
  final String? _otherRace;
  final String? _otherReligion;
  final String? _profilePhoto;
  final String? _permanentAddress;
  final String? _race;
  final String? _religion;
  final String? _sapNo;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  EmpPersonalInfoModelIdentifier get modelIdentifier {
      return EmpPersonalInfoModelIdentifier(
        id: id
      );
  }
  
  String get empID {
    try {
      return _empID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get age {
    return _age;
  }
  
  String? get aTQualify {
    return _aTQualify;
  }
  
  String? get alternateNo {
    return _alternateNo;
  }
  
  String? get agent {
    return _agent;
  }
  
  String get contactNo {
    try {
      return _contactNo!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get cob {
    return _cob;
  }
  
  String? get ctryOfOrigin {
    return _ctryOfOrigin;
  }
  
  String? get chinese {
    return _chinese;
  }
  
  String get dob {
    try {
      return _dob!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get educLevel {
    return _educLevel;
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String>? get eduDetails {
    return _eduDetails;
  }
  
  String? get empBadgeNo {
    return _empBadgeNo;
  }
  
  List<String>? get empDocUpload {
    return _empDocUpload;
  }
  
  List<String>? get familyDetails {
    return _familyDetails;
  }
  
  String get gender {
    try {
      return _gender!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get lang {
    return _lang;
  }
  
  String get marital {
    try {
      return _marital!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get nationality {
    try {
      return _nationality!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get nationalCat {
    return _nationalCat;
  }
  
  String? get otherNation {
    return _otherNation;
  }
  
  String? get oCOfOrigin {
    return _oCOfOrigin;
  }
  
  String? get otherRace {
    return _otherRace;
  }
  
  String? get otherReligion {
    return _otherReligion;
  }
  
  String? get profilePhoto {
    return _profilePhoto;
  }
  
  String get permanentAddress {
    try {
      return _permanentAddress!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get race {
    try {
      return _race!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get religion {
    try {
      return _religion!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get sapNo {
    return _sapNo;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const EmpPersonalInfo._internal({required this.id, required empID, age, aTQualify, alternateNo, agent, required contactNo, cob, ctryOfOrigin, chinese, required dob, educLevel, required email, eduDetails, empBadgeNo, empDocUpload, familyDetails, required gender, lang, required marital, required name, required nationality, nationalCat, otherNation, oCOfOrigin, otherRace, otherReligion, profilePhoto, required permanentAddress, required race, required religion, sapNo, createdAt, updatedAt}): _empID = empID, _age = age, _aTQualify = aTQualify, _alternateNo = alternateNo, _agent = agent, _contactNo = contactNo, _cob = cob, _ctryOfOrigin = ctryOfOrigin, _chinese = chinese, _dob = dob, _educLevel = educLevel, _email = email, _eduDetails = eduDetails, _empBadgeNo = empBadgeNo, _empDocUpload = empDocUpload, _familyDetails = familyDetails, _gender = gender, _lang = lang, _marital = marital, _name = name, _nationality = nationality, _nationalCat = nationalCat, _otherNation = otherNation, _oCOfOrigin = oCOfOrigin, _otherRace = otherRace, _otherReligion = otherReligion, _profilePhoto = profilePhoto, _permanentAddress = permanentAddress, _race = race, _religion = religion, _sapNo = sapNo, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory EmpPersonalInfo({String? id, required String empID, int? age, String? aTQualify, String? alternateNo, String? agent, required String contactNo, String? cob, String? ctryOfOrigin, String? chinese, required String dob, String? educLevel, required String email, List<String>? eduDetails, String? empBadgeNo, List<String>? empDocUpload, List<String>? familyDetails, required String gender, String? lang, required String marital, required String name, required String nationality, String? nationalCat, String? otherNation, String? oCOfOrigin, String? otherRace, String? otherReligion, String? profilePhoto, required String permanentAddress, required String race, required String religion, String? sapNo}) {
    return EmpPersonalInfo._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      age: age,
      aTQualify: aTQualify,
      alternateNo: alternateNo,
      agent: agent,
      contactNo: contactNo,
      cob: cob,
      ctryOfOrigin: ctryOfOrigin,
      chinese: chinese,
      dob: dob,
      educLevel: educLevel,
      email: email,
      eduDetails: eduDetails != null ? List<String>.unmodifiable(eduDetails) : eduDetails,
      empBadgeNo: empBadgeNo,
      empDocUpload: empDocUpload != null ? List<String>.unmodifiable(empDocUpload) : empDocUpload,
      familyDetails: familyDetails != null ? List<String>.unmodifiable(familyDetails) : familyDetails,
      gender: gender,
      lang: lang,
      marital: marital,
      name: name,
      nationality: nationality,
      nationalCat: nationalCat,
      otherNation: otherNation,
      oCOfOrigin: oCOfOrigin,
      otherRace: otherRace,
      otherReligion: otherReligion,
      profilePhoto: profilePhoto,
      permanentAddress: permanentAddress,
      race: race,
      religion: religion,
      sapNo: sapNo);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmpPersonalInfo &&
      id == other.id &&
      _empID == other._empID &&
      _age == other._age &&
      _aTQualify == other._aTQualify &&
      _alternateNo == other._alternateNo &&
      _agent == other._agent &&
      _contactNo == other._contactNo &&
      _cob == other._cob &&
      _ctryOfOrigin == other._ctryOfOrigin &&
      _chinese == other._chinese &&
      _dob == other._dob &&
      _educLevel == other._educLevel &&
      _email == other._email &&
      DeepCollectionEquality().equals(_eduDetails, other._eduDetails) &&
      _empBadgeNo == other._empBadgeNo &&
      DeepCollectionEquality().equals(_empDocUpload, other._empDocUpload) &&
      DeepCollectionEquality().equals(_familyDetails, other._familyDetails) &&
      _gender == other._gender &&
      _lang == other._lang &&
      _marital == other._marital &&
      _name == other._name &&
      _nationality == other._nationality &&
      _nationalCat == other._nationalCat &&
      _otherNation == other._otherNation &&
      _oCOfOrigin == other._oCOfOrigin &&
      _otherRace == other._otherRace &&
      _otherReligion == other._otherReligion &&
      _profilePhoto == other._profilePhoto &&
      _permanentAddress == other._permanentAddress &&
      _race == other._race &&
      _religion == other._religion &&
      _sapNo == other._sapNo;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("EmpPersonalInfo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("age=" + (_age != null ? _age!.toString() : "null") + ", ");
    buffer.write("aTQualify=" + "$_aTQualify" + ", ");
    buffer.write("alternateNo=" + "$_alternateNo" + ", ");
    buffer.write("agent=" + "$_agent" + ", ");
    buffer.write("contactNo=" + "$_contactNo" + ", ");
    buffer.write("cob=" + "$_cob" + ", ");
    buffer.write("ctryOfOrigin=" + "$_ctryOfOrigin" + ", ");
    buffer.write("chinese=" + "$_chinese" + ", ");
    buffer.write("dob=" + "$_dob" + ", ");
    buffer.write("educLevel=" + "$_educLevel" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("eduDetails=" + (_eduDetails != null ? _eduDetails!.toString() : "null") + ", ");
    buffer.write("empBadgeNo=" + "$_empBadgeNo" + ", ");
    buffer.write("empDocUpload=" + (_empDocUpload != null ? _empDocUpload!.toString() : "null") + ", ");
    buffer.write("familyDetails=" + (_familyDetails != null ? _familyDetails!.toString() : "null") + ", ");
    buffer.write("gender=" + "$_gender" + ", ");
    buffer.write("lang=" + "$_lang" + ", ");
    buffer.write("marital=" + "$_marital" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("nationality=" + "$_nationality" + ", ");
    buffer.write("nationalCat=" + "$_nationalCat" + ", ");
    buffer.write("otherNation=" + "$_otherNation" + ", ");
    buffer.write("oCOfOrigin=" + "$_oCOfOrigin" + ", ");
    buffer.write("otherRace=" + "$_otherRace" + ", ");
    buffer.write("otherReligion=" + "$_otherReligion" + ", ");
    buffer.write("profilePhoto=" + "$_profilePhoto" + ", ");
    buffer.write("permanentAddress=" + "$_permanentAddress" + ", ");
    buffer.write("race=" + "$_race" + ", ");
    buffer.write("religion=" + "$_religion" + ", ");
    buffer.write("sapNo=" + "$_sapNo" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  EmpPersonalInfo copyWith({String? empID, int? age, String? aTQualify, String? alternateNo, String? agent, String? contactNo, String? cob, String? ctryOfOrigin, String? chinese, String? dob, String? educLevel, String? email, List<String>? eduDetails, String? empBadgeNo, List<String>? empDocUpload, List<String>? familyDetails, String? gender, String? lang, String? marital, String? name, String? nationality, String? nationalCat, String? otherNation, String? oCOfOrigin, String? otherRace, String? otherReligion, String? profilePhoto, String? permanentAddress, String? race, String? religion, String? sapNo}) {
    return EmpPersonalInfo._internal(
      id: id,
      empID: empID ?? this.empID,
      age: age ?? this.age,
      aTQualify: aTQualify ?? this.aTQualify,
      alternateNo: alternateNo ?? this.alternateNo,
      agent: agent ?? this.agent,
      contactNo: contactNo ?? this.contactNo,
      cob: cob ?? this.cob,
      ctryOfOrigin: ctryOfOrigin ?? this.ctryOfOrigin,
      chinese: chinese ?? this.chinese,
      dob: dob ?? this.dob,
      educLevel: educLevel ?? this.educLevel,
      email: email ?? this.email,
      eduDetails: eduDetails ?? this.eduDetails,
      empBadgeNo: empBadgeNo ?? this.empBadgeNo,
      empDocUpload: empDocUpload ?? this.empDocUpload,
      familyDetails: familyDetails ?? this.familyDetails,
      gender: gender ?? this.gender,
      lang: lang ?? this.lang,
      marital: marital ?? this.marital,
      name: name ?? this.name,
      nationality: nationality ?? this.nationality,
      nationalCat: nationalCat ?? this.nationalCat,
      otherNation: otherNation ?? this.otherNation,
      oCOfOrigin: oCOfOrigin ?? this.oCOfOrigin,
      otherRace: otherRace ?? this.otherRace,
      otherReligion: otherReligion ?? this.otherReligion,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      permanentAddress: permanentAddress ?? this.permanentAddress,
      race: race ?? this.race,
      religion: religion ?? this.religion,
      sapNo: sapNo ?? this.sapNo);
  }
  
  EmpPersonalInfo copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<int?>? age,
    ModelFieldValue<String?>? aTQualify,
    ModelFieldValue<String?>? alternateNo,
    ModelFieldValue<String?>? agent,
    ModelFieldValue<String>? contactNo,
    ModelFieldValue<String?>? cob,
    ModelFieldValue<String?>? ctryOfOrigin,
    ModelFieldValue<String?>? chinese,
    ModelFieldValue<String>? dob,
    ModelFieldValue<String?>? educLevel,
    ModelFieldValue<String>? email,
    ModelFieldValue<List<String>?>? eduDetails,
    ModelFieldValue<String?>? empBadgeNo,
    ModelFieldValue<List<String>?>? empDocUpload,
    ModelFieldValue<List<String>?>? familyDetails,
    ModelFieldValue<String>? gender,
    ModelFieldValue<String?>? lang,
    ModelFieldValue<String>? marital,
    ModelFieldValue<String>? name,
    ModelFieldValue<String>? nationality,
    ModelFieldValue<String?>? nationalCat,
    ModelFieldValue<String?>? otherNation,
    ModelFieldValue<String?>? oCOfOrigin,
    ModelFieldValue<String?>? otherRace,
    ModelFieldValue<String?>? otherReligion,
    ModelFieldValue<String?>? profilePhoto,
    ModelFieldValue<String>? permanentAddress,
    ModelFieldValue<String>? race,
    ModelFieldValue<String>? religion,
    ModelFieldValue<String?>? sapNo
  }) {
    return EmpPersonalInfo._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      age: age == null ? this.age : age.value,
      aTQualify: aTQualify == null ? this.aTQualify : aTQualify.value,
      alternateNo: alternateNo == null ? this.alternateNo : alternateNo.value,
      agent: agent == null ? this.agent : agent.value,
      contactNo: contactNo == null ? this.contactNo : contactNo.value,
      cob: cob == null ? this.cob : cob.value,
      ctryOfOrigin: ctryOfOrigin == null ? this.ctryOfOrigin : ctryOfOrigin.value,
      chinese: chinese == null ? this.chinese : chinese.value,
      dob: dob == null ? this.dob : dob.value,
      educLevel: educLevel == null ? this.educLevel : educLevel.value,
      email: email == null ? this.email : email.value,
      eduDetails: eduDetails == null ? this.eduDetails : eduDetails.value,
      empBadgeNo: empBadgeNo == null ? this.empBadgeNo : empBadgeNo.value,
      empDocUpload: empDocUpload == null ? this.empDocUpload : empDocUpload.value,
      familyDetails: familyDetails == null ? this.familyDetails : familyDetails.value,
      gender: gender == null ? this.gender : gender.value,
      lang: lang == null ? this.lang : lang.value,
      marital: marital == null ? this.marital : marital.value,
      name: name == null ? this.name : name.value,
      nationality: nationality == null ? this.nationality : nationality.value,
      nationalCat: nationalCat == null ? this.nationalCat : nationalCat.value,
      otherNation: otherNation == null ? this.otherNation : otherNation.value,
      oCOfOrigin: oCOfOrigin == null ? this.oCOfOrigin : oCOfOrigin.value,
      otherRace: otherRace == null ? this.otherRace : otherRace.value,
      otherReligion: otherReligion == null ? this.otherReligion : otherReligion.value,
      profilePhoto: profilePhoto == null ? this.profilePhoto : profilePhoto.value,
      permanentAddress: permanentAddress == null ? this.permanentAddress : permanentAddress.value,
      race: race == null ? this.race : race.value,
      religion: religion == null ? this.religion : religion.value,
      sapNo: sapNo == null ? this.sapNo : sapNo.value
    );
  }
  
  EmpPersonalInfo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _age = (json['age'] as num?)?.toInt(),
      _aTQualify = json['aTQualify'],
      _alternateNo = json['alternateNo'],
      _agent = json['agent'],
      _contactNo = json['contactNo'],
      _cob = json['cob'],
      _ctryOfOrigin = json['ctryOfOrigin'],
      _chinese = json['chinese'],
      _dob = json['dob'],
      _educLevel = json['educLevel'],
      _email = json['email'],
      _eduDetails = json['eduDetails']?.cast<String>(),
      _empBadgeNo = json['empBadgeNo'],
      _empDocUpload = json['empDocUpload']?.cast<String>(),
      _familyDetails = json['familyDetails']?.cast<String>(),
      _gender = json['gender'],
      _lang = json['lang'],
      _marital = json['marital'],
      _name = json['name'],
      _nationality = json['nationality'],
      _nationalCat = json['nationalCat'],
      _otherNation = json['otherNation'],
      _oCOfOrigin = json['oCOfOrigin'],
      _otherRace = json['otherRace'],
      _otherReligion = json['otherReligion'],
      _profilePhoto = json['profilePhoto'],
      _permanentAddress = json['permanentAddress'],
      _race = json['race'],
      _religion = json['religion'],
      _sapNo = json['sapNo'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'age': _age, 'aTQualify': _aTQualify, 'alternateNo': _alternateNo, 'agent': _agent, 'contactNo': _contactNo, 'cob': _cob, 'ctryOfOrigin': _ctryOfOrigin, 'chinese': _chinese, 'dob': _dob, 'educLevel': _educLevel, 'email': _email, 'eduDetails': _eduDetails, 'empBadgeNo': _empBadgeNo, 'empDocUpload': _empDocUpload, 'familyDetails': _familyDetails, 'gender': _gender, 'lang': _lang, 'marital': _marital, 'name': _name, 'nationality': _nationality, 'nationalCat': _nationalCat, 'otherNation': _otherNation, 'oCOfOrigin': _oCOfOrigin, 'otherRace': _otherRace, 'otherReligion': _otherReligion, 'profilePhoto': _profilePhoto, 'permanentAddress': _permanentAddress, 'race': _race, 'religion': _religion, 'sapNo': _sapNo, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'age': _age,
    'aTQualify': _aTQualify,
    'alternateNo': _alternateNo,
    'agent': _agent,
    'contactNo': _contactNo,
    'cob': _cob,
    'ctryOfOrigin': _ctryOfOrigin,
    'chinese': _chinese,
    'dob': _dob,
    'educLevel': _educLevel,
    'email': _email,
    'eduDetails': _eduDetails,
    'empBadgeNo': _empBadgeNo,
    'empDocUpload': _empDocUpload,
    'familyDetails': _familyDetails,
    'gender': _gender,
    'lang': _lang,
    'marital': _marital,
    'name': _name,
    'nationality': _nationality,
    'nationalCat': _nationalCat,
    'otherNation': _otherNation,
    'oCOfOrigin': _oCOfOrigin,
    'otherRace': _otherRace,
    'otherReligion': _otherReligion,
    'profilePhoto': _profilePhoto,
    'permanentAddress': _permanentAddress,
    'race': _race,
    'religion': _religion,
    'sapNo': _sapNo,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<EmpPersonalInfoModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<EmpPersonalInfoModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final AGE = amplify_core.QueryField(fieldName: "age");
  static final ATQUALIFY = amplify_core.QueryField(fieldName: "aTQualify");
  static final ALTERNATENO = amplify_core.QueryField(fieldName: "alternateNo");
  static final AGENT = amplify_core.QueryField(fieldName: "agent");
  static final CONTACTNO = amplify_core.QueryField(fieldName: "contactNo");
  static final COB = amplify_core.QueryField(fieldName: "cob");
  static final CTRYOFORIGIN = amplify_core.QueryField(fieldName: "ctryOfOrigin");
  static final CHINESE = amplify_core.QueryField(fieldName: "chinese");
  static final DOB = amplify_core.QueryField(fieldName: "dob");
  static final EDUCLEVEL = amplify_core.QueryField(fieldName: "educLevel");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final EDUDETAILS = amplify_core.QueryField(fieldName: "eduDetails");
  static final EMPBADGENO = amplify_core.QueryField(fieldName: "empBadgeNo");
  static final EMPDOCUPLOAD = amplify_core.QueryField(fieldName: "empDocUpload");
  static final FAMILYDETAILS = amplify_core.QueryField(fieldName: "familyDetails");
  static final GENDER = amplify_core.QueryField(fieldName: "gender");
  static final LANG = amplify_core.QueryField(fieldName: "lang");
  static final MARITAL = amplify_core.QueryField(fieldName: "marital");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final NATIONALITY = amplify_core.QueryField(fieldName: "nationality");
  static final NATIONALCAT = amplify_core.QueryField(fieldName: "nationalCat");
  static final OTHERNATION = amplify_core.QueryField(fieldName: "otherNation");
  static final OCOFORIGIN = amplify_core.QueryField(fieldName: "oCOfOrigin");
  static final OTHERRACE = amplify_core.QueryField(fieldName: "otherRace");
  static final OTHERRELIGION = amplify_core.QueryField(fieldName: "otherReligion");
  static final PROFILEPHOTO = amplify_core.QueryField(fieldName: "profilePhoto");
  static final PERMANENTADDRESS = amplify_core.QueryField(fieldName: "permanentAddress");
  static final RACE = amplify_core.QueryField(fieldName: "race");
  static final RELIGION = amplify_core.QueryField(fieldName: "religion");
  static final SAPNO = amplify_core.QueryField(fieldName: "sapNo");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "EmpPersonalInfo";
    modelSchemaDefinition.pluralName = "EmpPersonalInfos";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.AGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.ATQUALIFY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.ALTERNATENO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.AGENT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.CONTACTNO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.COB,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.CTRYOFORIGIN,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.CHINESE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.DOB,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.EDUCLEVEL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.EDUDETAILS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.EMPBADGENO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.EMPDOCUPLOAD,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.FAMILYDETAILS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.GENDER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.LANG,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.MARITAL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.NATIONALITY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.NATIONALCAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.OTHERNATION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.OCOFORIGIN,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.OTHERRACE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.OTHERRELIGION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.PROFILEPHOTO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.PERMANENTADDRESS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.RACE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.RELIGION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmpPersonalInfo.SAPNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _EmpPersonalInfoModelType extends amplify_core.ModelType<EmpPersonalInfo> {
  const _EmpPersonalInfoModelType();
  
  @override
  EmpPersonalInfo fromJson(Map<String, dynamic> jsonData) {
    return EmpPersonalInfo.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'EmpPersonalInfo';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [EmpPersonalInfo] in your schema.
 */
class EmpPersonalInfoModelIdentifier implements amplify_core.ModelIdentifier<EmpPersonalInfo> {
  final String id;

  /** Create an instance of EmpPersonalInfoModelIdentifier using [id] the primary key. */
  const EmpPersonalInfoModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'EmpPersonalInfoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is EmpPersonalInfoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}