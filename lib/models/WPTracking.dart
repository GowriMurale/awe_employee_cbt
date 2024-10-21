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


/** This is an auto generated class representing the WPTracking type in your schema. */
class WPTracking extends amplify_core.Model {
  static const classType = const _WPTrackingModelType();
  final String id;
  final String? _tempID;
  final amplify_core.TemporalDate? _supportletterReqDate;
  final amplify_core.TemporalDate? _supportletterReceiveDate;
  final String? _letterfile;
  final amplify_core.TemporalDate? _doesubmitdate;
  final amplify_core.TemporalDate? _doeapprovedate;
  final amplify_core.TemporalDate? _doeexpirydate;
  final String? _doefile;
  final amplify_core.TemporalDate? _nlmssubmitdate;
  final amplify_core.TemporalDate? _submissionrefrenceno;
  final amplify_core.TemporalDate? _nlmsapprovedate;
  final String? _ldreferenceno;
  final amplify_core.TemporalDate? _nlmsexpirydate;
  final String? _nlmsfile;
  final amplify_core.TemporalDate? _bgsubmitdate;
  final amplify_core.TemporalDate? _bgreceivedate;
  final String? _referenceno;
  final String? _bgamount;
  final amplify_core.TemporalDate? _bgexpirydate;
  final String? _bgfile;
  final amplify_core.TemporalDate? _tbapurchasedate;
  final String? _jitpaamount;
  final amplify_core.TemporalDate? _jitpaexpirydate;
  final String? _receiptno;
  final String? _depositamount;
  final amplify_core.TemporalDate? _submitdateendorsement;
  final String? _jitpafile;
  final String? _immbdno;
  final amplify_core.TemporalDate? _docsubmitdate;
  final amplify_core.TemporalDate? _visaapprovedate;
  final String? _visareferenceno;
  final String? _visaFile;
  final amplify_core.TemporalDate? _departuredate;
  final amplify_core.TemporalDate? _arrivaldate;
  final String? _cityname;
  final String? _airfare;
  final String? _airticketfile;
  final String? _agentname;
  final amplify_core.TemporalDate? _mobSignDate;
  final String? _mobFile;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  WPTrackingModelIdentifier get modelIdentifier {
      return WPTrackingModelIdentifier(
        id: id
      );
  }
  
  String get tempID {
    try {
      return _tempID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get supportletterReqDate {
    try {
      return _supportletterReqDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get supportletterReceiveDate {
    try {
      return _supportletterReceiveDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get letterfile {
    try {
      return _letterfile!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get doesubmitdate {
    try {
      return _doesubmitdate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get doeapprovedate {
    try {
      return _doeapprovedate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get doeexpirydate {
    try {
      return _doeexpirydate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get doefile {
    try {
      return _doefile!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get nlmssubmitdate {
    try {
      return _nlmssubmitdate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get submissionrefrenceno {
    try {
      return _submissionrefrenceno!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get nlmsapprovedate {
    try {
      return _nlmsapprovedate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get ldreferenceno {
    try {
      return _ldreferenceno!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get nlmsexpirydate {
    try {
      return _nlmsexpirydate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get nlmsfile {
    try {
      return _nlmsfile!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get bgsubmitdate {
    try {
      return _bgsubmitdate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get bgreceivedate {
    try {
      return _bgreceivedate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get referenceno {
    try {
      return _referenceno!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bgamount {
    try {
      return _bgamount!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get bgexpirydate {
    try {
      return _bgexpirydate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bgfile {
    try {
      return _bgfile!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get tbapurchasedate {
    try {
      return _tbapurchasedate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get jitpaamount {
    try {
      return _jitpaamount!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get jitpaexpirydate {
    try {
      return _jitpaexpirydate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get receiptno {
    try {
      return _receiptno!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get depositamount {
    try {
      return _depositamount!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get submitdateendorsement {
    try {
      return _submitdateendorsement!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get jitpafile {
    try {
      return _jitpafile!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get immbdno {
    try {
      return _immbdno!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get docsubmitdate {
    try {
      return _docsubmitdate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get visaapprovedate {
    try {
      return _visaapprovedate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get visareferenceno {
    try {
      return _visareferenceno!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get visaFile {
    try {
      return _visaFile!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get departuredate {
    try {
      return _departuredate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get arrivaldate {
    try {
      return _arrivaldate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get cityname {
    try {
      return _cityname!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get airfare {
    try {
      return _airfare!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get airticketfile {
    try {
      return _airticketfile!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get agentname {
    try {
      return _agentname!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get mobSignDate {
    try {
      return _mobSignDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get mobFile {
    try {
      return _mobFile!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const WPTracking._internal({required this.id, required tempID, required supportletterReqDate, required supportletterReceiveDate, required letterfile, required doesubmitdate, required doeapprovedate, required doeexpirydate, required doefile, required nlmssubmitdate, required submissionrefrenceno, required nlmsapprovedate, required ldreferenceno, required nlmsexpirydate, required nlmsfile, required bgsubmitdate, required bgreceivedate, required referenceno, required bgamount, required bgexpirydate, required bgfile, required tbapurchasedate, required jitpaamount, required jitpaexpirydate, required receiptno, required depositamount, required submitdateendorsement, required jitpafile, required immbdno, required docsubmitdate, required visaapprovedate, required visareferenceno, required visaFile, required departuredate, required arrivaldate, required cityname, required airfare, required airticketfile, required agentname, required mobSignDate, required mobFile, createdAt, updatedAt}): _tempID = tempID, _supportletterReqDate = supportletterReqDate, _supportletterReceiveDate = supportletterReceiveDate, _letterfile = letterfile, _doesubmitdate = doesubmitdate, _doeapprovedate = doeapprovedate, _doeexpirydate = doeexpirydate, _doefile = doefile, _nlmssubmitdate = nlmssubmitdate, _submissionrefrenceno = submissionrefrenceno, _nlmsapprovedate = nlmsapprovedate, _ldreferenceno = ldreferenceno, _nlmsexpirydate = nlmsexpirydate, _nlmsfile = nlmsfile, _bgsubmitdate = bgsubmitdate, _bgreceivedate = bgreceivedate, _referenceno = referenceno, _bgamount = bgamount, _bgexpirydate = bgexpirydate, _bgfile = bgfile, _tbapurchasedate = tbapurchasedate, _jitpaamount = jitpaamount, _jitpaexpirydate = jitpaexpirydate, _receiptno = receiptno, _depositamount = depositamount, _submitdateendorsement = submitdateendorsement, _jitpafile = jitpafile, _immbdno = immbdno, _docsubmitdate = docsubmitdate, _visaapprovedate = visaapprovedate, _visareferenceno = visareferenceno, _visaFile = visaFile, _departuredate = departuredate, _arrivaldate = arrivaldate, _cityname = cityname, _airfare = airfare, _airticketfile = airticketfile, _agentname = agentname, _mobSignDate = mobSignDate, _mobFile = mobFile, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory WPTracking({String? id, required String tempID, required amplify_core.TemporalDate supportletterReqDate, required amplify_core.TemporalDate supportletterReceiveDate, required String letterfile, required amplify_core.TemporalDate doesubmitdate, required amplify_core.TemporalDate doeapprovedate, required amplify_core.TemporalDate doeexpirydate, required String doefile, required amplify_core.TemporalDate nlmssubmitdate, required amplify_core.TemporalDate submissionrefrenceno, required amplify_core.TemporalDate nlmsapprovedate, required String ldreferenceno, required amplify_core.TemporalDate nlmsexpirydate, required String nlmsfile, required amplify_core.TemporalDate bgsubmitdate, required amplify_core.TemporalDate bgreceivedate, required String referenceno, required String bgamount, required amplify_core.TemporalDate bgexpirydate, required String bgfile, required amplify_core.TemporalDate tbapurchasedate, required String jitpaamount, required amplify_core.TemporalDate jitpaexpirydate, required String receiptno, required String depositamount, required amplify_core.TemporalDate submitdateendorsement, required String jitpafile, required String immbdno, required amplify_core.TemporalDate docsubmitdate, required amplify_core.TemporalDate visaapprovedate, required String visareferenceno, required String visaFile, required amplify_core.TemporalDate departuredate, required amplify_core.TemporalDate arrivaldate, required String cityname, required String airfare, required String airticketfile, required String agentname, required amplify_core.TemporalDate mobSignDate, required String mobFile}) {
    return WPTracking._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      tempID: tempID,
      supportletterReqDate: supportletterReqDate,
      supportletterReceiveDate: supportletterReceiveDate,
      letterfile: letterfile,
      doesubmitdate: doesubmitdate,
      doeapprovedate: doeapprovedate,
      doeexpirydate: doeexpirydate,
      doefile: doefile,
      nlmssubmitdate: nlmssubmitdate,
      submissionrefrenceno: submissionrefrenceno,
      nlmsapprovedate: nlmsapprovedate,
      ldreferenceno: ldreferenceno,
      nlmsexpirydate: nlmsexpirydate,
      nlmsfile: nlmsfile,
      bgsubmitdate: bgsubmitdate,
      bgreceivedate: bgreceivedate,
      referenceno: referenceno,
      bgamount: bgamount,
      bgexpirydate: bgexpirydate,
      bgfile: bgfile,
      tbapurchasedate: tbapurchasedate,
      jitpaamount: jitpaamount,
      jitpaexpirydate: jitpaexpirydate,
      receiptno: receiptno,
      depositamount: depositamount,
      submitdateendorsement: submitdateendorsement,
      jitpafile: jitpafile,
      immbdno: immbdno,
      docsubmitdate: docsubmitdate,
      visaapprovedate: visaapprovedate,
      visareferenceno: visareferenceno,
      visaFile: visaFile,
      departuredate: departuredate,
      arrivaldate: arrivaldate,
      cityname: cityname,
      airfare: airfare,
      airticketfile: airticketfile,
      agentname: agentname,
      mobSignDate: mobSignDate,
      mobFile: mobFile);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WPTracking &&
      id == other.id &&
      _tempID == other._tempID &&
      _supportletterReqDate == other._supportletterReqDate &&
      _supportletterReceiveDate == other._supportletterReceiveDate &&
      _letterfile == other._letterfile &&
      _doesubmitdate == other._doesubmitdate &&
      _doeapprovedate == other._doeapprovedate &&
      _doeexpirydate == other._doeexpirydate &&
      _doefile == other._doefile &&
      _nlmssubmitdate == other._nlmssubmitdate &&
      _submissionrefrenceno == other._submissionrefrenceno &&
      _nlmsapprovedate == other._nlmsapprovedate &&
      _ldreferenceno == other._ldreferenceno &&
      _nlmsexpirydate == other._nlmsexpirydate &&
      _nlmsfile == other._nlmsfile &&
      _bgsubmitdate == other._bgsubmitdate &&
      _bgreceivedate == other._bgreceivedate &&
      _referenceno == other._referenceno &&
      _bgamount == other._bgamount &&
      _bgexpirydate == other._bgexpirydate &&
      _bgfile == other._bgfile &&
      _tbapurchasedate == other._tbapurchasedate &&
      _jitpaamount == other._jitpaamount &&
      _jitpaexpirydate == other._jitpaexpirydate &&
      _receiptno == other._receiptno &&
      _depositamount == other._depositamount &&
      _submitdateendorsement == other._submitdateendorsement &&
      _jitpafile == other._jitpafile &&
      _immbdno == other._immbdno &&
      _docsubmitdate == other._docsubmitdate &&
      _visaapprovedate == other._visaapprovedate &&
      _visareferenceno == other._visareferenceno &&
      _visaFile == other._visaFile &&
      _departuredate == other._departuredate &&
      _arrivaldate == other._arrivaldate &&
      _cityname == other._cityname &&
      _airfare == other._airfare &&
      _airticketfile == other._airticketfile &&
      _agentname == other._agentname &&
      _mobSignDate == other._mobSignDate &&
      _mobFile == other._mobFile;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("WPTracking {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("tempID=" + "$_tempID" + ", ");
    buffer.write("supportletterReqDate=" + (_supportletterReqDate != null ? _supportletterReqDate!.format() : "null") + ", ");
    buffer.write("supportletterReceiveDate=" + (_supportletterReceiveDate != null ? _supportletterReceiveDate!.format() : "null") + ", ");
    buffer.write("letterfile=" + "$_letterfile" + ", ");
    buffer.write("doesubmitdate=" + (_doesubmitdate != null ? _doesubmitdate!.format() : "null") + ", ");
    buffer.write("doeapprovedate=" + (_doeapprovedate != null ? _doeapprovedate!.format() : "null") + ", ");
    buffer.write("doeexpirydate=" + (_doeexpirydate != null ? _doeexpirydate!.format() : "null") + ", ");
    buffer.write("doefile=" + "$_doefile" + ", ");
    buffer.write("nlmssubmitdate=" + (_nlmssubmitdate != null ? _nlmssubmitdate!.format() : "null") + ", ");
    buffer.write("submissionrefrenceno=" + (_submissionrefrenceno != null ? _submissionrefrenceno!.format() : "null") + ", ");
    buffer.write("nlmsapprovedate=" + (_nlmsapprovedate != null ? _nlmsapprovedate!.format() : "null") + ", ");
    buffer.write("ldreferenceno=" + "$_ldreferenceno" + ", ");
    buffer.write("nlmsexpirydate=" + (_nlmsexpirydate != null ? _nlmsexpirydate!.format() : "null") + ", ");
    buffer.write("nlmsfile=" + "$_nlmsfile" + ", ");
    buffer.write("bgsubmitdate=" + (_bgsubmitdate != null ? _bgsubmitdate!.format() : "null") + ", ");
    buffer.write("bgreceivedate=" + (_bgreceivedate != null ? _bgreceivedate!.format() : "null") + ", ");
    buffer.write("referenceno=" + "$_referenceno" + ", ");
    buffer.write("bgamount=" + "$_bgamount" + ", ");
    buffer.write("bgexpirydate=" + (_bgexpirydate != null ? _bgexpirydate!.format() : "null") + ", ");
    buffer.write("bgfile=" + "$_bgfile" + ", ");
    buffer.write("tbapurchasedate=" + (_tbapurchasedate != null ? _tbapurchasedate!.format() : "null") + ", ");
    buffer.write("jitpaamount=" + "$_jitpaamount" + ", ");
    buffer.write("jitpaexpirydate=" + (_jitpaexpirydate != null ? _jitpaexpirydate!.format() : "null") + ", ");
    buffer.write("receiptno=" + "$_receiptno" + ", ");
    buffer.write("depositamount=" + "$_depositamount" + ", ");
    buffer.write("submitdateendorsement=" + (_submitdateendorsement != null ? _submitdateendorsement!.format() : "null") + ", ");
    buffer.write("jitpafile=" + "$_jitpafile" + ", ");
    buffer.write("immbdno=" + "$_immbdno" + ", ");
    buffer.write("docsubmitdate=" + (_docsubmitdate != null ? _docsubmitdate!.format() : "null") + ", ");
    buffer.write("visaapprovedate=" + (_visaapprovedate != null ? _visaapprovedate!.format() : "null") + ", ");
    buffer.write("visareferenceno=" + "$_visareferenceno" + ", ");
    buffer.write("visaFile=" + "$_visaFile" + ", ");
    buffer.write("departuredate=" + (_departuredate != null ? _departuredate!.format() : "null") + ", ");
    buffer.write("arrivaldate=" + (_arrivaldate != null ? _arrivaldate!.format() : "null") + ", ");
    buffer.write("cityname=" + "$_cityname" + ", ");
    buffer.write("airfare=" + "$_airfare" + ", ");
    buffer.write("airticketfile=" + "$_airticketfile" + ", ");
    buffer.write("agentname=" + "$_agentname" + ", ");
    buffer.write("mobSignDate=" + (_mobSignDate != null ? _mobSignDate!.format() : "null") + ", ");
    buffer.write("mobFile=" + "$_mobFile" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  WPTracking copyWith({String? tempID, amplify_core.TemporalDate? supportletterReqDate, amplify_core.TemporalDate? supportletterReceiveDate, String? letterfile, amplify_core.TemporalDate? doesubmitdate, amplify_core.TemporalDate? doeapprovedate, amplify_core.TemporalDate? doeexpirydate, String? doefile, amplify_core.TemporalDate? nlmssubmitdate, amplify_core.TemporalDate? submissionrefrenceno, amplify_core.TemporalDate? nlmsapprovedate, String? ldreferenceno, amplify_core.TemporalDate? nlmsexpirydate, String? nlmsfile, amplify_core.TemporalDate? bgsubmitdate, amplify_core.TemporalDate? bgreceivedate, String? referenceno, String? bgamount, amplify_core.TemporalDate? bgexpirydate, String? bgfile, amplify_core.TemporalDate? tbapurchasedate, String? jitpaamount, amplify_core.TemporalDate? jitpaexpirydate, String? receiptno, String? depositamount, amplify_core.TemporalDate? submitdateendorsement, String? jitpafile, String? immbdno, amplify_core.TemporalDate? docsubmitdate, amplify_core.TemporalDate? visaapprovedate, String? visareferenceno, String? visaFile, amplify_core.TemporalDate? departuredate, amplify_core.TemporalDate? arrivaldate, String? cityname, String? airfare, String? airticketfile, String? agentname, amplify_core.TemporalDate? mobSignDate, String? mobFile}) {
    return WPTracking._internal(
      id: id,
      tempID: tempID ?? this.tempID,
      supportletterReqDate: supportletterReqDate ?? this.supportletterReqDate,
      supportletterReceiveDate: supportletterReceiveDate ?? this.supportletterReceiveDate,
      letterfile: letterfile ?? this.letterfile,
      doesubmitdate: doesubmitdate ?? this.doesubmitdate,
      doeapprovedate: doeapprovedate ?? this.doeapprovedate,
      doeexpirydate: doeexpirydate ?? this.doeexpirydate,
      doefile: doefile ?? this.doefile,
      nlmssubmitdate: nlmssubmitdate ?? this.nlmssubmitdate,
      submissionrefrenceno: submissionrefrenceno ?? this.submissionrefrenceno,
      nlmsapprovedate: nlmsapprovedate ?? this.nlmsapprovedate,
      ldreferenceno: ldreferenceno ?? this.ldreferenceno,
      nlmsexpirydate: nlmsexpirydate ?? this.nlmsexpirydate,
      nlmsfile: nlmsfile ?? this.nlmsfile,
      bgsubmitdate: bgsubmitdate ?? this.bgsubmitdate,
      bgreceivedate: bgreceivedate ?? this.bgreceivedate,
      referenceno: referenceno ?? this.referenceno,
      bgamount: bgamount ?? this.bgamount,
      bgexpirydate: bgexpirydate ?? this.bgexpirydate,
      bgfile: bgfile ?? this.bgfile,
      tbapurchasedate: tbapurchasedate ?? this.tbapurchasedate,
      jitpaamount: jitpaamount ?? this.jitpaamount,
      jitpaexpirydate: jitpaexpirydate ?? this.jitpaexpirydate,
      receiptno: receiptno ?? this.receiptno,
      depositamount: depositamount ?? this.depositamount,
      submitdateendorsement: submitdateendorsement ?? this.submitdateendorsement,
      jitpafile: jitpafile ?? this.jitpafile,
      immbdno: immbdno ?? this.immbdno,
      docsubmitdate: docsubmitdate ?? this.docsubmitdate,
      visaapprovedate: visaapprovedate ?? this.visaapprovedate,
      visareferenceno: visareferenceno ?? this.visareferenceno,
      visaFile: visaFile ?? this.visaFile,
      departuredate: departuredate ?? this.departuredate,
      arrivaldate: arrivaldate ?? this.arrivaldate,
      cityname: cityname ?? this.cityname,
      airfare: airfare ?? this.airfare,
      airticketfile: airticketfile ?? this.airticketfile,
      agentname: agentname ?? this.agentname,
      mobSignDate: mobSignDate ?? this.mobSignDate,
      mobFile: mobFile ?? this.mobFile);
  }
  
  WPTracking copyWithModelFieldValues({
    ModelFieldValue<String>? tempID,
    ModelFieldValue<amplify_core.TemporalDate>? supportletterReqDate,
    ModelFieldValue<amplify_core.TemporalDate>? supportletterReceiveDate,
    ModelFieldValue<String>? letterfile,
    ModelFieldValue<amplify_core.TemporalDate>? doesubmitdate,
    ModelFieldValue<amplify_core.TemporalDate>? doeapprovedate,
    ModelFieldValue<amplify_core.TemporalDate>? doeexpirydate,
    ModelFieldValue<String>? doefile,
    ModelFieldValue<amplify_core.TemporalDate>? nlmssubmitdate,
    ModelFieldValue<amplify_core.TemporalDate>? submissionrefrenceno,
    ModelFieldValue<amplify_core.TemporalDate>? nlmsapprovedate,
    ModelFieldValue<String>? ldreferenceno,
    ModelFieldValue<amplify_core.TemporalDate>? nlmsexpirydate,
    ModelFieldValue<String>? nlmsfile,
    ModelFieldValue<amplify_core.TemporalDate>? bgsubmitdate,
    ModelFieldValue<amplify_core.TemporalDate>? bgreceivedate,
    ModelFieldValue<String>? referenceno,
    ModelFieldValue<String>? bgamount,
    ModelFieldValue<amplify_core.TemporalDate>? bgexpirydate,
    ModelFieldValue<String>? bgfile,
    ModelFieldValue<amplify_core.TemporalDate>? tbapurchasedate,
    ModelFieldValue<String>? jitpaamount,
    ModelFieldValue<amplify_core.TemporalDate>? jitpaexpirydate,
    ModelFieldValue<String>? receiptno,
    ModelFieldValue<String>? depositamount,
    ModelFieldValue<amplify_core.TemporalDate>? submitdateendorsement,
    ModelFieldValue<String>? jitpafile,
    ModelFieldValue<String>? immbdno,
    ModelFieldValue<amplify_core.TemporalDate>? docsubmitdate,
    ModelFieldValue<amplify_core.TemporalDate>? visaapprovedate,
    ModelFieldValue<String>? visareferenceno,
    ModelFieldValue<String>? visaFile,
    ModelFieldValue<amplify_core.TemporalDate>? departuredate,
    ModelFieldValue<amplify_core.TemporalDate>? arrivaldate,
    ModelFieldValue<String>? cityname,
    ModelFieldValue<String>? airfare,
    ModelFieldValue<String>? airticketfile,
    ModelFieldValue<String>? agentname,
    ModelFieldValue<amplify_core.TemporalDate>? mobSignDate,
    ModelFieldValue<String>? mobFile
  }) {
    return WPTracking._internal(
      id: id,
      tempID: tempID == null ? this.tempID : tempID.value,
      supportletterReqDate: supportletterReqDate == null ? this.supportletterReqDate : supportletterReqDate.value,
      supportletterReceiveDate: supportletterReceiveDate == null ? this.supportletterReceiveDate : supportletterReceiveDate.value,
      letterfile: letterfile == null ? this.letterfile : letterfile.value,
      doesubmitdate: doesubmitdate == null ? this.doesubmitdate : doesubmitdate.value,
      doeapprovedate: doeapprovedate == null ? this.doeapprovedate : doeapprovedate.value,
      doeexpirydate: doeexpirydate == null ? this.doeexpirydate : doeexpirydate.value,
      doefile: doefile == null ? this.doefile : doefile.value,
      nlmssubmitdate: nlmssubmitdate == null ? this.nlmssubmitdate : nlmssubmitdate.value,
      submissionrefrenceno: submissionrefrenceno == null ? this.submissionrefrenceno : submissionrefrenceno.value,
      nlmsapprovedate: nlmsapprovedate == null ? this.nlmsapprovedate : nlmsapprovedate.value,
      ldreferenceno: ldreferenceno == null ? this.ldreferenceno : ldreferenceno.value,
      nlmsexpirydate: nlmsexpirydate == null ? this.nlmsexpirydate : nlmsexpirydate.value,
      nlmsfile: nlmsfile == null ? this.nlmsfile : nlmsfile.value,
      bgsubmitdate: bgsubmitdate == null ? this.bgsubmitdate : bgsubmitdate.value,
      bgreceivedate: bgreceivedate == null ? this.bgreceivedate : bgreceivedate.value,
      referenceno: referenceno == null ? this.referenceno : referenceno.value,
      bgamount: bgamount == null ? this.bgamount : bgamount.value,
      bgexpirydate: bgexpirydate == null ? this.bgexpirydate : bgexpirydate.value,
      bgfile: bgfile == null ? this.bgfile : bgfile.value,
      tbapurchasedate: tbapurchasedate == null ? this.tbapurchasedate : tbapurchasedate.value,
      jitpaamount: jitpaamount == null ? this.jitpaamount : jitpaamount.value,
      jitpaexpirydate: jitpaexpirydate == null ? this.jitpaexpirydate : jitpaexpirydate.value,
      receiptno: receiptno == null ? this.receiptno : receiptno.value,
      depositamount: depositamount == null ? this.depositamount : depositamount.value,
      submitdateendorsement: submitdateendorsement == null ? this.submitdateendorsement : submitdateendorsement.value,
      jitpafile: jitpafile == null ? this.jitpafile : jitpafile.value,
      immbdno: immbdno == null ? this.immbdno : immbdno.value,
      docsubmitdate: docsubmitdate == null ? this.docsubmitdate : docsubmitdate.value,
      visaapprovedate: visaapprovedate == null ? this.visaapprovedate : visaapprovedate.value,
      visareferenceno: visareferenceno == null ? this.visareferenceno : visareferenceno.value,
      visaFile: visaFile == null ? this.visaFile : visaFile.value,
      departuredate: departuredate == null ? this.departuredate : departuredate.value,
      arrivaldate: arrivaldate == null ? this.arrivaldate : arrivaldate.value,
      cityname: cityname == null ? this.cityname : cityname.value,
      airfare: airfare == null ? this.airfare : airfare.value,
      airticketfile: airticketfile == null ? this.airticketfile : airticketfile.value,
      agentname: agentname == null ? this.agentname : agentname.value,
      mobSignDate: mobSignDate == null ? this.mobSignDate : mobSignDate.value,
      mobFile: mobFile == null ? this.mobFile : mobFile.value
    );
  }
  
  WPTracking.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _tempID = json['tempID'],
      _supportletterReqDate = json['supportletterReqDate'] != null ? amplify_core.TemporalDate.fromString(json['supportletterReqDate']) : null,
      _supportletterReceiveDate = json['supportletterReceiveDate'] != null ? amplify_core.TemporalDate.fromString(json['supportletterReceiveDate']) : null,
      _letterfile = json['letterfile'],
      _doesubmitdate = json['doesubmitdate'] != null ? amplify_core.TemporalDate.fromString(json['doesubmitdate']) : null,
      _doeapprovedate = json['doeapprovedate'] != null ? amplify_core.TemporalDate.fromString(json['doeapprovedate']) : null,
      _doeexpirydate = json['doeexpirydate'] != null ? amplify_core.TemporalDate.fromString(json['doeexpirydate']) : null,
      _doefile = json['doefile'],
      _nlmssubmitdate = json['nlmssubmitdate'] != null ? amplify_core.TemporalDate.fromString(json['nlmssubmitdate']) : null,
      _submissionrefrenceno = json['submissionrefrenceno'] != null ? amplify_core.TemporalDate.fromString(json['submissionrefrenceno']) : null,
      _nlmsapprovedate = json['nlmsapprovedate'] != null ? amplify_core.TemporalDate.fromString(json['nlmsapprovedate']) : null,
      _ldreferenceno = json['ldreferenceno'],
      _nlmsexpirydate = json['nlmsexpirydate'] != null ? amplify_core.TemporalDate.fromString(json['nlmsexpirydate']) : null,
      _nlmsfile = json['nlmsfile'],
      _bgsubmitdate = json['bgsubmitdate'] != null ? amplify_core.TemporalDate.fromString(json['bgsubmitdate']) : null,
      _bgreceivedate = json['bgreceivedate'] != null ? amplify_core.TemporalDate.fromString(json['bgreceivedate']) : null,
      _referenceno = json['referenceno'],
      _bgamount = json['bgamount'],
      _bgexpirydate = json['bgexpirydate'] != null ? amplify_core.TemporalDate.fromString(json['bgexpirydate']) : null,
      _bgfile = json['bgfile'],
      _tbapurchasedate = json['tbapurchasedate'] != null ? amplify_core.TemporalDate.fromString(json['tbapurchasedate']) : null,
      _jitpaamount = json['jitpaamount'],
      _jitpaexpirydate = json['jitpaexpirydate'] != null ? amplify_core.TemporalDate.fromString(json['jitpaexpirydate']) : null,
      _receiptno = json['receiptno'],
      _depositamount = json['depositamount'],
      _submitdateendorsement = json['submitdateendorsement'] != null ? amplify_core.TemporalDate.fromString(json['submitdateendorsement']) : null,
      _jitpafile = json['jitpafile'],
      _immbdno = json['immbdno'],
      _docsubmitdate = json['docsubmitdate'] != null ? amplify_core.TemporalDate.fromString(json['docsubmitdate']) : null,
      _visaapprovedate = json['visaapprovedate'] != null ? amplify_core.TemporalDate.fromString(json['visaapprovedate']) : null,
      _visareferenceno = json['visareferenceno'],
      _visaFile = json['visaFile'],
      _departuredate = json['departuredate'] != null ? amplify_core.TemporalDate.fromString(json['departuredate']) : null,
      _arrivaldate = json['arrivaldate'] != null ? amplify_core.TemporalDate.fromString(json['arrivaldate']) : null,
      _cityname = json['cityname'],
      _airfare = json['airfare'],
      _airticketfile = json['airticketfile'],
      _agentname = json['agentname'],
      _mobSignDate = json['mobSignDate'] != null ? amplify_core.TemporalDate.fromString(json['mobSignDate']) : null,
      _mobFile = json['mobFile'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'tempID': _tempID, 'supportletterReqDate': _supportletterReqDate?.format(), 'supportletterReceiveDate': _supportletterReceiveDate?.format(), 'letterfile': _letterfile, 'doesubmitdate': _doesubmitdate?.format(), 'doeapprovedate': _doeapprovedate?.format(), 'doeexpirydate': _doeexpirydate?.format(), 'doefile': _doefile, 'nlmssubmitdate': _nlmssubmitdate?.format(), 'submissionrefrenceno': _submissionrefrenceno?.format(), 'nlmsapprovedate': _nlmsapprovedate?.format(), 'ldreferenceno': _ldreferenceno, 'nlmsexpirydate': _nlmsexpirydate?.format(), 'nlmsfile': _nlmsfile, 'bgsubmitdate': _bgsubmitdate?.format(), 'bgreceivedate': _bgreceivedate?.format(), 'referenceno': _referenceno, 'bgamount': _bgamount, 'bgexpirydate': _bgexpirydate?.format(), 'bgfile': _bgfile, 'tbapurchasedate': _tbapurchasedate?.format(), 'jitpaamount': _jitpaamount, 'jitpaexpirydate': _jitpaexpirydate?.format(), 'receiptno': _receiptno, 'depositamount': _depositamount, 'submitdateendorsement': _submitdateendorsement?.format(), 'jitpafile': _jitpafile, 'immbdno': _immbdno, 'docsubmitdate': _docsubmitdate?.format(), 'visaapprovedate': _visaapprovedate?.format(), 'visareferenceno': _visareferenceno, 'visaFile': _visaFile, 'departuredate': _departuredate?.format(), 'arrivaldate': _arrivaldate?.format(), 'cityname': _cityname, 'airfare': _airfare, 'airticketfile': _airticketfile, 'agentname': _agentname, 'mobSignDate': _mobSignDate?.format(), 'mobFile': _mobFile, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'tempID': _tempID,
    'supportletterReqDate': _supportletterReqDate,
    'supportletterReceiveDate': _supportletterReceiveDate,
    'letterfile': _letterfile,
    'doesubmitdate': _doesubmitdate,
    'doeapprovedate': _doeapprovedate,
    'doeexpirydate': _doeexpirydate,
    'doefile': _doefile,
    'nlmssubmitdate': _nlmssubmitdate,
    'submissionrefrenceno': _submissionrefrenceno,
    'nlmsapprovedate': _nlmsapprovedate,
    'ldreferenceno': _ldreferenceno,
    'nlmsexpirydate': _nlmsexpirydate,
    'nlmsfile': _nlmsfile,
    'bgsubmitdate': _bgsubmitdate,
    'bgreceivedate': _bgreceivedate,
    'referenceno': _referenceno,
    'bgamount': _bgamount,
    'bgexpirydate': _bgexpirydate,
    'bgfile': _bgfile,
    'tbapurchasedate': _tbapurchasedate,
    'jitpaamount': _jitpaamount,
    'jitpaexpirydate': _jitpaexpirydate,
    'receiptno': _receiptno,
    'depositamount': _depositamount,
    'submitdateendorsement': _submitdateendorsement,
    'jitpafile': _jitpafile,
    'immbdno': _immbdno,
    'docsubmitdate': _docsubmitdate,
    'visaapprovedate': _visaapprovedate,
    'visareferenceno': _visareferenceno,
    'visaFile': _visaFile,
    'departuredate': _departuredate,
    'arrivaldate': _arrivaldate,
    'cityname': _cityname,
    'airfare': _airfare,
    'airticketfile': _airticketfile,
    'agentname': _agentname,
    'mobSignDate': _mobSignDate,
    'mobFile': _mobFile,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<WPTrackingModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<WPTrackingModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TEMPID = amplify_core.QueryField(fieldName: "tempID");
  static final SUPPORTLETTERREQDATE = amplify_core.QueryField(fieldName: "supportletterReqDate");
  static final SUPPORTLETTERRECEIVEDATE = amplify_core.QueryField(fieldName: "supportletterReceiveDate");
  static final LETTERFILE = amplify_core.QueryField(fieldName: "letterfile");
  static final DOESUBMITDATE = amplify_core.QueryField(fieldName: "doesubmitdate");
  static final DOEAPPROVEDATE = amplify_core.QueryField(fieldName: "doeapprovedate");
  static final DOEEXPIRYDATE = amplify_core.QueryField(fieldName: "doeexpirydate");
  static final DOEFILE = amplify_core.QueryField(fieldName: "doefile");
  static final NLMSSUBMITDATE = amplify_core.QueryField(fieldName: "nlmssubmitdate");
  static final SUBMISSIONREFRENCENO = amplify_core.QueryField(fieldName: "submissionrefrenceno");
  static final NLMSAPPROVEDATE = amplify_core.QueryField(fieldName: "nlmsapprovedate");
  static final LDREFERENCENO = amplify_core.QueryField(fieldName: "ldreferenceno");
  static final NLMSEXPIRYDATE = amplify_core.QueryField(fieldName: "nlmsexpirydate");
  static final NLMSFILE = amplify_core.QueryField(fieldName: "nlmsfile");
  static final BGSUBMITDATE = amplify_core.QueryField(fieldName: "bgsubmitdate");
  static final BGRECEIVEDATE = amplify_core.QueryField(fieldName: "bgreceivedate");
  static final REFERENCENO = amplify_core.QueryField(fieldName: "referenceno");
  static final BGAMOUNT = amplify_core.QueryField(fieldName: "bgamount");
  static final BGEXPIRYDATE = amplify_core.QueryField(fieldName: "bgexpirydate");
  static final BGFILE = amplify_core.QueryField(fieldName: "bgfile");
  static final TBAPURCHASEDATE = amplify_core.QueryField(fieldName: "tbapurchasedate");
  static final JITPAAMOUNT = amplify_core.QueryField(fieldName: "jitpaamount");
  static final JITPAEXPIRYDATE = amplify_core.QueryField(fieldName: "jitpaexpirydate");
  static final RECEIPTNO = amplify_core.QueryField(fieldName: "receiptno");
  static final DEPOSITAMOUNT = amplify_core.QueryField(fieldName: "depositamount");
  static final SUBMITDATEENDORSEMENT = amplify_core.QueryField(fieldName: "submitdateendorsement");
  static final JITPAFILE = amplify_core.QueryField(fieldName: "jitpafile");
  static final IMMBDNO = amplify_core.QueryField(fieldName: "immbdno");
  static final DOCSUBMITDATE = amplify_core.QueryField(fieldName: "docsubmitdate");
  static final VISAAPPROVEDATE = amplify_core.QueryField(fieldName: "visaapprovedate");
  static final VISAREFERENCENO = amplify_core.QueryField(fieldName: "visareferenceno");
  static final VISAFILE = amplify_core.QueryField(fieldName: "visaFile");
  static final DEPARTUREDATE = amplify_core.QueryField(fieldName: "departuredate");
  static final ARRIVALDATE = amplify_core.QueryField(fieldName: "arrivaldate");
  static final CITYNAME = amplify_core.QueryField(fieldName: "cityname");
  static final AIRFARE = amplify_core.QueryField(fieldName: "airfare");
  static final AIRTICKETFILE = amplify_core.QueryField(fieldName: "airticketfile");
  static final AGENTNAME = amplify_core.QueryField(fieldName: "agentname");
  static final MOBSIGNDATE = amplify_core.QueryField(fieldName: "mobSignDate");
  static final MOBFILE = amplify_core.QueryField(fieldName: "mobFile");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "WPTracking";
    modelSchemaDefinition.pluralName = "WPTrackings";
    
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
      key: WPTracking.TEMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.SUPPORTLETTERREQDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.SUPPORTLETTERRECEIVEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.LETTERFILE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.DOESUBMITDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.DOEAPPROVEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.DOEEXPIRYDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.DOEFILE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.NLMSSUBMITDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.SUBMISSIONREFRENCENO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.NLMSAPPROVEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.LDREFERENCENO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.NLMSEXPIRYDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.NLMSFILE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.BGSUBMITDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.BGRECEIVEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.REFERENCENO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.BGAMOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.BGEXPIRYDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.BGFILE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.TBAPURCHASEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.JITPAAMOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.JITPAEXPIRYDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.RECEIPTNO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.DEPOSITAMOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.SUBMITDATEENDORSEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.JITPAFILE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.IMMBDNO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.DOCSUBMITDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.VISAAPPROVEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.VISAREFERENCENO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.VISAFILE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.DEPARTUREDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.ARRIVALDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.CITYNAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.AIRFARE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.AIRTICKETFILE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.AGENTNAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.MOBSIGNDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WPTracking.MOBFILE,
      isRequired: true,
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

class _WPTrackingModelType extends amplify_core.ModelType<WPTracking> {
  const _WPTrackingModelType();
  
  @override
  WPTracking fromJson(Map<String, dynamic> jsonData) {
    return WPTracking.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'WPTracking';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [WPTracking] in your schema.
 */
class WPTrackingModelIdentifier implements amplify_core.ModelIdentifier<WPTracking> {
  final String id;

  /** Create an instance of WPTrackingModelIdentifier using [id] the primary key. */
  const WPTrackingModelIdentifier({
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
  String toString() => 'WPTrackingModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is WPTrackingModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}