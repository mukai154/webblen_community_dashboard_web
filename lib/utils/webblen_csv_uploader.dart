// import 'dart:html';
// import 'dart:typed_data';
//
// import 'package:flutter/material.dart';
// import 'package:webblen_web_app/app/app.locator.dart';
// import 'package:webblen_web_app/services/dialogs/custom_dialog_service.dart';
// import 'package:webblen_web_app/services/reactive/file_uploader/reactive_file_uploader_service.dart';
//
// class WebblenCSVUploader {
//   final BuildContext? context;
//   final double? ratioX;
//   final double? ratioY;
//
//   WebblenCSVUploader({
//     this.context,
//     this.ratioX,
//     this.ratioY,
//   });
//
//   ReactiveFileUploaderService _reactiveFileUploaderService = locator<ReactiveFileUploaderService>();
//   CustomDialogService _customDialogService = locator<CustomDialogService>();
//
//   retrieveCSVFileFromLibrary() async {
//     File file;
//     FileReader fileReader = FileReader();
//     InputElement uploadInput = FileUploadInputElement() as InputElement;
//     uploadInput.type = 'file';
//     uploadInput.accept = 'text/csv';
//     uploadInput.click();
//     uploadInput.onChange.listen((event) {
//       file = uploadInput.files!.first;
//       fileReader.readAsText(file);
//
//       //file upload start listener
//       fileReader.onLoadStart.listen((event) {
//         if (!(file.type == "text/csv")) {
//           _customDialogService.showErrorDialog(description: "Please upload a valid CSV file");
//           fileReader.abort();
//         } else {
//           _reactiveFileUploaderService.updateFileUploadStatus("uploading");
//           _reactiveFileUploaderService.updateUploadingFile(true);
//         }
//       });
//
//       //file upload progress listener
//       fileReader.onProgress.listen((event) {
//         double progress = event.loaded! / event.total!;
//         _reactiveFileUploaderService.updateUploadProgress(progress);
//       });
//
//       //file upload cancelled listener
//       fileReader.onAbort.listen((event) async {
//         _reactiveFileUploaderService.updateFileUploadStatus("cancelled");
//         await Future.delayed(Duration(seconds: 3));
//         _reactiveFileUploaderService.updateFileUploadStatus("");
//         _reactiveFileUploaderService.updateUploadingFile(false);
//       });
//
//       //file upload cancelled listener
//       fileReader.onError.listen((event) async {
//         _customDialogService.showErrorDialog(description: "There was an issue uploading your file. Please try again");
//         _reactiveFileUploaderService.updateFileUploadStatus("error");
//         await Future.delayed(Duration(seconds: 3));
//         _reactiveFileUploaderService.updateFileUploadStatus("");
//         _reactiveFileUploaderService.updateUploadingFile(false);
//       });
//
//       //file upload end listener
//       fileReader.onLoadEnd.listen((event) {
//         String fileDataAsString = fileReader.result as String;
//         String fileName = file.name;
//         _reactiveFileUploaderService.updateFileUploadStatus("");
//         _reactiveFileUploaderService.updateFileDataAsString(fileDataAsString);
//         _reactiveFileUploaderService.updateFileName(fileName);
//         _reactiveFileUploaderService.updateUploadingFile(false);
//       });
//     });
//   }
// }
