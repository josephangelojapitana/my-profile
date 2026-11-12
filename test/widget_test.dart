import 'package:flutter_test/flutter_test.dart';
import 'package:japitana_unit5_exercise/models/book.dart';
import 'package:japitana_unit5_exercise/models/movie.dart';

void main() {
  test('Book.fromJson reads the work id, authors and cover', () {
    final book = Book.fromJson({
      'key': '/works/OL27482W',
      'title': 'The Hobbit',
      'author_name': ['J.R.R. Tolkien'],
      'first_publish_year': 1937,
      'cover_i': 12345,
    });

    expect(book.workId, 'OL27482W');
    expect(book.title, 'The Hobbit');
    expect(book.authors, ['J.R.R. Tolkien']);
    expect(book.year, 1937);
    expect(book.coverUrl, 'https://covers.openlibrary.org/b/id/12345-M.jpg');
  });

  test('Movie.fromJson turns a poster of "N/A" into null', () {
    final movie = Movie.fromJson({
      'imdbID': 'tt1375666',
      'Title': 'Inception',
      'Year': '2010',
      'Poster': 'N/A',
    });

    expect(movie.imdbId, 'tt1375666');
    expect(movie.title, 'Inception');
    expect(movie.year, '2010');
    expect(movie.posterUrl, isNull);
  });
}