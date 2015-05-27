package org.spongycastle.util.io.pem;

import java.io.IOException;

public class PemGenerationException
  extends IOException
{
  private Throwable aal;
  
  public Throwable getCause()
  {
    return this.aal;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.io.pem.PemGenerationException
 * JD-Core Version:    0.7.0.1
 */