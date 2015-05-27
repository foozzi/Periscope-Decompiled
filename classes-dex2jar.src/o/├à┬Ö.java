package o;

public class ř
  implements ڔ<ĸ>
{
  private final ĸ ln;
  
  public ř(ĸ paramĸ)
  {
    if (paramĸ == null) {
      throw new NullPointerException("Data must not be null");
    }
    this.ln = paramĸ;
  }
  
  public int getSize()
  {
    return this.ln.getSize();
  }
  
  public void recycle()
  {
    ڔ localڔ = this.ln.ԇ();
    if (localڔ != null) {
      localڔ.recycle();
    }
    localڔ = this.ln.ה();
    if (localڔ != null) {
      localڔ.recycle();
    }
  }
  
  public ĸ ٲ()
  {
    return this.ln;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Å
 * JD-Core Version:    0.7.0.1
 */