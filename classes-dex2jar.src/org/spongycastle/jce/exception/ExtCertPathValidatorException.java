package org.spongycastle.jce.exception;

import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;

public class ExtCertPathValidatorException
  extends CertPathValidatorException
  implements ExtException
{
  private Throwable aal;
  
  public ExtCertPathValidatorException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    this.aal = paramThrowable;
  }
  
  public ExtCertPathValidatorException(String paramString, Throwable paramThrowable, CertPath paramCertPath, int paramInt)
  {
    super(paramString, paramThrowable, paramCertPath, paramInt);
    this.aal = paramThrowable;
  }
  
  public Throwable getCause()
  {
    return this.aal;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.exception.ExtCertPathValidatorException
 * JD-Core Version:    0.7.0.1
 */