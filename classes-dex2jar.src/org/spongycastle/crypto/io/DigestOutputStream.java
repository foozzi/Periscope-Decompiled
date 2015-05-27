package org.spongycastle.crypto.io;

import java.io.OutputStream;
import org.spongycastle.crypto.Digest;

public class DigestOutputStream
  extends OutputStream
{
  protected Digest aFH;
  
  public DigestOutputStream(Digest paramDigest)
  {
    this.aFH = paramDigest;
  }
  
  public byte[] hs()
  {
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte, 0);
    return arrayOfByte;
  }
  
  public void write(int paramInt)
  {
    this.aFH.update((byte)paramInt);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.io.DigestOutputStream
 * JD-Core Version:    0.7.0.1
 */