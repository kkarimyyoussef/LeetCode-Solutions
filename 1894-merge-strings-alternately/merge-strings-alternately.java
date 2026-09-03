class Solution {
    public String mergeAlternately(String word1, String word2) {
 
        StringBuilder newWord = new StringBuilder(word1.length() + word2.length());

        for(int i = 0; i < word1.length() + word2.length(); i++){

            if (word1.length() > i){
                newWord.append(word1.charAt(i));
            }

            if (word2.length() > i){
                newWord.append(word2.charAt(i));
            }
        }
        
        return newWord.toString();
    }
}