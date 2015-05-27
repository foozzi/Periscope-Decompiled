package org.spongycastle.i18n;

public class LocalizedException
  extends Exception
{
  private Throwable aal;
  
  public Throwable getCause()
  {
    return this.aal;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.i18n.LocalizedException
 * JD-Core Version:    0.7.0.1
 */