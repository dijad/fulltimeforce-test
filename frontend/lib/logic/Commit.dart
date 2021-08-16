class Commit {
  late String sha;
  late String distinct;
  late String email;
  late String name;
  late String url;
  late String message;

  Commit({
    required this.sha,
    required this.distinct,
    required this.email,
    required this.name,
    required this.url,
    required this.message,
  });

  factory Commit.fromJson(Map<String, dynamic> json) {
    return Commit(
        sha: json["sha"] as String,
        distinct: json["distinct"] == true ? 'true' : 'false',
        email: json["author"]["email"] as String,
        name: json["author"]["name"] as String,
        url: json["url"] as String,
        message: json["message"] as String);
  }
}
