package org.spongycastle.util;

public class StreamParsingException
  extends Exception
{
  Throwable bkc;
  
  public Throwable getCause()
  {
    return this.bkc;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.StreamParsingException
 * JD-Core Version:    0.7.0.1
 */