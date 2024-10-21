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

import 'LeaveWorkInfo.dart' as awe_lwi;
import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;

import 'TerminationWorkInfo.dart' as awe_twi;


/** This is an auto generated class representing the EmployeeWorkInfo type in your schema. */
class EmployeeWorkInfo extends amplify_core.Model {
  static const classType = const _EmployeeWorkInfoModelType();
  final String id;
  final String? _empID;
  final String? _dateOfJoin;
  final String? _department;
  final String? _workPosition;
  final String? _upgradePosition;
  final String? _jobDescription;
  final String? _skillPool;
  final String? _workStatus;
  final String? _contractStartDate;
  final String? _contractEndDate;
  final String? _contractPeriodStatus;
  final String? _ProbationaryStartDate;
  final String? _ProbationaryEndDate;
  final String? _normalWorkingHours;
  final String? _normalWorkingWeek;
  final String? _salaryType;
  final String? _normalWorkingMonth;
  final String? _employmentWorkStatus;
  final String? _jobCategory;
  final String? _otherJobCategory;
  final String? _upgradeDate;
  final awe_twi.TerminationWorkInfo? _TerminationWorkInfo;
  final awe_lwi.LeaveWorkInfo? _LeaveWorkInfo;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _employeeWorkInfoTerminationWorkInfoId;
  final String? _employeeWorkInfoLeaveWorkInfoId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  EmployeeWorkInfoModelIdentifier get modelIdentifier {
      return EmployeeWorkInfoModelIdentifier(
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
  
  String get dateOfJoin {
    try {
      return _dateOfJoin!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get department {
    return _department;
  }
  
  String? get workPosition {
    return _workPosition;
  }
  
  String get upgradePosition {
    try {
      return _upgradePosition!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get jobDescription {
    try {
      return _jobDescription!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get skillPool {
    try {
      return _skillPool!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get workStatus {
    try {
      return _workStatus!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get contractStartDate {
    try {
      return _contractStartDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get contractEndDate {
    try {
      return _contractEndDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get contractPeriodStatus {
    try {
      return _contractPeriodStatus!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get ProbationaryStartDate {
    try {
      return _ProbationaryStartDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get ProbationaryEndDate {
    try {
      return _ProbationaryEndDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get normalWorkingHours {
    try {
      return _normalWorkingHours!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get normalWorkingWeek {
    try {
      return _normalWorkingWeek!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get salaryType {
    try {
      return _salaryType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get normalWorkingMonth {
    return _normalWorkingMonth;
  }
  
  String get employmentWorkStatus {
    try {
      return _employmentWorkStatus!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get jobCategory {
    try {
      return _jobCategory!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get otherJobCategory {
    return _otherJobCategory;
  }
  
  String get upgradeDate {
    try {
      return _upgradeDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  awe_twi.TerminationWorkInfo? get TerminationWorkInfo {
    return _TerminationWorkInfo;
  }
  
  awe_lwi.LeaveWorkInfo? get LeaveWorkInfo {
    return _LeaveWorkInfo;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get employeeWorkInfoTerminationWorkInfoId {
    return _employeeWorkInfoTerminationWorkInfoId;
  }
  
  String? get employeeWorkInfoLeaveWorkInfoId {
    return _employeeWorkInfoLeaveWorkInfoId;
  }
  
  const EmployeeWorkInfo._internal({required this.id, required empID, required dateOfJoin, department, workPosition, required upgradePosition, required jobDescription, required skillPool, required workStatus, required contractStartDate, required contractEndDate, required contractPeriodStatus, required ProbationaryStartDate, required ProbationaryEndDate, required normalWorkingHours, required normalWorkingWeek, required salaryType, normalWorkingMonth, required employmentWorkStatus, required jobCategory, otherJobCategory, required upgradeDate, TerminationWorkInfo, LeaveWorkInfo, createdAt, updatedAt, employeeWorkInfoTerminationWorkInfoId, employeeWorkInfoLeaveWorkInfoId}): _empID = empID, _dateOfJoin = dateOfJoin, _department = department, _workPosition = workPosition, _upgradePosition = upgradePosition, _jobDescription = jobDescription, _skillPool = skillPool, _workStatus = workStatus, _contractStartDate = contractStartDate, _contractEndDate = contractEndDate, _contractPeriodStatus = contractPeriodStatus, _ProbationaryStartDate = ProbationaryStartDate, _ProbationaryEndDate = ProbationaryEndDate, _normalWorkingHours = normalWorkingHours, _normalWorkingWeek = normalWorkingWeek, _salaryType = salaryType, _normalWorkingMonth = normalWorkingMonth, _employmentWorkStatus = employmentWorkStatus, _jobCategory = jobCategory, _otherJobCategory = otherJobCategory, _upgradeDate = upgradeDate, _TerminationWorkInfo = TerminationWorkInfo, _LeaveWorkInfo = LeaveWorkInfo, _createdAt = createdAt, _updatedAt = updatedAt, _employeeWorkInfoTerminationWorkInfoId = employeeWorkInfoTerminationWorkInfoId, _employeeWorkInfoLeaveWorkInfoId = employeeWorkInfoLeaveWorkInfoId;
  
  factory EmployeeWorkInfo({String? id, required String empID, required String dateOfJoin, String? department, String? workPosition, required String upgradePosition, required String jobDescription, required String skillPool, required String workStatus, required String contractStartDate, required String contractEndDate, required String contractPeriodStatus, required String ProbationaryStartDate, required String ProbationaryEndDate, required String normalWorkingHours, required String normalWorkingWeek, required String salaryType, String? normalWorkingMonth, required String employmentWorkStatus, required String jobCategory, String? otherJobCategory, required String upgradeDate, awe_twi.TerminationWorkInfo? TerminationWorkInfo, awe_lwi.LeaveWorkInfo? LeaveWorkInfo, String? employeeWorkInfoTerminationWorkInfoId, String? employeeWorkInfoLeaveWorkInfoId}) {
    return EmployeeWorkInfo._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      dateOfJoin: dateOfJoin,
      department: department,
      workPosition: workPosition,
      upgradePosition: upgradePosition,
      jobDescription: jobDescription,
      skillPool: skillPool,
      workStatus: workStatus,
      contractStartDate: contractStartDate,
      contractEndDate: contractEndDate,
      contractPeriodStatus: contractPeriodStatus,
      ProbationaryStartDate: ProbationaryStartDate,
      ProbationaryEndDate: ProbationaryEndDate,
      normalWorkingHours: normalWorkingHours,
      normalWorkingWeek: normalWorkingWeek,
      salaryType: salaryType,
      normalWorkingMonth: normalWorkingMonth,
      employmentWorkStatus: employmentWorkStatus,
      jobCategory: jobCategory,
      otherJobCategory: otherJobCategory,
      upgradeDate: upgradeDate,
      TerminationWorkInfo: TerminationWorkInfo,
      LeaveWorkInfo: LeaveWorkInfo,
      employeeWorkInfoTerminationWorkInfoId: employeeWorkInfoTerminationWorkInfoId,
      employeeWorkInfoLeaveWorkInfoId: employeeWorkInfoLeaveWorkInfoId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmployeeWorkInfo &&
      id == other.id &&
      _empID == other._empID &&
      _dateOfJoin == other._dateOfJoin &&
      _department == other._department &&
      _workPosition == other._workPosition &&
      _upgradePosition == other._upgradePosition &&
      _jobDescription == other._jobDescription &&
      _skillPool == other._skillPool &&
      _workStatus == other._workStatus &&
      _contractStartDate == other._contractStartDate &&
      _contractEndDate == other._contractEndDate &&
      _contractPeriodStatus == other._contractPeriodStatus &&
      _ProbationaryStartDate == other._ProbationaryStartDate &&
      _ProbationaryEndDate == other._ProbationaryEndDate &&
      _normalWorkingHours == other._normalWorkingHours &&
      _normalWorkingWeek == other._normalWorkingWeek &&
      _salaryType == other._salaryType &&
      _normalWorkingMonth == other._normalWorkingMonth &&
      _employmentWorkStatus == other._employmentWorkStatus &&
      _jobCategory == other._jobCategory &&
      _otherJobCategory == other._otherJobCategory &&
      _upgradeDate == other._upgradeDate &&
      _TerminationWorkInfo == other._TerminationWorkInfo &&
      _LeaveWorkInfo == other._LeaveWorkInfo &&
      _employeeWorkInfoTerminationWorkInfoId == other._employeeWorkInfoTerminationWorkInfoId &&
      _employeeWorkInfoLeaveWorkInfoId == other._employeeWorkInfoLeaveWorkInfoId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("EmployeeWorkInfo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("dateOfJoin=" + "$_dateOfJoin" + ", ");
    buffer.write("department=" + "$_department" + ", ");
    buffer.write("workPosition=" + "$_workPosition" + ", ");
    buffer.write("upgradePosition=" + "$_upgradePosition" + ", ");
    buffer.write("jobDescription=" + "$_jobDescription" + ", ");
    buffer.write("skillPool=" + "$_skillPool" + ", ");
    buffer.write("workStatus=" + "$_workStatus" + ", ");
    buffer.write("contractStartDate=" + "$_contractStartDate" + ", ");
    buffer.write("contractEndDate=" + "$_contractEndDate" + ", ");
    buffer.write("contractPeriodStatus=" + "$_contractPeriodStatus" + ", ");
    buffer.write("ProbationaryStartDate=" + "$_ProbationaryStartDate" + ", ");
    buffer.write("ProbationaryEndDate=" + "$_ProbationaryEndDate" + ", ");
    buffer.write("normalWorkingHours=" + "$_normalWorkingHours" + ", ");
    buffer.write("normalWorkingWeek=" + "$_normalWorkingWeek" + ", ");
    buffer.write("salaryType=" + "$_salaryType" + ", ");
    buffer.write("normalWorkingMonth=" + "$_normalWorkingMonth" + ", ");
    buffer.write("employmentWorkStatus=" + "$_employmentWorkStatus" + ", ");
    buffer.write("jobCategory=" + "$_jobCategory" + ", ");
    buffer.write("otherJobCategory=" + "$_otherJobCategory" + ", ");
    buffer.write("upgradeDate=" + "$_upgradeDate" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("employeeWorkInfoTerminationWorkInfoId=" + "$_employeeWorkInfoTerminationWorkInfoId" + ", ");
    buffer.write("employeeWorkInfoLeaveWorkInfoId=" + "$_employeeWorkInfoLeaveWorkInfoId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  EmployeeWorkInfo copyWith({String? empID, String? dateOfJoin, String? department, String? workPosition, String? upgradePosition, String? jobDescription, String? skillPool, String? workStatus, String? contractStartDate, String? contractEndDate, String? contractPeriodStatus, String? ProbationaryStartDate, String? ProbationaryEndDate, String? normalWorkingHours, String? normalWorkingWeek, String? salaryType, String? normalWorkingMonth, String? employmentWorkStatus, String? jobCategory, String? otherJobCategory, String? upgradeDate, awe_twi.TerminationWorkInfo? TerminationWorkInfo, awe_lwi.LeaveWorkInfo? LeaveWorkInfo, String? employeeWorkInfoTerminationWorkInfoId, String? employeeWorkInfoLeaveWorkInfoId}) {
    return EmployeeWorkInfo._internal(
      id: id,
      empID: empID ?? this.empID,
      dateOfJoin: dateOfJoin ?? this.dateOfJoin,
      department: department ?? this.department,
      workPosition: workPosition ?? this.workPosition,
      upgradePosition: upgradePosition ?? this.upgradePosition,
      jobDescription: jobDescription ?? this.jobDescription,
      skillPool: skillPool ?? this.skillPool,
      workStatus: workStatus ?? this.workStatus,
      contractStartDate: contractStartDate ?? this.contractStartDate,
      contractEndDate: contractEndDate ?? this.contractEndDate,
      contractPeriodStatus: contractPeriodStatus ?? this.contractPeriodStatus,
      ProbationaryStartDate: ProbationaryStartDate ?? this.ProbationaryStartDate,
      ProbationaryEndDate: ProbationaryEndDate ?? this.ProbationaryEndDate,
      normalWorkingHours: normalWorkingHours ?? this.normalWorkingHours,
      normalWorkingWeek: normalWorkingWeek ?? this.normalWorkingWeek,
      salaryType: salaryType ?? this.salaryType,
      normalWorkingMonth: normalWorkingMonth ?? this.normalWorkingMonth,
      employmentWorkStatus: employmentWorkStatus ?? this.employmentWorkStatus,
      jobCategory: jobCategory ?? this.jobCategory,
      otherJobCategory: otherJobCategory ?? this.otherJobCategory,
      upgradeDate: upgradeDate ?? this.upgradeDate,
      TerminationWorkInfo: TerminationWorkInfo ?? this.TerminationWorkInfo,
      LeaveWorkInfo: LeaveWorkInfo ?? this.LeaveWorkInfo,
      employeeWorkInfoTerminationWorkInfoId: employeeWorkInfoTerminationWorkInfoId ?? this.employeeWorkInfoTerminationWorkInfoId,
      employeeWorkInfoLeaveWorkInfoId: employeeWorkInfoLeaveWorkInfoId ?? this.employeeWorkInfoLeaveWorkInfoId);
  }
  
  EmployeeWorkInfo copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<String>? dateOfJoin,
    ModelFieldValue<String?>? department,
    ModelFieldValue<String?>? workPosition,
    ModelFieldValue<String>? upgradePosition,
    ModelFieldValue<String>? jobDescription,
    ModelFieldValue<String>? skillPool,
    ModelFieldValue<String>? workStatus,
    ModelFieldValue<String>? contractStartDate,
    ModelFieldValue<String>? contractEndDate,
    ModelFieldValue<String>? contractPeriodStatus,
    ModelFieldValue<String>? ProbationaryStartDate,
    ModelFieldValue<String>? ProbationaryEndDate,
    ModelFieldValue<String>? normalWorkingHours,
    ModelFieldValue<String>? normalWorkingWeek,
    ModelFieldValue<String>? salaryType,
    ModelFieldValue<String?>? normalWorkingMonth,
    ModelFieldValue<String>? employmentWorkStatus,
    ModelFieldValue<String>? jobCategory,
    ModelFieldValue<String?>? otherJobCategory,
    ModelFieldValue<String>? upgradeDate,
    ModelFieldValue<awe_twi.TerminationWorkInfo?>? TerminationWorkInfo,
    ModelFieldValue<awe_lwi.LeaveWorkInfo?>? LeaveWorkInfo,
    ModelFieldValue<String?>? employeeWorkInfoTerminationWorkInfoId,
    ModelFieldValue<String?>? employeeWorkInfoLeaveWorkInfoId
  }) {
    return EmployeeWorkInfo._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      dateOfJoin: dateOfJoin == null ? this.dateOfJoin : dateOfJoin.value,
      department: department == null ? this.department : department.value,
      workPosition: workPosition == null ? this.workPosition : workPosition.value,
      upgradePosition: upgradePosition == null ? this.upgradePosition : upgradePosition.value,
      jobDescription: jobDescription == null ? this.jobDescription : jobDescription.value,
      skillPool: skillPool == null ? this.skillPool : skillPool.value,
      workStatus: workStatus == null ? this.workStatus : workStatus.value,
      contractStartDate: contractStartDate == null ? this.contractStartDate : contractStartDate.value,
      contractEndDate: contractEndDate == null ? this.contractEndDate : contractEndDate.value,
      contractPeriodStatus: contractPeriodStatus == null ? this.contractPeriodStatus : contractPeriodStatus.value,
      ProbationaryStartDate: ProbationaryStartDate == null ? this.ProbationaryStartDate : ProbationaryStartDate.value,
      ProbationaryEndDate: ProbationaryEndDate == null ? this.ProbationaryEndDate : ProbationaryEndDate.value,
      normalWorkingHours: normalWorkingHours == null ? this.normalWorkingHours : normalWorkingHours.value,
      normalWorkingWeek: normalWorkingWeek == null ? this.normalWorkingWeek : normalWorkingWeek.value,
      salaryType: salaryType == null ? this.salaryType : salaryType.value,
      normalWorkingMonth: normalWorkingMonth == null ? this.normalWorkingMonth : normalWorkingMonth.value,
      employmentWorkStatus: employmentWorkStatus == null ? this.employmentWorkStatus : employmentWorkStatus.value,
      jobCategory: jobCategory == null ? this.jobCategory : jobCategory.value,
      otherJobCategory: otherJobCategory == null ? this.otherJobCategory : otherJobCategory.value,
      upgradeDate: upgradeDate == null ? this.upgradeDate : upgradeDate.value,
      TerminationWorkInfo: TerminationWorkInfo == null ? this.TerminationWorkInfo : TerminationWorkInfo.value,
      LeaveWorkInfo: LeaveWorkInfo == null ? this.LeaveWorkInfo : LeaveWorkInfo.value,
      employeeWorkInfoTerminationWorkInfoId: employeeWorkInfoTerminationWorkInfoId == null ? this.employeeWorkInfoTerminationWorkInfoId : employeeWorkInfoTerminationWorkInfoId.value,
      employeeWorkInfoLeaveWorkInfoId: employeeWorkInfoLeaveWorkInfoId == null ? this.employeeWorkInfoLeaveWorkInfoId : employeeWorkInfoLeaveWorkInfoId.value
    );
  }
  
  EmployeeWorkInfo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _dateOfJoin = json['dateOfJoin'],
      _department = json['department'],
      _workPosition = json['workPosition'],
      _upgradePosition = json['upgradePosition'],
      _jobDescription = json['jobDescription'],
      _skillPool = json['skillPool'],
      _workStatus = json['workStatus'],
      _contractStartDate = json['contractStartDate'],
      _contractEndDate = json['contractEndDate'],
      _contractPeriodStatus = json['contractPeriodStatus'],
      _ProbationaryStartDate = json['ProbationaryStartDate'],
      _ProbationaryEndDate = json['ProbationaryEndDate'],
      _normalWorkingHours = json['normalWorkingHours'],
      _normalWorkingWeek = json['normalWorkingWeek'],
      _salaryType = json['salaryType'],
      _normalWorkingMonth = json['normalWorkingMonth'],
      _employmentWorkStatus = json['employmentWorkStatus'],
      _jobCategory = json['jobCategory'],
      _otherJobCategory = json['otherJobCategory'],
      _upgradeDate = json['upgradeDate'],
      _TerminationWorkInfo = json['TerminationWorkInfo'] != null
        ? json['TerminationWorkInfo']['serializedData'] != null
          ? awe_twi.TerminationWorkInfo.fromJson(new Map<String, dynamic>.from(json['TerminationWorkInfo']['serializedData']))
          : awe_twi.TerminationWorkInfo.fromJson(new Map<String, dynamic>.from(json['TerminationWorkInfo']))
        : null,
      _LeaveWorkInfo = json['LeaveWorkInfo'] != null
        ? json['LeaveWorkInfo']['serializedData'] != null
          ? awe_lwi.LeaveWorkInfo.fromJson(new Map<String, dynamic>.from(json['LeaveWorkInfo']['serializedData']))
          : awe_lwi.LeaveWorkInfo.fromJson(new Map<String, dynamic>.from(json['LeaveWorkInfo']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _employeeWorkInfoTerminationWorkInfoId = json['employeeWorkInfoTerminationWorkInfoId'],
      _employeeWorkInfoLeaveWorkInfoId = json['employeeWorkInfoLeaveWorkInfoId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'dateOfJoin': _dateOfJoin, 'department': _department, 'workPosition': _workPosition, 'upgradePosition': _upgradePosition, 'jobDescription': _jobDescription, 'skillPool': _skillPool, 'workStatus': _workStatus, 'contractStartDate': _contractStartDate, 'contractEndDate': _contractEndDate, 'contractPeriodStatus': _contractPeriodStatus, 'ProbationaryStartDate': _ProbationaryStartDate, 'ProbationaryEndDate': _ProbationaryEndDate, 'normalWorkingHours': _normalWorkingHours, 'normalWorkingWeek': _normalWorkingWeek, 'salaryType': _salaryType, 'normalWorkingMonth': _normalWorkingMonth, 'employmentWorkStatus': _employmentWorkStatus, 'jobCategory': _jobCategory, 'otherJobCategory': _otherJobCategory, 'upgradeDate': _upgradeDate, 'TerminationWorkInfo': _TerminationWorkInfo?.toJson(), 'LeaveWorkInfo': _LeaveWorkInfo?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'employeeWorkInfoTerminationWorkInfoId': _employeeWorkInfoTerminationWorkInfoId, 'employeeWorkInfoLeaveWorkInfoId': _employeeWorkInfoLeaveWorkInfoId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'dateOfJoin': _dateOfJoin,
    'department': _department,
    'workPosition': _workPosition,
    'upgradePosition': _upgradePosition,
    'jobDescription': _jobDescription,
    'skillPool': _skillPool,
    'workStatus': _workStatus,
    'contractStartDate': _contractStartDate,
    'contractEndDate': _contractEndDate,
    'contractPeriodStatus': _contractPeriodStatus,
    'ProbationaryStartDate': _ProbationaryStartDate,
    'ProbationaryEndDate': _ProbationaryEndDate,
    'normalWorkingHours': _normalWorkingHours,
    'normalWorkingWeek': _normalWorkingWeek,
    'salaryType': _salaryType,
    'normalWorkingMonth': _normalWorkingMonth,
    'employmentWorkStatus': _employmentWorkStatus,
    'jobCategory': _jobCategory,
    'otherJobCategory': _otherJobCategory,
    'upgradeDate': _upgradeDate,
    'TerminationWorkInfo': _TerminationWorkInfo,
    'LeaveWorkInfo': _LeaveWorkInfo,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'employeeWorkInfoTerminationWorkInfoId': _employeeWorkInfoTerminationWorkInfoId,
    'employeeWorkInfoLeaveWorkInfoId': _employeeWorkInfoLeaveWorkInfoId
  };

  static final amplify_core.QueryModelIdentifier<EmployeeWorkInfoModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<EmployeeWorkInfoModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final DATEOFJOIN = amplify_core.QueryField(fieldName: "dateOfJoin");
  static final DEPARTMENT = amplify_core.QueryField(fieldName: "department");
  static final WORKPOSITION = amplify_core.QueryField(fieldName: "workPosition");
  static final UPGRADEPOSITION = amplify_core.QueryField(fieldName: "upgradePosition");
  static final JOBDESCRIPTION = amplify_core.QueryField(fieldName: "jobDescription");
  static final SKILLPOOL = amplify_core.QueryField(fieldName: "skillPool");
  static final WORKSTATUS = amplify_core.QueryField(fieldName: "workStatus");
  static final CONTRACTSTARTDATE = amplify_core.QueryField(fieldName: "contractStartDate");
  static final CONTRACTENDDATE = amplify_core.QueryField(fieldName: "contractEndDate");
  static final CONTRACTPERIODSTATUS = amplify_core.QueryField(fieldName: "contractPeriodStatus");
  static final PROBATIONARYSTARTDATE = amplify_core.QueryField(fieldName: "ProbationaryStartDate");
  static final PROBATIONARYENDDATE = amplify_core.QueryField(fieldName: "ProbationaryEndDate");
  static final NORMALWORKINGHOURS = amplify_core.QueryField(fieldName: "normalWorkingHours");
  static final NORMALWORKINGWEEK = amplify_core.QueryField(fieldName: "normalWorkingWeek");
  static final SALARYTYPE = amplify_core.QueryField(fieldName: "salaryType");
  static final NORMALWORKINGMONTH = amplify_core.QueryField(fieldName: "normalWorkingMonth");
  static final EMPLOYMENTWORKSTATUS = amplify_core.QueryField(fieldName: "employmentWorkStatus");
  static final JOBCATEGORY = amplify_core.QueryField(fieldName: "jobCategory");
  static final OTHERJOBCATEGORY = amplify_core.QueryField(fieldName: "otherJobCategory");
  static final UPGRADEDATE = amplify_core.QueryField(fieldName: "upgradeDate");
  static final TERMINATIONWORKINFO = amplify_core.QueryField(
    fieldName: "TerminationWorkInfo",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'TerminationWorkInfo'));
  static final LEAVEWORKINFO = amplify_core.QueryField(
    fieldName: "LeaveWorkInfo",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'LeaveWorkInfo'));
  static final EMPLOYEEWORKINFOTERMINATIONWORKINFOID = amplify_core.QueryField(fieldName: "employeeWorkInfoTerminationWorkInfoId");
  static final EMPLOYEEWORKINFOLEAVEWORKINFOID = amplify_core.QueryField(fieldName: "employeeWorkInfoLeaveWorkInfoId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "EmployeeWorkInfo";
    modelSchemaDefinition.pluralName = "EmployeeWorkInfos";
    
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
      key: EmployeeWorkInfo.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.DATEOFJOIN,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.DEPARTMENT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.WORKPOSITION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.UPGRADEPOSITION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.JOBDESCRIPTION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.SKILLPOOL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.WORKSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.CONTRACTSTARTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.CONTRACTENDDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.CONTRACTPERIODSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.PROBATIONARYSTARTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.PROBATIONARYENDDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.NORMALWORKINGHOURS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.NORMALWORKINGWEEK,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.SALARYTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.NORMALWORKINGMONTH,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.EMPLOYMENTWORKSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.JOBCATEGORY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.OTHERJOBCATEGORY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.UPGRADEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: EmployeeWorkInfo.TERMINATIONWORKINFO,
      isRequired: false,
      ofModelName: 'TerminationWorkInfo',
      associatedKey: awe_twi.TerminationWorkInfo.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: EmployeeWorkInfo.LEAVEWORKINFO,
      isRequired: false,
      ofModelName: 'LeaveWorkInfo',
      associatedKey: awe_lwi.LeaveWorkInfo.ID
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.EMPLOYEEWORKINFOTERMINATIONWORKINFOID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeWorkInfo.EMPLOYEEWORKINFOLEAVEWORKINFOID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _EmployeeWorkInfoModelType extends amplify_core.ModelType<EmployeeWorkInfo> {
  const _EmployeeWorkInfoModelType();
  
  @override
  EmployeeWorkInfo fromJson(Map<String, dynamic> jsonData) {
    return EmployeeWorkInfo.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'EmployeeWorkInfo';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [EmployeeWorkInfo] in your schema.
 */
class EmployeeWorkInfoModelIdentifier implements amplify_core.ModelIdentifier<EmployeeWorkInfo> {
  final String id;

  /** Create an instance of EmployeeWorkInfoModelIdentifier using [id] the primary key. */
  const EmployeeWorkInfoModelIdentifier({
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
  String toString() => 'EmployeeWorkInfoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is EmployeeWorkInfoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}