package org.spongycastle.jcajce.io;

import java.io.OutputStream;
import javax.crypto.Mac;

public class MacOutputStream
  extends OutputStream
{
  protected Mac aWm;
  
  public void write(int paramInt)
  {
    this.aWm.update((byte)paramInt);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aWm.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.io.MacOutputStream
 * JD-Core Version:    0.7.0.1
 */