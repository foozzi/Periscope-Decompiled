package org.spongycastle.jce.exception;

import java.security.cert.CertPathBuilderException;

public class ExtCertPathBuilderException
  extends CertPathBuilderException
  implements ExtException
{
  private Throwable aal;
  
  public ExtCertPathBuilderException(String paramString, Throwable paramThrowable)
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
 * Qualified Name:     org.spongycastle.jce.exception.ExtCertPathBuilderException
 * JD-Core Version:    0.7.0.1
 */