class List {
  public Inhaltstyp first;
  
  // constructor, setzt das erste Element
  List (Inhaltstyp _first) {
    first = _first;
  }
  
  // leerer constructor, falls nicht mit erstem Element initiiert
  List() {}
  
  // löscht das angegebene Element indem es das next Element des Elements das vor dem gesuchten Element liegt auf das Element nach dem gesuchten zeigt
  // EL1 -> EL2
  // EL2 -> EL3
  // EL3 -> EL4
  //
  // Danach
  // EL1 -> EL3
  // EL2 -> EL3
  // EL3 -> EL4
  //
  // Das sorgt dafür, dass beim durschreiten der Elemente das zweite Element übersprungen wird
  public void delete (Inhaltstyp inhalt) {
    
    // setzt beide auf first, falls das gesuchte Element das Erste ist
    Inhaltstyp prev = first;
    Inhaltstyp current = first;
    
    // gehe solange zum nächsten Element bis das gesuchte gefunden wurde
    // dann ist das prev Element das Element vor dem gesuchten, was wir nun zum Element nach dem gesuchten zeigen lassen können
    while (current != inhalt) {
      prev = current;
      current = current.next;
    }
    
    prev.next = current.next;
  }
  
  // Wenn kein erstes Element vorhanden ist, hat die Liste keine Elemente mehr
  public boolean isEmpty() {
    if(first == null) {
      return true;
    } else {
      return false;
    }
  }
  
  // geht die Liste durch bis es beim gewünschten Objekt angekommen ist
  public Inhaltstyp getItem(int pos) {
    Inhaltstyp current = first;
    for(int i = 0; i < pos; i++) {
      current = current.next;
    }
    return current;
  } 
  
  // Setzt bext des letzten Elements der Liste auf das gewünschte Element
  public void appendItem(Inhaltstyp inhalt) {
    Inhaltstyp current = first;
    while (current.next != null) {
      current = current.next;
    }
    current.next = inhalt;
  }
  
}