import 'words.dart';

class WordBank {
  int wordNumber = 0;

  List<Words> wordDatasList = [
    Words(
      wordEnglish: 'Mother',
      wordTurkish: 'Anne',
    ),
    Words(
      wordEnglish: 'Father',
      wordTurkish: 'Baba',
    ),
    Words(
      wordEnglish: 'Good',
      wordTurkish: 'İyi',
    ),
    Words(
      wordEnglish: 'Bad',
      wordTurkish: 'Kötü',
    ),
    Words(
      wordEnglish: 'House',
      wordTurkish: 'Ev',
    ),
    Words(
      wordEnglish: 'No',
      wordTurkish: 'Hayır',
    ),
    Words(
      wordEnglish: 'Yes',
      wordTurkish: 'Evet',
    ),
    Words(
      wordEnglish: 'We',
      wordTurkish: 'Biz',
    ),
    Words(
      wordEnglish: 'Beautiful',
      wordTurkish: 'Güzel',
    ),
    Words(
      wordEnglish: 'Handsome',
      wordTurkish: 'Yakışıklı',
    ),
    Words(
      wordEnglish: 'Apple',
      wordTurkish: 'Elma',
    ),
    Words(
      wordEnglish:
          'extra', //Bir tane ekstra kelime koymam lazım sona bu listedeki son kelime enddrawerda gösterilmiyor.
      wordTurkish: 'extra', //i=0da drawerheader gösterildiği için göstermiyor. (itemCount: wordBank.wordDatasList.length) builderim listemdeki eleman sayısı kadar build etcek. Ama ben bir elemanı drawerheader için harcadığımdan dolayı extra bir eleman koymak zorundayım(ben çözümü böyle buldum en azından :).
    ),
  ];

  String getWordEnglish() {
    return wordDatasList[wordNumber].wordEnglish;
  }

  String getWordTurkish() {
    return wordDatasList[wordNumber].wordTurkish;
  }

  int getWordNumber() {
    return wordNumber;
  }

  void nextPage() {
    wordNumber++;
  }

  void previousPage() {
    wordNumber--;
  }
}
