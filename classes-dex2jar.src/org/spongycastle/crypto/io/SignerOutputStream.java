package org.spongycastle.crypto.io;

import java.io.OutputStream;
import org.spongycastle.crypto.Signer;

public class SignerOutputStream
  extends OutputStream
{
  protected Signer aNx;
  
  public void write(int paramInt)
  {
    this.aNx.update((byte)paramInt);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aNx.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.io.SignerOutputStream
 * JD-Core Version:    0.7.0.1
 */