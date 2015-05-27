package org.spongycastle.crypto.io;

import java.io.IOException;

public class CipherIOException
  extends IOException
{
  private final Throwable aal;
  
  public CipherIOException(String paramString, Throwable paramThrowable)
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
 * Qualified Name:     org.spongycastle.crypto.io.CipherIOException
 * JD-Core Version:    0.7.0.1
 */