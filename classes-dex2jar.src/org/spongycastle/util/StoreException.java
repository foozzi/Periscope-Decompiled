package org.spongycastle.util;

public class StoreException
  extends RuntimeException
{
  private Throwable bkc;
  
  public StoreException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    this.bkc = paramThrowable;
  }
  
  public Throwable getCause()
  {
    return this.bkc;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.StoreException
 * JD-Core Version:    0.7.0.1
 */