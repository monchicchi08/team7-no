class Judge{
  Boolean isCorrect(String inputword,String question){
    println(inputword,question);
    if(inputword.equals(question)){
      return true;
    }
    return false;
  }
}
