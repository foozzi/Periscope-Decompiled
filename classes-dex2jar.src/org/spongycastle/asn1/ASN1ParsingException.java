package org.spongycastle.asn1;

public class ASN1ParsingException
  extends IllegalStateException
{
  private Throwable aal;
  
  public ASN1ParsingException(String paramString)
  {
    super(paramString);
  }
  
  public ASN1ParsingException(String paramString, Throwable paramThrowable)
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
 * Qualified Name:     org.spongycastle.asn1.ASN1ParsingException
 * JD-Core Version:    0.7.0.1
 */