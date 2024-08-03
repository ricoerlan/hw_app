class SongChartsModel {
  int? id;
  String? name;
  int? week;
  int? year;
  List<Songs>? songs;

  SongChartsModel({this.id, this.name, this.week, this.year, this.songs});

  SongChartsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    week = json['week'];
    year = json['year'];
    if (json['songs'] != null) {
      songs = <Songs>[];
      json['songs'].forEach((v) {
        songs!.add(Songs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['week'] = week;
    data['year'] = year;
    if (songs != null) {
      data['songs'] = songs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Songs {
  int? position;
  Song? song;

  Songs({this.position, this.song});

  Songs.fromJson(Map<String, dynamic> json) {
    position = json['position'];
    song = json['song'] != null ? Song.fromJson(json['song']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['position'] = position;
    if (song != null) {
      data['song'] = song!.toJson();
    }
    return data;
  }
}

class Song {
  int? id;
  int? artistId;
  String? artistName;
  String? artistProfilePicture;
  String? title;
  String? spotifyUrl;
  String? appleMusicUrl;

  Song(
      {this.id,
      this.artistId,
      this.artistName,
      this.artistProfilePicture,
      this.title,
      this.spotifyUrl,
      this.appleMusicUrl});

  Song.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    artistId = json['artist_id'];
    artistName = json['artist_name'];
    artistProfilePicture = json['artist_profile_picture'];
    title = json['title'];
    spotifyUrl = json['spotify_url'];
    appleMusicUrl = json['apple_music_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['artist_id'] = artistId;
    data['artist_name'] = artistName;
    data['artist_profile_picture'] = artistProfilePicture;
    data['title'] = title;
    data['spotify_url'] = spotifyUrl;
    data['apple_music_url'] = appleMusicUrl;
    return data;
  }
}
