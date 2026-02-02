class WordCount {
  Map<String, int> countWords(String text) {
  
    String lowerText = text.toLowerCase();
    
    String cleanedText = lowerText.replaceAll(RegExp(r"[^a-z0-9'\s]"), ' ');
    

    List<String> words = cleanedText.split(RegExp(r'\s+'));
    
  
    Map<String, int> result = {};
    
    for (String word in words) {

      word = word.trim().replaceAll(RegExp(r"^'+|'+$"), '');
      

      if (word.isNotEmpty) {
        result[word] = (result[word] ?? 0) + 1;
      }
    }
    
    return result;
  }
}
