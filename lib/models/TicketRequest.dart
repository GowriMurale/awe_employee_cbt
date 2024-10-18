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


/** This is an auto generated class representing the TicketRequest type in your schema. */
class TicketRequest extends amplify_core.Model {
  static const classType = const _TicketRequestModelType();
  final String id;
  final String? _empID;
  final amplify_core.TemporalDate? _departureDate;
  final amplify_core.TemporalDate? _arrivalDate;
  final String? _destination;
  final String? _remarks;
  final String? _hrStatus;
  final amplify_core.TemporalDate? _hrDate;
  final String? _hrRemarks;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  TicketRequestModelIdentifier get modelIdentifier {
      return TicketRequestModelIdentifier(
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
  
  amplify_core.TemporalDate? get departureDate {
    return _departureDate;
  }
  
  amplify_core.TemporalDate? get arrivalDate {
    return _arrivalDate;
  }
  
  String? get destination {
    return _destination;
  }
  
  String? get remarks {
    return _remarks;
  }
  
  String? get hrStatus {
    return _hrStatus;
  }
  
  amplify_core.TemporalDate? get hrDate {
    return _hrDate;
  }
  
  String? get hrRemarks {
    return _hrRemarks;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const TicketRequest._internal({required this.id, required empID, departureDate, arrivalDate, destination, remarks, hrStatus, hrDate, hrRemarks, createdAt, updatedAt}): _empID = empID, _departureDate = departureDate, _arrivalDate = arrivalDate, _destination = destination, _remarks = remarks, _hrStatus = hrStatus, _hrDate = hrDate, _hrRemarks = hrRemarks, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory TicketRequest({String? id, required String empID, amplify_core.TemporalDate? departureDate, amplify_core.TemporalDate? arrivalDate, String? destination, String? remarks, String? hrStatus, amplify_core.TemporalDate? hrDate, String? hrRemarks}) {
    return TicketRequest._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      departureDate: departureDate,
      arrivalDate: arrivalDate,
      destination: destination,
      remarks: remarks,
      hrStatus: hrStatus,
      hrDate: hrDate,
      hrRemarks: hrRemarks);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TicketRequest &&
      id == other.id &&
      _empID == other._empID &&
      _departureDate == other._departureDate &&
      _arrivalDate == other._arrivalDate &&
      _destination == other._destination &&
      _remarks == other._remarks &&
      _hrStatus == other._hrStatus &&
      _hrDate == other._hrDate &&
      _hrRemarks == other._hrRemarks;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("TicketRequest {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("departureDate=" + (_departureDate != null ? _departureDate!.format() : "null") + ", ");
    buffer.write("arrivalDate=" + (_arrivalDate != null ? _arrivalDate!.format() : "null") + ", ");
    buffer.write("destination=" + "$_destination" + ", ");
    buffer.write("remarks=" + "$_remarks" + ", ");
    buffer.write("hrStatus=" + "$_hrStatus" + ", ");
    buffer.write("hrDate=" + (_hrDate != null ? _hrDate!.format() : "null") + ", ");
    buffer.write("hrRemarks=" + "$_hrRemarks" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  TicketRequest copyWith({String? empID, amplify_core.TemporalDate? departureDate, amplify_core.TemporalDate? arrivalDate, String? destination, String? remarks, String? hrStatus, amplify_core.TemporalDate? hrDate, String? hrRemarks}) {
    return TicketRequest._internal(
      id: id,
      empID: empID ?? this.empID,
      departureDate: departureDate ?? this.departureDate,
      arrivalDate: arrivalDate ?? this.arrivalDate,
      destination: destination ?? this.destination,
      remarks: remarks ?? this.remarks,
      hrStatus: hrStatus ?? this.hrStatus,
      hrDate: hrDate ?? this.hrDate,
      hrRemarks: hrRemarks ?? this.hrRemarks);
  }
  
  TicketRequest copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<amplify_core.TemporalDate?>? departureDate,
    ModelFieldValue<amplify_core.TemporalDate?>? arrivalDate,
    ModelFieldValue<String?>? destination,
    ModelFieldValue<String?>? remarks,
    ModelFieldValue<String?>? hrStatus,
    ModelFieldValue<amplify_core.TemporalDate?>? hrDate,
    ModelFieldValue<String?>? hrRemarks
  }) {
    return TicketRequest._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      departureDate: departureDate == null ? this.departureDate : departureDate.value,
      arrivalDate: arrivalDate == null ? this.arrivalDate : arrivalDate.value,
      destination: destination == null ? this.destination : destination.value,
      remarks: remarks == null ? this.remarks : remarks.value,
      hrStatus: hrStatus == null ? this.hrStatus : hrStatus.value,
      hrDate: hrDate == null ? this.hrDate : hrDate.value,
      hrRemarks: hrRemarks == null ? this.hrRemarks : hrRemarks.value
    );
  }
  
  TicketRequest.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _departureDate = json['departureDate'] != null ? amplify_core.TemporalDate.fromString(json['departureDate']) : null,
      _arrivalDate = json['arrivalDate'] != null ? amplify_core.TemporalDate.fromString(json['arrivalDate']) : null,
      _destination = json['destination'],
      _remarks = json['remarks'],
      _hrStatus = json['hrStatus'],
      _hrDate = json['hrDate'] != null ? amplify_core.TemporalDate.fromString(json['hrDate']) : null,
      _hrRemarks = json['hrRemarks'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'departureDate': _departureDate?.format(), 'arrivalDate': _arrivalDate?.format(), 'destination': _destination, 'remarks': _remarks, 'hrStatus': _hrStatus, 'hrDate': _hrDate?.format(), 'hrRemarks': _hrRemarks, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'departureDate': _departureDate,
    'arrivalDate': _arrivalDate,
    'destination': _destination,
    'remarks': _remarks,
    'hrStatus': _hrStatus,
    'hrDate': _hrDate,
    'hrRemarks': _hrRemarks,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<TicketRequestModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<TicketRequestModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final DEPARTUREDATE = amplify_core.QueryField(fieldName: "departureDate");
  static final ARRIVALDATE = amplify_core.QueryField(fieldName: "arrivalDate");
  static final DESTINATION = amplify_core.QueryField(fieldName: "destination");
  static final REMARKS = amplify_core.QueryField(fieldName: "remarks");
  static final HRSTATUS = amplify_core.QueryField(fieldName: "hrStatus");
  static final HRDATE = amplify_core.QueryField(fieldName: "hrDate");
  static final HRREMARKS = amplify_core.QueryField(fieldName: "hrRemarks");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TicketRequest";
    modelSchemaDefinition.pluralName = "TicketRequests";
    
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
      key: TicketRequest.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TicketRequest.DEPARTUREDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TicketRequest.ARRIVALDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TicketRequest.DESTINATION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TicketRequest.REMARKS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TicketRequest.HRSTATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TicketRequest.HRDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TicketRequest.HRREMARKS,
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

class _TicketRequestModelType extends amplify_core.ModelType<TicketRequest> {
  const _TicketRequestModelType();
  
  @override
  TicketRequest fromJson(Map<String, dynamic> jsonData) {
    return TicketRequest.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'TicketRequest';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [TicketRequest] in your schema.
 */
class TicketRequestModelIdentifier implements amplify_core.ModelIdentifier<TicketRequest> {
  final String id;

  /** Create an instance of TicketRequestModelIdentifier using [id] the primary key. */
  const TicketRequestModelIdentifier({
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
  String toString() => 'TicketRequestModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is TicketRequestModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}