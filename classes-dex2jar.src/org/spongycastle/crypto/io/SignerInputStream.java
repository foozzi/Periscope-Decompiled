package org.spongycastle.crypto.io;

import java.io.FilterInputStream;
import java.io.InputStream;
import org.spongycastle.crypto.Signer;

public class SignerInputStream
  extends FilterInputStream
{
  protected Signer aNx;
  
  public int read()
  {
    int i = this.in.read();
    if (i >= 0) {
      this.aNx.update((byte)i);
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = this.in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 > 0) {
      this.aNx.update(paramArrayOfByte, paramInt1, paramInt2);
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.io.SignerInputStream
 * JD-Core Version:    0.7.0.1
 */