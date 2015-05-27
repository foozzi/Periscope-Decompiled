package org.spongycastle.jcajce.provider.asymmetric.x509;

import java.security.cert.CRLException;

class ExtCRLException
  extends CRLException
{
  Throwable aal;
  
  ExtCRLException(String paramString, Throwable paramThrowable)
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
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.x509.ExtCRLException
 * JD-Core Version:    0.7.0.1
 */