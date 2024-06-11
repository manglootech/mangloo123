// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:just_audio/just_audio.dart'; // Asegúrate de importar la biblioteca just_audio
import 'package:rxdart/rxdart.dart'; // Asegúrate de importar la biblioteca rxdart

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget({
    super.key,
    this.width,
    this.height,
    required this.audioUrl, // Añadimos el parámetro audioUrl
  });

  final double? width;
  final double? height;
  final String audioUrl; // Añadimos el parámetro audioUrl

  @override
  State<AudioPlayerWidget> createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  late AudioPlayer _audioPlayer;
  late Stream<Duration?> _durationStream;
  late Stream<Duration> _positionStream;
  late Stream<PlayerState> _playerStateStream;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.setUrl(widget.audioUrl);
    _durationStream = _audioPlayer.durationStream;
    _positionStream = _audioPlayer.positionStream;
    _playerStateStream = _audioPlayer.playerStateStream;
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  String formatDuration(Duration? duration) {
    if (duration == null) return "00:00";
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<Duration?>(
            stream: _positionStream,
            builder: (context, snapshot) {
              final currentPosition = snapshot.data ?? Duration.zero;
              return Text(
                formatDuration(currentPosition),
                style: FlutterFlowTheme.of(context).bodyMedium,
              );
            },
          ),
          StreamBuilder<Duration?>(
            stream: _durationStream,
            builder: (context, snapshot) {
              final totalDuration = snapshot.data ?? Duration.zero;
              return Text(
                formatDuration(totalDuration),
                style: FlutterFlowTheme.of(context).bodyMedium,
              );
            },
          ),
          StreamBuilder<double>(
            stream: Rx.combineLatest2<Duration, Duration?, double>(
              _positionStream,
              _durationStream,
              (currentPosition, totalDuration) =>
                  currentPosition.inMilliseconds /
                  (totalDuration?.inMilliseconds == 0
                      ? 1
                      : totalDuration?.inMilliseconds ?? 1),
            ),
            builder: (context, snapshot) {
              final position = snapshot.data ?? 0.0;
              return Slider(
                value: position,
                onChanged: (value) {
                  final duration = _audioPlayer.duration ?? Duration.zero;
                  final newPosition = Duration(
                      milliseconds: (duration.inMilliseconds * value).round());
                  _audioPlayer.seek(newPosition);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
