class InputForm {
  private Label label;
  private TypedCharSender typedCharSender;
  
  public InputForm(int x0, int y0) {
    label = new Label(x0, y0);
    typedCharSender = new TypedCharSender(label);
    setObserver(typedCharSender);
  }

  public void removeInputForm() {
    setObserver(null);
  }
  
  public void display() {
    label.display();
  }

  public String getText() {
    return label.getText();
  }

  public void resetText() {
    label.resetText();
  }
}
