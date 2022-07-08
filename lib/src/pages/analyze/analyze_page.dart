import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// TODO: add a help (?) button that will inform users about how to get the playlist/track url
/// this page is where the analyzing stuff will be done (analyze song/playlist)
class AnalyzePage extends HookConsumerWidget {
  const AnalyzePage({super.key});

  // TODO:
  // validate the url is the correct form,
  // validate the track/playlist was found,
  // determine if it is a track or a playlist,
  // show loading circle while waiting,
  // for playlists, show progress (100 of 700 songs analyzed...)
  // navigate to a new page that displays the results,
  // the results contain audio features for a track, as well as the image, title, artist...
  // for playlists it shows averages of all audio features, and the playlist image, title, author...
  // for getting data, follow my python script's methods,
  void analyzeButtonPressed() {}

  // function for onsubmit needs a string param, so this just redirects
  // maybe make pressing the button call this function
  void textFieldSubmitted(String value) {
    analyzeButtonPressed();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: const Color.fromRGBO(0, 5, 0, 100),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Analyze a Spotify track or playlist by pasting the track/playlist link below:',
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            TextField(
              textInputAction: TextInputAction.go,
              onSubmitted: (value) => textFieldSubmitted(value),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                hintText: 'ex. https://open.spotify.com/track/ex=ex',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2.0),
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2.0),
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            ElevatedButton(
              onPressed: analyzeButtonPressed,
              child: const Text('Analyze'),
            ),
          ],
        ),
      ),
    );
  }
}
