package org.spongycastle.pqc.crypto.gmss.util;

import org.spongycastle.crypto.Digest;

public class GMSSRandom
{
  private Digest bfu;
  
  public GMSSRandom(Digest paramDigest)
  {
    this.bfu = paramDigest;
  }
  
  private void ᵔ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int j = 0;
    int i = 0;
    while (i < paramArrayOfByte1.length)
    {
      j = (paramArrayOfByte1[i] & 0xFF) + (paramArrayOfByte2[i] & 0xFF) + j;
      paramArrayOfByte1[i] = ((byte)j);
      j = (byte)(j >> 8);
      i += 1;
    }
  }
  
  private void ᵧ(byte[] paramArrayOfByte)
  {
    int j = 1;
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      j = (paramArrayOfByte[i] & 0xFF) + j;
      paramArrayOfByte[i] = ((byte)j);
      j = (byte)(j >> 8);
      i += 1;
    }
  }
  
  public byte[] ᵞ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    this.bfu.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    arrayOfByte = new byte[this.bfu.iJ()];
    this.bfu.doFinal(arrayOfByte, 0);
    ᵔ(paramArrayOfByte, arrayOfByte);
    ᵧ(paramArrayOfByte);
    return arrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.util.GMSSRandom
 * JD-Core Version:    0.7.0.1
 */