// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'dart:io';
import 'package:path/path.dart' as path;

final FlutterFFmpeg _flutterFFmpeg = FlutterFFmpeg();

Future<String> compressMediaAction(String inputPath) async {
  String outputPath;
  if (inputPath.endsWith('.wav') ||
      inputPath.endsWith('.mp3') ||
      inputPath.endsWith('.aac')) {
    outputPath =
        inputPath.replaceAll(RegExp(r'\.(wav|mp3|aac)'), '_compressed.mp3');
    int rc = await _flutterFFmpeg
        .execute("-i $inputPath -codec:a libmp3lame -qscale:a 2 $outputPath");
    if (rc != 0) {
      throw Exception('Error compressing audio');
    }
  } else if (inputPath.endsWith('.mp4') ||
      inputPath.endsWith('.mov') ||
      inputPath.endsWith('.avi')) {
    outputPath =
        inputPath.replaceAll(RegExp(r'\.(mp4|mov|avi)'), '_compressed.mp4');
    int rc = await _flutterFFmpeg.execute(
        "-i $inputPath -vcodec libx264 -crf 23 -preset slow $outputPath");
    if (rc != 0) {
      throw Exception('Error compressing video');
    }
  } else {
    throw Exception('Unsupported file type');
  }
  return outputPath;
}
