package org.spongycastle.crypto;

public class CryptoException
  extends Exception
{
  private Throwable aal;
  
  public CryptoException() {}
  
  public CryptoException(String paramString)
  {
    super(paramString);
  }
  
  public CryptoException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    this.aal = paramThrowable;
  }
  
  public Throwable getCause()
  {
    return this.aal;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.CryptoException
 * JD-Core Version:    0.7.0.1
 */