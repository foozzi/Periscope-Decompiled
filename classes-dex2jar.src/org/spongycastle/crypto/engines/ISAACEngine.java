package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Pack;

public class ISAACEngine
  implements StreamCipher
{
  private byte[] aIZ = null;
  private boolean aJn = false;
  private final int aKG = 8;
  private final int aKH = 256;
  private int[] aKI = null;
  private int[] aKJ = null;
  private int aKK = 0;
  private int aKL = 0;
  private int aKM = 0;
  private byte[] aKN = new byte[1024];
  private int index = 0;
  
  private void jC()
  {
    int i = this.aKL;
    int j = this.aKM + 1;
    this.aKM = j;
    this.aKL = (i + j);
    i = 0;
    while (i < 256)
    {
      j = this.aKI[i];
      switch (i & 0x3)
      {
      default: 
        break;
      case 0: 
        this.aKK ^= this.aKK << 13;
        break;
      case 1: 
        this.aKK ^= this.aKK >>> 6;
        break;
      case 2: 
        this.aKK ^= this.aKK << 2;
        break;
      case 3: 
        this.aKK ^= this.aKK >>> 16;
      }
      this.aKK += this.aKI[(i + 128 & 0xFF)];
      int[] arrayOfInt = this.aKI;
      int k = this.aKI[(j >>> 2 & 0xFF)] + this.aKK + this.aKL;
      arrayOfInt[i] = k;
      arrayOfInt = this.aKJ;
      j = this.aKI[(k >>> 10 & 0xFF)] + j;
      this.aKL = j;
      arrayOfInt[i] = j;
      i += 1;
    }
  }
  
  private void ˇ(byte[] paramArrayOfByte)
  {
    this.aIZ = paramArrayOfByte;
    if (this.aKI == null) {
      this.aKI = new int[256];
    }
    if (this.aKJ == null) {
      this.aKJ = new int[256];
    }
    int i = 0;
    while (i < 256)
    {
      localObject = this.aKI;
      this.aKJ[i] = 0;
      localObject[i] = 0;
      i += 1;
    }
    this.aKM = 0;
    this.aKL = 0;
    this.aKK = 0;
    this.index = 0;
    Object localObject = new byte[paramArrayOfByte.length + (paramArrayOfByte.length & 0x3)];
    System.arraycopy(paramArrayOfByte, 0, localObject, 0, paramArrayOfByte.length);
    i = 0;
    while (i < localObject.length)
    {
      this.aKJ[(i >>> 2)] = Pack.ᐟ((byte[])localObject, i);
      i += 4;
    }
    paramArrayOfByte = new int[8];
    i = 0;
    while (i < 8)
    {
      paramArrayOfByte[i] = -1640531527;
      i += 1;
    }
    i = 0;
    while (i < 4)
    {
      ˏ(paramArrayOfByte);
      i += 1;
    }
    i = 0;
    while (i < 2)
    {
      int j = 0;
      while (j < 256)
      {
        int k = 0;
        while (k < 8)
        {
          int n = paramArrayOfByte[k];
          int m;
          if (i < 1) {
            m = this.aKJ[(j + k)];
          } else {
            m = this.aKI[(j + k)];
          }
          paramArrayOfByte[k] = (n + m);
          k += 1;
        }
        ˏ(paramArrayOfByte);
        k = 0;
        while (k < 8)
        {
          this.aKI[(j + k)] = paramArrayOfByte[k];
          k += 1;
        }
        j += 8;
      }
      i += 1;
    }
    jC();
    this.aJn = true;
  }
  
  private void ˏ(int[] paramArrayOfInt)
  {
    paramArrayOfInt[0] ^= paramArrayOfInt[1] << 11;
    paramArrayOfInt[3] += paramArrayOfInt[0];
    paramArrayOfInt[1] += paramArrayOfInt[2];
    paramArrayOfInt[1] ^= paramArrayOfInt[2] >>> 2;
    paramArrayOfInt[4] += paramArrayOfInt[1];
    paramArrayOfInt[2] += paramArrayOfInt[3];
    paramArrayOfInt[2] ^= paramArrayOfInt[3] << 8;
    paramArrayOfInt[5] += paramArrayOfInt[2];
    paramArrayOfInt[3] += paramArrayOfInt[4];
    paramArrayOfInt[3] ^= paramArrayOfInt[4] >>> 16;
    paramArrayOfInt[6] += paramArrayOfInt[3];
    paramArrayOfInt[4] += paramArrayOfInt[5];
    paramArrayOfInt[4] ^= paramArrayOfInt[5] << 10;
    paramArrayOfInt[7] += paramArrayOfInt[4];
    paramArrayOfInt[5] += paramArrayOfInt[6];
    paramArrayOfInt[5] ^= paramArrayOfInt[6] >>> 4;
    paramArrayOfInt[0] += paramArrayOfInt[5];
    paramArrayOfInt[6] += paramArrayOfInt[7];
    paramArrayOfInt[6] ^= paramArrayOfInt[7] << 8;
    paramArrayOfInt[1] += paramArrayOfInt[6];
    paramArrayOfInt[7] += paramArrayOfInt[0];
    paramArrayOfInt[7] ^= paramArrayOfInt[0] >>> 9;
    paramArrayOfInt[2] += paramArrayOfInt[7];
    paramArrayOfInt[0] += paramArrayOfInt[1];
  }
  
  public String iG()
  {
    return "ISAAC";
  }
  
  public void reset()
  {
    ˇ(this.aIZ);
  }
  
  public byte ʽ(byte paramByte)
  {
    if (this.index == 0)
    {
      jC();
      this.aKN = Pack.ⁱ(this.aKJ);
    }
    byte b = (byte)(this.aKN[this.index] ^ paramByte);
    this.index = (this.index + 1 & 0x3FF);
    return b;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof KeyParameter)) {
      throw new IllegalArgumentException("invalid parameter passed to ISAAC init - " + paramCipherParameters.getClass().getName());
    }
    ˇ(((KeyParameter)paramCipherParameters).getKey());
  }
  
  public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (!this.aJn) {
      throw new IllegalStateException(iG() + " not initialised");
    }
    if (paramInt1 + paramInt2 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt3 + paramInt2 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    int i = 0;
    while (i < paramInt2)
    {
      if (this.index == 0)
      {
        jC();
        this.aKN = Pack.ⁱ(this.aKJ);
      }
      paramArrayOfByte2[(i + paramInt3)] = ((byte)(this.aKN[this.index] ^ paramArrayOfByte1[(i + paramInt1)]));
      this.index = (this.index + 1 & 0x3FF);
      i += 1;
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.ISAACEngine
 * JD-Core Version:    0.7.0.1
 */