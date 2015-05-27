package org.spongycastle.asn1;

import java.io.IOException;

public class ASN1Exception
  extends IOException
{
  private Throwable aal;
  
  ASN1Exception(String paramString)
  {
    super(paramString);
  }
  
  ASN1Exception(String paramString, Throwable paramThrowable)
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
 * Qualified Name:     org.spongycastle.asn1.ASN1Exception
 * JD-Core Version:    0.7.0.1
 */