void setup() {
  Inhaltstyp<Integer> eins = new Inhaltstyp<Integer>(1);
  Inhaltstyp<Integer> zwei = new Inhaltstyp<Integer>(2);
  Inhaltstyp<Integer> drei = new Inhaltstyp<Integer>(3);
  
  List list = new List(eins);
  
  list.appendItem(zwei);
  println(list.getItem(1).get());
  
  list.delete(zwei);
  
  list.appendItem(drei);
  println(list.getItem(1).get());
}