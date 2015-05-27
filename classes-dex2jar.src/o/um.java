package o;

public abstract class um
  implements va
{
  private final va delegate;
  
  public um(va paramva)
  {
    if (paramva == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.delegate = paramva;
  }
  
  public void close()
  {
    this.delegate.close();
  }
  
  public final va delegate()
  {
    return this.delegate;
  }
  
  public long read(ue paramue, long paramLong)
  {
    return this.delegate.read(paramue, paramLong);
  }
  
  public vb timeout()
  {
    return this.delegate.timeout();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.um
 * JD-Core Version:    0.7.0.1
 */