package org.spongycastle.jce.provider;

import org.spongycastle.jce.exception.ExtException;

public class AnnotatedException
  extends Exception
  implements ExtException
{
  private Throwable baB;
  
  AnnotatedException(String paramString)
  {
    this(paramString, null);
  }
  
  AnnotatedException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    this.baB = paramThrowable;
  }
  
  public Throwable getCause()
  {
    return this.baB;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.AnnotatedException
 * JD-Core Version:    0.7.0.1
 */