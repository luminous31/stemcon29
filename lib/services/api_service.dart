import 'dart:convert';
import 'dart:io';
import 'package:mime/mime.dart';
import 'package:stemcon/models/add_project2_model.dart';
import 'package:stemcon/models/add_task_model.dart';
import 'package:stemcon/models/dpr_list_model.dart';
import 'package:stemcon/models/new_user.dart';
import 'package:stemcon/models/suggestion_list_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;
import 'package:stemcon/models/project_list_model.dart';

import '../models/add_profile_model.dart';

class ApiService {
  // create an account
  Future<http.Response> createAccount({required NewUser userModel}) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/login';
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: userModel.toJson(),
    );
    return response;
  }

  // add profile details
  Future<http.Response> addProfileDetails({
    required int userId,
    required int token,
    required String name,
    required String number,
    required String post,
    required File profileImage,
  }) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/profile/add';
    // String fileName = profileImage!.path.split('/').last;
    final imageUploadRequest = http.MultipartRequest(
      'POST',
      Uri.parse(serverUrl),
    );
    final mimeTypeData =
        lookupMimeType(profileImage.path, headerBytes: [0xFF, 0xD8])!
            .split('/');
    final file = await http.MultipartFile.fromPath(
        'profile_image', profileImage.path,
        contentType: MediaType(mimeTypeData[0], mimeTypeData[1]));

    imageUploadRequest.files.add(file);
    imageUploadRequest.fields['user_id'] = userId.toString();
    imageUploadRequest.fields['token'] = token.toString();
    imageUploadRequest.fields['name'] = name;
    imageUploadRequest.fields['post'] = post;
    imageUploadRequest.fields['number'] = number;
    final streamedResponse = await imageUploadRequest.send();
    final response = await http.Response.fromStream(streamedResponse);
    return response;
  }

  // edit profile deatails
  Future<http.Response> editProfileDetails(
      {required AddProfileModel addProfile}) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/profile/edit';
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: addProfile.toJson(),
    );
    return response;
  }

  // delete profile details
  Future<http.Response> deleteProfileDetails({
    required String userId,
    required String token,
    required String id,
  }) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/profile/delete';
    final _data = {'user_id': userId, 'token': token, 'id': id};
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(_data),
    );
    return response;
  }

  // select user profile

  Future<http.Response> selectProfileDetails({
    required int userId,
    required int token,
    required String id,
  }) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/profile/select';
    final _data = {'user_id': userId, 'token': token, 'id': id};
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(_data),
    );
    return response;
  }

  // logout
  Future<http.Response> signOut({required LogoutModel logoutModel}) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/logout';
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: logoutModel.toJson(),
    );
    return response;
  }

  // Add project 1
  Future<Response> addProject1({
    required int userId,
    required int token,
    required String projectName,
    required String projectCode,
    required File projectPhotoPath,
    required String projectStartDate,
    required String projectEndDate,
  }) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/project/addStep1';
    String fileName = projectPhotoPath.path.split('/').last;
    Dio _dio = Dio();
    FormData _data = FormData.fromMap({
      'user_id': userId,
      'token': token,
      'project_name': projectName,
      'project_code': projectCode,
      'project_photo': await MultipartFile.fromFile(
        projectPhotoPath.path,
        filename: fileName,
      ),
      'project_start_date': projectStartDate,
      'project_end_date': projectEndDate,
    });
    final response = await _dio.post(serverUrl, data: _data,
        onSendProgress: (sent, receive) {
      final results = sent * receive / 100;
      debugPrint('$results');
    });
    return response;
  }

  // Add project 2
  Future<http.Response> addProject2(
      {required AddProject2Model postContent}) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/project/addStep2';
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: postContent.toJson(),
    );
    return response;
  }

// confirm otp
  Future<http.Response> cornfirmOtp({required ConfirmOtp cornfirmOtp}) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/matchOTP';
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: cornfirmOtp.toJson(),
    );
    return response;
  }

  // Fetch Projects
  Future<List<ProjectListModel>> fetchProject({
    required int userId,
    required String token,
  }) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/project/list';
    final data = {"user_id": userId, "token": token};
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );

    if (response.statusCode == 200) {
      final datas = jsonDecode(response.body);
      if (datas['res_code'] == '1') {
        final List<dynamic> data = datas['res_data'];
        return data.map((e) {
          return ProjectListModel.fromJson(e);
        }).toList();
      } else {
        return [];
      }
    } else {
      return [];
    }
  }

  // fetch all task view data
  Future<List<AddTaskModel>> fetchTask({
    required int userId,
    required int token,
  }) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/task/list';
    final data = {"user_id": userId, "token": token};
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );

    if (response.statusCode == 200) {
      final datas = jsonDecode(response.body);
      if (datas['res_code'] == '1') {
        final List<dynamic> data = datas['res_data'];
        return data.map((e) {
          return AddTaskModel.fromJson(e);
        }).toList();
      } else {
        return [];
      }
    } else {
      return [];
    }
  }

// TODO: Suggestion Apis
//Get all suggestion

  Future<List<SuggestionListModel>> fetchSuggestion({
    required int userId,
    required int token,
  }) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/suggestion/list';
    final data = {"user_id": userId, "token": token};
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );

    if (response.statusCode == 200) {
      final datas = jsonDecode(response.body);
      if (datas['res_code'] == '1') {
        final List<dynamic> data = datas['res_data'];
        return data.map((e) {
          return SuggestionListModel.fromJson(e);
        }).toList();
      } else {
        return [];
      }
    } else {
      return [];
    }
  }

  // delete suggestions
  Future<http.Response> deleteSuggestion({
    required int userId,
    required int token,
    required int dataId,
  }) async {
    final _data = {'user_id': userId, 'token': token, 'id': dataId};
    const String serverUrl = 'http://stemcon.likeview.in/api/suggestion/delete';
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(_data),
    );
    return response;
  }

  // todo: add new task

  Future<http.Response> addNewTask({
    required int userId,
    required int token,
    required String taskName,
    required String description,
    required String taskAssignedBy,
  }) async {
    final _data = {
      'user_id': userId,
      'token': token,
      'description': description,
      'task_name': taskName,
      'task_assigned_by': taskAssignedBy,
      'task_status': 'active',
    };
    const String serverUrl = 'http://stemcon.likeview.in/api/task/add';
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(_data),
    );
    return response;
  }

  // todo: dpr pov
  //  Fecth data
  Future<List<DprListModel>> fetchDprList({
    required int userId,
    required int token,
  }) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/dpr/list';
    final data = {"user_id": userId, "token": token};
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );

    if (response.statusCode == 200) {
      final datas = jsonDecode(response.body);
      if (datas['res_code'] == '1') {
        final List<dynamic> data = datas['res_data'];
        return data.map((e) {
          return DprListModel.fromJson(e);
        }).toList();
      } else {
        return [];
      }
    } else {
      return [];
    }
  }

  // add dpr

  Future<Response> addDpr({
    required int userId,
    required int token,
    required String dprTime,
    required File dprPdf,
    required String dprDescription,
    required String projectId,
  }) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/dpr/add';
    String fileName = dprPdf.path.split('/').last;
    Dio _dio = Dio();
    FormData _data = FormData.fromMap({
      'token': token,
      'user_id': userId,
      'dpr_time': dprTime,
      'dpr_pdf': await MultipartFile.fromFile(
        dprPdf.path,
        filename: fileName,
      ),
      'dpr_description': dprDescription,
      'project_id': projectId,
    });
    final response = await _dio.post(serverUrl, data: _data,
        onSendProgress: (sent, receive) {
      final results = sent * receive / 100;
      debugPrint('$results');
    });
    return response;
  }

  // TODO search

  Future<List<ProjectListModel>> searchProject({
    required int userId,
    required String token,
    required String search,
  }) async {
    const String serverUrl = 'http://stemcon.likeview.in/api/project/search';
    final data = {"user_id": userId, "token": token, 'search': search};
    final response = await http.post(
      Uri.parse(serverUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );

    if (response.statusCode == 200) {
      final datas = jsonDecode(response.body);
      if (datas['res_code'] == '1') {
        final List<dynamic> data = datas['res_data'];
        return data.map((e) {
          return ProjectListModel.fromJson(e);
        }).toList();
      } else {
        return [];
      }
    } else {
      return [];
    }
  }
}
