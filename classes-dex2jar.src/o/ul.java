package o;

public abstract class ul
  implements uz
{
  private final uz delegate;
  
  public ul(uz paramuz)
  {
    if (paramuz == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.delegate = paramuz;
  }
  
  public void close()
  {
    this.delegate.close();
  }
  
  public final uz delegate()
  {
    return this.delegate;
  }
  
  public void flush()
  {
    this.delegate.flush();
  }
  
  public vb timeout()
  {
    return this.delegate.timeout();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
  }
  
  public void write(ue paramue, long paramLong)
  {
    this.delegate.write(paramue, paramLong);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ul
 * JD-Core Version:    0.7.0.1
 */