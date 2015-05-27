package org.spongycastle.x509.util;

public class StreamParsingException
  extends Exception
{
  Throwable bkc;
  
  public StreamParsingException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    this.bkc = paramThrowable;
  }
  
  public Throwable getCause()
  {
    return this.bkc;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.util.StreamParsingException
 * JD-Core Version:    0.7.0.1
 */