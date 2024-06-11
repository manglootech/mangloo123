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

import 'package:just_audio/just_audio.dart';

Future<void> playPauseAudio(String audioUrl, bool isPlaying) async {
  final AudioPlayer audioPlayer = AudioPlayer();
  await audioPlayer.setUrl(audioUrl);

  if (isPlaying) {
    await audioPlayer.pause();
  } else {
    await audioPlayer.play();
  }
}
