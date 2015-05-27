package org.spongycastle.crypto;

public class InvalidCipherTextException
  extends CryptoException
{
  public InvalidCipherTextException() {}
  
  public InvalidCipherTextException(String paramString)
  {
    super(paramString);
  }
  
  public InvalidCipherTextException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.InvalidCipherTextException
 * JD-Core Version:    0.7.0.1
 */