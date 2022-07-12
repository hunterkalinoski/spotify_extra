import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotify/spotify.dart';
import 'spotify_credentials.dart';

// this provider is just being used like a singleton, the spotifyApi is created once,
// and the instance can be grabbed with the provider

//TODO: test what happens with invalid credentials
final _credentials =
    SpotifyApiCredentials(MySpotifyCredentials.clientId, MySpotifyCredentials.clientSecret);
final _spotify = SpotifyApi(_credentials);

// returns a SpotifyApi object with credentials already entered
final spotifyProvider = Provider<SpotifyApi>((_) => _spotify);
