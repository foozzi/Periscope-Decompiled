package org.spongycastle.util.encoders;

public class DecoderException
  extends IllegalStateException
{
  private Throwable aal;
  
  DecoderException(String paramString, Throwable paramThrowable)
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
 * Qualified Name:     org.spongycastle.util.encoders.DecoderException
 * JD-Core Version:    0.7.0.1
 */