class Movie {
  String url;
  String name;

  Movie(this.url, this.name);

  Movie.defaultMovie() : this(
      "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSxo7Naxu0tjuSEZ9_faYL--aWjx8V5TKr4q2YeenYKXXik-T5P",
      "Alita");
}