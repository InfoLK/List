// Inhaltstyp
class Inhaltstyp<T> {
  public T t;
  public Inhaltstyp next;
  
  Inhaltstyp (T _t) {
    t = _t;
  }
  
  public void set(T _t) {
    t = _t;
  }
  
  public T get() {
    return t;
  }
}