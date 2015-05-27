package com.squareup.okhttp.internal;

import java.io.IOException;
import o.ue;
import o.ul;
import o.uz;

class FaultHidingSink
  extends ul
{
  private boolean hasErrors;
  
  public FaultHidingSink(uz paramuz)
  {
    super(paramuz);
  }
  
  public void close()
  {
    if (this.hasErrors) {
      return;
    }
    try
    {
      super.close();
      return;
    }
    catch (IOException localIOException)
    {
      this.hasErrors = true;
      onException(localIOException);
    }
  }
  
  public void flush()
  {
    if (this.hasErrors) {
      return;
    }
    try
    {
      super.flush();
      return;
    }
    catch (IOException localIOException)
    {
      this.hasErrors = true;
      onException(localIOException);
    }
  }
  
  protected void onException(IOException paramIOException) {}
  
  public void write(ue paramue, long paramLong)
  {
    if (this.hasErrors)
    {
      paramue.ᵋ(paramLong);
      return;
    }
    try
    {
      super.write(paramue, paramLong);
      return;
    }
    catch (IOException paramue)
    {
      this.hasErrors = true;
      onException(paramue);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.FaultHidingSink
 * JD-Core Version:    0.7.0.1
 */