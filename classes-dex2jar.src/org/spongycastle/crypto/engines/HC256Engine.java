package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class HC256Engine
  implements StreamCipher
{
  private boolean aJn;
  private int[] aKr = new int[1024];
  private int[] aKs = new int[1024];
  private int aKt = 0;
  private int aKu = 0;
  private byte[] buf = new byte[4];
  private byte[] iv;
  private byte[] key;
  
  private void init()
  {
    if ((this.key.length != 32) && (this.key.length != 16)) {
      throw new IllegalArgumentException("The key must be 128/256 bits long");
    }
    if (this.iv.length < 16) {
      throw new IllegalArgumentException("The IV must be at least 128 bits long");
    }
    if (this.key.length != 32)
    {
      localObject = new byte[32];
      System.arraycopy(this.key, 0, localObject, 0, this.key.length);
      System.arraycopy(this.key, 0, localObject, 16, this.key.length);
      this.key = ((byte[])localObject);
    }
    if (this.iv.length < 32)
    {
      localObject = new byte[32];
      System.arraycopy(this.iv, 0, localObject, 0, this.iv.length);
      System.arraycopy(this.iv, 0, localObject, this.iv.length, localObject.length - this.iv.length);
      this.iv = ((byte[])localObject);
    }
    this.aKu = 0;
    this.aKt = 0;
    Object localObject = new int[2560];
    int i = 0;
    int j;
    while (i < 32)
    {
      j = i >> 2;
      localObject[j] |= (this.key[i] & 0xFF) << (i & 0x3) * 8;
      i += 1;
    }
    i = 0;
    while (i < 32)
    {
      j = (i >> 2) + 8;
      localObject[j] |= (this.iv[i] & 0xFF) << (i & 0x3) * 8;
      i += 1;
    }
    i = 16;
    while (i < 2560)
    {
      j = localObject[(i - 2)];
      int k = localObject[(i - 15)];
      localObject[i] = ((rotateRight(j, 17) ^ rotateRight(j, 19) ^ j >>> 10) + localObject[(i - 7)] + (rotateRight(k, 7) ^ rotateRight(k, 18) ^ k >>> 3) + localObject[(i - 16)] + i);
      i += 1;
    }
    System.arraycopy(localObject, 512, this.aKr, 0, 1024);
    System.arraycopy(localObject, 1536, this.aKs, 0, 1024);
    i = 0;
    while (i < 4096)
    {
      jy();
      i += 1;
    }
    this.aKt = 0;
  }
  
  private int jy()
  {
    int i = this.aKt & 0x3FF;
    int j;
    int k;
    int[] arrayOfInt;
    if (this.aKt < 1024)
    {
      j = this.aKr[(i - 3 & 0x3FF)];
      k = this.aKr[(i - 1023 & 0x3FF)];
      arrayOfInt = this.aKr;
      arrayOfInt[i] += this.aKr[(i - 10 & 0x3FF)] + (rotateRight(j, 10) ^ rotateRight(k, 23)) + this.aKs[((j ^ k) & 0x3FF)];
      j = this.aKr[(i - 12 & 0x3FF)];
      i = this.aKs[(j & 0xFF)] + this.aKs[((j >> 8 & 0xFF) + 256)] + this.aKs[((j >> 16 & 0xFF) + 512)] + this.aKs[((j >> 24 & 0xFF) + 768)] ^ this.aKr[i];
    }
    else
    {
      j = this.aKs[(i - 3 & 0x3FF)];
      k = this.aKs[(i - 1023 & 0x3FF)];
      arrayOfInt = this.aKs;
      arrayOfInt[i] += this.aKs[(i - 10 & 0x3FF)] + (rotateRight(j, 10) ^ rotateRight(k, 23)) + this.aKr[((j ^ k) & 0x3FF)];
      j = this.aKs[(i - 12 & 0x3FF)];
      i = this.aKr[(j & 0xFF)] + this.aKr[((j >> 8 & 0xFF) + 256)] + this.aKr[((j >> 16 & 0xFF) + 512)] + this.aKr[((j >> 24 & 0xFF) + 768)] ^ this.aKs[i];
    }
    this.aKt = (this.aKt + 1 & 0x7FF);
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
  
  private static int rotateRight(int paramInt1, int paramInt2)
  {
    return paramInt1 >>> paramInt2 | paramInt1 << -paramInt2;
  }
  
  public String iG()
  {
    return "HC-256";
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
      throw new IllegalArgumentException("Invalid parameter passed to HC256 init - " + paramCipherParameters.getClass().getName());
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
 * Qualified Name:     org.spongycastle.crypto.engines.HC256Engine
 * JD-Core Version:    0.7.0.1
 */