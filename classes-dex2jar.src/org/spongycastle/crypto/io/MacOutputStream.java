package org.spongycastle.crypto.io;

import java.io.OutputStream;
import org.spongycastle.crypto.Mac;

public class MacOutputStream
  extends OutputStream
{
  protected Mac aKx;
  
  public MacOutputStream(Mac paramMac)
  {
    this.aKx = paramMac;
  }
  
  public void write(int paramInt)
  {
    this.aKx.update((byte)paramInt);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aKx.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.io.MacOutputStream
 * JD-Core Version:    0.7.0.1
 */