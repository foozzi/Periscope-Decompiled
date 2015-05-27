package org.spongycastle.util.encoders;

public class EncoderException
  extends IllegalStateException
{
  private Throwable aal;
  
  EncoderException(String paramString, Throwable paramThrowable)
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
 * Qualified Name:     org.spongycastle.util.encoders.EncoderException
 * JD-Core Version:    0.7.0.1
 */