package org.spongycastle.jce.exception;

import java.io.IOException;

public class ExtIOException
  extends IOException
  implements ExtException
{
  private Throwable aal;
  
  public Throwable getCause()
  {
    return this.aal;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.exception.ExtIOException
 * JD-Core Version:    0.7.0.1
 */