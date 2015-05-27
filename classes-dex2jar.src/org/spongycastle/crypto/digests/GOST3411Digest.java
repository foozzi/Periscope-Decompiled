package org.spongycastle.crypto.digests;

import java.lang.reflect.Array;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.crypto.engines.GOST28147Engine;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithSBox;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;

public class GOST3411Digest
  implements ExtendedDigest, Memoable
{
  private static final byte[] aGh = { 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, -1, 0, -1, 0, 0, -1, -1, 0, 0, 0, -1, -1, 0, -1 };
  private BlockCipher aEX = new GOST28147Engine();
  private byte[] aFR = new byte[32];
  private byte[] aFS = new byte[32];
  private byte[] aFT = new byte[32];
  private byte[] aFU = new byte[32];
  private byte[][] aFV = (byte[][])Array.newInstance(Byte.TYPE, new int[] { 4, 32 });
  private byte[] aFW = new byte[32];
  private int aFX;
  private byte[] aFY;
  private byte[] aFZ = new byte[32];
  byte[] aGa = new byte[8];
  short[] aGb = new short[16];
  short[] aGc = new short[16];
  byte[] aGd = new byte[32];
  byte[] aGe = new byte[32];
  byte[] aGf = new byte[32];
  byte[] aGg = new byte[32];
  private long aac;
  
  public GOST3411Digest()
  {
    this.aFY = GOST28147Engine.ᓒ("D-A");
    this.aEX.ˊ(true, new ParametersWithSBox(null, this.aFY));
    reset();
  }
  
  public GOST3411Digest(GOST3411Digest paramGOST3411Digest)
  {
    ˊ(paramGOST3411Digest);
  }
  
  public GOST3411Digest(byte[] paramArrayOfByte)
  {
    this.aFY = Arrays.І(paramArrayOfByte);
    this.aEX.ˊ(true, new ParametersWithSBox(null, this.aFY));
    reset();
  }
  
  private void finish()
  {
    Pack.ʼ(this.aac * 8L, this.aFS, 0);
    while (this.aFX != 0) {
      update((byte)0);
    }
    ͺ(this.aFS, 0);
    ͺ(this.aFU, 0);
  }
  
  private void ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, byte[] paramArrayOfByte3, int paramInt2)
  {
    this.aEX.ˊ(true, new KeyParameter(paramArrayOfByte1));
    this.aEX.ˊ(paramArrayOfByte3, paramInt2, paramArrayOfByte2, paramInt1);
  }
  
  private void ˊ(byte[] paramArrayOfByte, short[] paramArrayOfShort)
  {
    int i = 0;
    while (i < paramArrayOfByte.length / 2)
    {
      paramArrayOfShort[i] = ((short)(paramArrayOfByte[(i * 2 + 1)] << 8 & 0xFF00 | paramArrayOfByte[(i * 2)] & 0xFF));
      i += 1;
    }
  }
  
  private void ˊ(short[] paramArrayOfShort, byte[] paramArrayOfByte)
  {
    int i = 0;
    while (i < paramArrayOfByte.length / 2)
    {
      paramArrayOfByte[(i * 2 + 1)] = ((byte)(paramArrayOfShort[i] >> 8));
      paramArrayOfByte[(i * 2)] = ((byte)paramArrayOfShort[i]);
      i += 1;
    }
  }
  
  private byte[] ᵢ(byte[] paramArrayOfByte)
  {
    int i = 0;
    while (i < 8)
    {
      this.aFZ[(i * 4)] = paramArrayOfByte[i];
      this.aFZ[(i * 4 + 1)] = paramArrayOfByte[(i + 8)];
      this.aFZ[(i * 4 + 2)] = paramArrayOfByte[(i + 16)];
      this.aFZ[(i * 4 + 3)] = paramArrayOfByte[(i + 24)];
      i += 1;
    }
    return this.aFZ;
  }
  
  private byte[] ⁱ(byte[] paramArrayOfByte)
  {
    int i = 0;
    while (i < 8)
    {
      this.aGa[i] = ((byte)(paramArrayOfByte[i] ^ paramArrayOfByte[(i + 8)]));
      i += 1;
    }
    System.arraycopy(paramArrayOfByte, 8, paramArrayOfByte, 0, 24);
    System.arraycopy(this.aGa, 0, paramArrayOfByte, 24, 8);
    return paramArrayOfByte;
  }
  
  private void ﹶ(byte[] paramArrayOfByte)
  {
    ˊ(paramArrayOfByte, this.aGb);
    this.aGc[15] = ((short)(this.aGb[0] ^ this.aGb[1] ^ this.aGb[2] ^ this.aGb[3] ^ this.aGb[12] ^ this.aGb[15]));
    System.arraycopy(this.aGb, 1, this.aGc, 0, 15);
    ˊ(this.aGc, paramArrayOfByte);
  }
  
  private void ﹺ(byte[] paramArrayOfByte)
  {
    int j = 0;
    int i = 0;
    while (i != this.aFU.length)
    {
      j = (this.aFU[i] & 0xFF) + (paramArrayOfByte[i] & 0xFF) + j;
      this.aFU[i] = ((byte)j);
      j >>>= 8;
      i += 1;
    }
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    finish();
    System.arraycopy(this.aFR, 0, paramArrayOfByte, paramInt, this.aFR.length);
    reset();
    return 32;
  }
  
  public String iG()
  {
    return "GOST3411";
  }
  
  public int iJ()
  {
    return 32;
  }
  
  public int iM()
  {
    return 32;
  }
  
  public Memoable iU()
  {
    return new GOST3411Digest(this);
  }
  
  public void reset()
  {
    this.aac = 0L;
    this.aFX = 0;
    int i = 0;
    while (i < this.aFR.length)
    {
      this.aFR[i] = 0;
      i += 1;
    }
    i = 0;
    while (i < this.aFS.length)
    {
      this.aFS[i] = 0;
      i += 1;
    }
    i = 0;
    while (i < this.aFT.length)
    {
      this.aFT[i] = 0;
      i += 1;
    }
    i = 0;
    while (i < this.aFV[1].length)
    {
      this.aFV[1][i] = 0;
      i += 1;
    }
    i = 0;
    while (i < this.aFV[3].length)
    {
      this.aFV[3][i] = 0;
      i += 1;
    }
    i = 0;
    while (i < this.aFU.length)
    {
      this.aFU[i] = 0;
      i += 1;
    }
    i = 0;
    while (i < this.aFW.length)
    {
      this.aFW[i] = 0;
      i += 1;
    }
    System.arraycopy(aGh, 0, this.aFV[2], 0, aGh.length);
  }
  
  public void update(byte paramByte)
  {
    byte[] arrayOfByte = this.aFW;
    int i = this.aFX;
    this.aFX = (i + 1);
    arrayOfByte[i] = paramByte;
    if (this.aFX == this.aFW.length)
    {
      ﹺ(this.aFW);
      ͺ(this.aFW, 0);
      this.aFX = 0;
    }
    this.aac += 1L;
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    int j = paramInt1;
    for (;;)
    {
      paramInt1 = j;
      paramInt2 = i;
      if (this.aFX == 0) {
        break;
      }
      paramInt1 = j;
      paramInt2 = i;
      if (i <= 0) {
        break;
      }
      update(paramArrayOfByte[j]);
      j += 1;
      i -= 1;
    }
    for (;;)
    {
      i = paramInt1;
      j = paramInt2;
      if (paramInt2 <= this.aFW.length) {
        break;
      }
      System.arraycopy(paramArrayOfByte, paramInt1, this.aFW, 0, this.aFW.length);
      ﹺ(this.aFW);
      ͺ(this.aFW, 0);
      paramInt1 += this.aFW.length;
      paramInt2 -= this.aFW.length;
      this.aac += this.aFW.length;
    }
    while (j > 0)
    {
      update(paramArrayOfByte[i]);
      i += 1;
      j -= 1;
    }
  }
  
  public void ˊ(Memoable paramMemoable)
  {
    paramMemoable = (GOST3411Digest)paramMemoable;
    this.aFY = paramMemoable.aFY;
    this.aEX.ˊ(true, new ParametersWithSBox(null, this.aFY));
    reset();
    System.arraycopy(paramMemoable.aFR, 0, this.aFR, 0, paramMemoable.aFR.length);
    System.arraycopy(paramMemoable.aFS, 0, this.aFS, 0, paramMemoable.aFS.length);
    System.arraycopy(paramMemoable.aFT, 0, this.aFT, 0, paramMemoable.aFT.length);
    System.arraycopy(paramMemoable.aFU, 0, this.aFU, 0, paramMemoable.aFU.length);
    System.arraycopy(paramMemoable.aFV[1], 0, this.aFV[1], 0, paramMemoable.aFV[1].length);
    System.arraycopy(paramMemoable.aFV[2], 0, this.aFV[2], 0, paramMemoable.aFV[2].length);
    System.arraycopy(paramMemoable.aFV[3], 0, this.aFV[3], 0, paramMemoable.aFV[3].length);
    System.arraycopy(paramMemoable.aFW, 0, this.aFW, 0, paramMemoable.aFW.length);
    this.aFX = paramMemoable.aFX;
    this.aac = paramMemoable.aac;
  }
  
  protected void ͺ(byte[] paramArrayOfByte, int paramInt)
  {
    System.arraycopy(paramArrayOfByte, paramInt, this.aFT, 0, 32);
    System.arraycopy(this.aFR, 0, this.aGe, 0, 32);
    System.arraycopy(this.aFT, 0, this.aGf, 0, 32);
    paramInt = 0;
    while (paramInt < 32)
    {
      this.aGg[paramInt] = ((byte)(this.aGe[paramInt] ^ this.aGf[paramInt]));
      paramInt += 1;
    }
    ˊ(ᵢ(this.aGg), this.aGd, 0, this.aFR, 0);
    paramInt = 1;
    while (paramInt < 4)
    {
      paramArrayOfByte = ⁱ(this.aGe);
      int i = 0;
      while (i < 32)
      {
        this.aGe[i] = ((byte)(paramArrayOfByte[i] ^ this.aFV[paramInt][i]));
        i += 1;
      }
      this.aGf = ⁱ(ⁱ(this.aGf));
      i = 0;
      while (i < 32)
      {
        this.aGg[i] = ((byte)(this.aGe[i] ^ this.aGf[i]));
        i += 1;
      }
      ˊ(ᵢ(this.aGg), this.aGd, paramInt * 8, this.aFR, paramInt * 8);
      paramInt += 1;
    }
    paramInt = 0;
    while (paramInt < 12)
    {
      ﹶ(this.aGd);
      paramInt += 1;
    }
    paramInt = 0;
    while (paramInt < 32)
    {
      this.aGd[paramInt] = ((byte)(this.aGd[paramInt] ^ this.aFT[paramInt]));
      paramInt += 1;
    }
    ﹶ(this.aGd);
    paramInt = 0;
    while (paramInt < 32)
    {
      this.aGd[paramInt] = ((byte)(this.aFR[paramInt] ^ this.aGd[paramInt]));
      paramInt += 1;
    }
    paramInt = 0;
    while (paramInt < 61)
    {
      ﹶ(this.aGd);
      paramInt += 1;
    }
    System.arraycopy(this.aGd, 0, this.aFR, 0, this.aFR.length);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.GOST3411Digest
 * JD-Core Version:    0.7.0.1
 */