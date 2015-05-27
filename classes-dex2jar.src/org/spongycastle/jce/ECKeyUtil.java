package org.spongycastle.jce;

public class ECKeyUtil
{
  static class UnexpectedException
    extends RuntimeException
  {
    private Throwable aal;
    
    public Throwable getCause()
    {
      return this.aal;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.ECKeyUtil
 * JD-Core Version:    0.7.0.1
 */