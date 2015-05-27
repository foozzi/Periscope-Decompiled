package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class HC128Engine
  implements StreamCipher
{
  private boolean aJn;
  private int[] aKr = new int[512];
  private int[] aKs = new int[512];
  private int aKt = 0;
  private int aKu = 0;
  private byte[] buf = new byte[4];
  private byte[] iv;
  private byte[] key;
  
  private void init()
  {
    if (this.key.length != 16) {
      throw new IllegalArgumentException("The key must be 128 bits long");
    }
    this.aKu = 0;
    this.aKt = 0;
    int[] arrayOfInt = new int[1280];
    int i = 0;
    int j;
    while (i < 16)
    {
      j = i >> 2;
      arrayOfInt[j] |= (this.key[i] & 0xFF) << (i & 0x3) * 8;
      i += 1;
    }
    System.arraycopy(arrayOfInt, 0, arrayOfInt, 4, 4);
    i = 0;
    while ((i < this.iv.length) && (i < 16))
    {
      j = (i >> 2) + 8;
      arrayOfInt[j] |= (this.iv[i] & 0xFF) << (i & 0x3) * 8;
      i += 1;
    }
    System.arraycopy(arrayOfInt, 8, arrayOfInt, 12, 4);
    i = 16;
    while (i < 1280)
    {
      arrayOfInt[i] = (Ῑ(arrayOfInt[(i - 2)]) + arrayOfInt[(i - 7)] + Ῐ(arrayOfInt[(i - 15)]) + arrayOfInt[(i - 16)] + i);
      i += 1;
    }
    System.arraycopy(arrayOfInt, 256, this.aKr, 0, 512);
    System.arraycopy(arrayOfInt, 768, this.aKs, 0, 512);
    i = 0;
    while (i < 512)
    {
      this.aKr[i] = jy();
      i += 1;
    }
    i = 0;
    while (i < 512)
    {
      this.aKs[i] = jy();
      i += 1;
    }
    this.aKt = 0;
  }
  
  private int jy()
  {
    int i = ⅹ(this.aKt);
    int[] arrayOfInt;
    if (this.aKt < 512)
    {
      arrayOfInt = this.aKr;
      arrayOfInt[i] += ʴ(this.aKr[ʸ(i, 3)], this.aKr[ʸ(i, 10)], this.aKr[ʸ(i, 511)]);
      i = Ὶ(this.aKr[ʸ(i, 12)]) ^ this.aKr[i];
    }
    else
    {
      arrayOfInt = this.aKs;
      arrayOfInt[i] += ˆ(this.aKs[ʸ(i, 3)], this.aKs[ʸ(i, 10)], this.aKs[ʸ(i, 511)]);
      i = Ί(this.aKs[ʸ(i, 12)]) ^ this.aKs[i];
    }
    this.aKt = ℴ(this.aKt + 1);
    return i;
  }
  
  private byte jz()
  {
    if (this.aKu == 0)
    {
      int i = jy();
      this.buf[0] = ((byte)(i & 0xFF));
      i >>= 8;
      this.buf[1] = ((byte)(i & 0xFF));
      i >>= 8;
      this.buf[2] = ((byte)(i & 0xFF));
      this.buf[3] = ((byte)(i >> 8 & 0xFF));
    }
    byte b = this.buf[this.aKu];
    this.aKu = (this.aKu + 1 & 0x3);
    return b;
  }
  
  private static int rotateLeft(int paramInt1, int paramInt2)
  {
    return paramInt1 << paramInt2 | paramInt1 >>> -paramInt2;
  }
  
  private static int rotateRight(int paramInt1, int paramInt2)
  {
    return paramInt1 >>> paramInt2 | paramInt1 << -paramInt2;
  }
  
  private int ʴ(int paramInt1, int paramInt2, int paramInt3)
  {
    return (rotateRight(paramInt1, 10) ^ rotateRight(paramInt3, 23)) + rotateRight(paramInt2, 8);
  }
  
  private static int ʸ(int paramInt1, int paramInt2)
  {
    return ⅹ(paramInt1 - paramInt2);
  }
  
  private int ˆ(int paramInt1, int paramInt2, int paramInt3)
  {
    return (rotateLeft(paramInt1, 10) ^ rotateLeft(paramInt3, 23)) + rotateLeft(paramInt2, 8);
  }
  
  private static int Ῐ(int paramInt)
  {
    return rotateRight(paramInt, 7) ^ rotateRight(paramInt, 18) ^ paramInt >>> 3;
  }
  
  private static int Ῑ(int paramInt)
  {
    return rotateRight(paramInt, 17) ^ rotateRight(paramInt, 19) ^ paramInt >>> 10;
  }
  
  private int Ὶ(int paramInt)
  {
    return this.aKs[(paramInt & 0xFF)] + this.aKs[((paramInt >> 16 & 0xFF) + 256)];
  }
  
  private int Ί(int paramInt)
  {
    return this.aKr[(paramInt & 0xFF)] + this.aKr[((paramInt >> 16 & 0xFF) + 256)];
  }
  
  private static int ℴ(int paramInt)
  {
    return paramInt & 0x3FF;
  }
  
  private static int ⅹ(int paramInt)
  {
    return paramInt & 0x1FF;
  }
  
  public String iG()
  {
    return "HC-128";
  }
  
  public void reset()
  {
    init();
  }
  
  public byte ʽ(byte paramByte)
  {
    return (byte)(jz() ^ paramByte);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    CipherParameters localCipherParameters = paramCipherParameters;
    if ((paramCipherParameters instanceof ParametersWithIV))
    {
      this.iv = ((ParametersWithIV)paramCipherParameters).getIV();
      localCipherParameters = ((ParametersWithIV)paramCipherParameters).lh();
    }
    else
    {
      this.iv = new byte[0];
    }
    if ((localCipherParameters instanceof KeyParameter))
    {
      this.key = ((KeyParameter)localCipherParameters).getKey();
      init();
    }
    else
    {
      throw new IllegalArgumentException("Invalid parameter passed to HC128 init - " + paramCipherParameters.getClass().getName());
    }
    this.aJn = true;
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
      paramArrayOfByte2[(paramInt3 + i)] = ((byte)(paramArrayOfByte1[(paramInt1 + i)] ^ jz()));
      i += 1;
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.HC128Engine
 * JD-Core Version:    0.7.0.1
 */