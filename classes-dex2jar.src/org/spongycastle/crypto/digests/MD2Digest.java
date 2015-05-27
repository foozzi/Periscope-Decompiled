package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Memoable;

public class MD2Digest
  implements ExtendedDigest, Memoable
{
  private static final byte[] aGd = { 41, 46, 67, -55, -94, -40, 124, 1, 61, 54, 84, -95, -20, -16, 6, 19, 98, -89, 5, -13, -64, -57, 115, -116, -104, -109, 43, -39, -68, 76, -126, -54, 30, -101, 87, 60, -3, -44, -32, 22, 103, 66, 111, 24, -118, 23, -27, 18, -66, 78, -60, -42, -38, -98, -34, 73, -96, -5, -11, -114, -69, 47, -18, 122, -87, 104, 121, -111, 21, -78, 7, 63, -108, -62, 16, -119, 11, 34, 95, 33, -128, 127, 93, -102, 90, -112, 50, 39, 53, 62, -52, -25, -65, -9, -105, 3, -1, 25, 48, -77, 72, -91, -75, -47, -41, 94, -110, 42, -84, 86, -86, -58, 79, -72, 56, -46, -106, -92, 125, -74, 118, -4, 107, -30, -100, 116, 4, -15, 69, -99, 112, 89, 100, 113, -121, 32, -122, 91, -49, 101, -26, 45, -88, 2, 27, 96, 37, -83, -82, -80, -71, -10, 28, 70, 97, 105, 52, 64, 126, 15, 85, 71, -93, 35, -35, 81, -81, 58, -61, 92, -7, -50, -70, -59, -22, 38, 44, 83, 13, 110, -123, 40, -124, 9, -45, -33, -51, -12, 65, -127, 77, 82, 106, -36, 55, -56, 108, -63, -85, -6, 36, -31, 123, 8, 12, -67, -79, 74, 120, -120, -107, -117, -29, 99, -24, 109, -23, -53, -43, -2, 59, 0, 29, 57, -14, -17, -73, 14, 102, 88, -48, -28, -90, 119, 114, -8, -21, 117, 75, 10, 49, 68, 80, -76, -113, -19, 31, 26, -37, -103, -115, 51, -97, 17, -125, 20 };
  private byte[] aFT = new byte[16];
  private byte[] aGv = new byte[48];
  private int aGw;
  private int aGx;
  private byte[] aGy = new byte[16];
  private int aGz;
  
  public MD2Digest()
  {
    reset();
  }
  
  public MD2Digest(MD2Digest paramMD2Digest)
  {
    ˊ(paramMD2Digest);
  }
  
  private void ˊ(MD2Digest paramMD2Digest)
  {
    System.arraycopy(paramMD2Digest.aGv, 0, this.aGv, 0, paramMD2Digest.aGv.length);
    this.aGw = paramMD2Digest.aGw;
    System.arraycopy(paramMD2Digest.aFT, 0, this.aFT, 0, paramMD2Digest.aFT.length);
    this.aGx = paramMD2Digest.aGx;
    System.arraycopy(paramMD2Digest.aGy, 0, this.aGy, 0, paramMD2Digest.aGy.length);
    this.aGz = paramMD2Digest.aGz;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    int i = (byte)(this.aFT.length - this.aGx);
    int j = this.aGx;
    while (j < this.aFT.length)
    {
      this.aFT[j] = i;
      j += 1;
    }
    ｰ(this.aFT);
    ʳ(this.aFT);
    ʳ(this.aGy);
    System.arraycopy(this.aGv, this.aGw, paramArrayOfByte, paramInt, 16);
    reset();
    return 16;
  }
  
  public String iG()
  {
    return "MD2";
  }
  
  public int iJ()
  {
    return 16;
  }
  
  public int iM()
  {
    return 16;
  }
  
  public Memoable iU()
  {
    return new MD2Digest(this);
  }
  
  public void reset()
  {
    this.aGw = 0;
    int i = 0;
    while (i != this.aGv.length)
    {
      this.aGv[i] = 0;
      i += 1;
    }
    this.aGx = 0;
    i = 0;
    while (i != this.aFT.length)
    {
      this.aFT[i] = 0;
      i += 1;
    }
    this.aGz = 0;
    i = 0;
    while (i != this.aGy.length)
    {
      this.aGy[i] = 0;
      i += 1;
    }
  }
  
  public void update(byte paramByte)
  {
    byte[] arrayOfByte = this.aFT;
    int i = this.aGx;
    this.aGx = (i + 1);
    arrayOfByte[i] = paramByte;
    if (this.aGx == 16)
    {
      ｰ(this.aFT);
      ʳ(this.aFT);
      this.aGx = 0;
    }
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int j = paramInt1;
    int i;
    for (;;)
    {
      paramInt1 = j;
      i = paramInt2;
      if (this.aGx == 0) {
        break;
      }
      paramInt1 = j;
      i = paramInt2;
      if (paramInt2 <= 0) {
        break;
      }
      update(paramArrayOfByte[j]);
      j += 1;
      paramInt2 -= 1;
    }
    for (;;)
    {
      paramInt2 = paramInt1;
      j = i;
      if (i <= 16) {
        break;
      }
      System.arraycopy(paramArrayOfByte, paramInt1, this.aFT, 0, 16);
      ｰ(this.aFT);
      ʳ(this.aFT);
      i -= 16;
      paramInt1 += 16;
    }
    while (j > 0)
    {
      update(paramArrayOfByte[paramInt2]);
      paramInt2 += 1;
      j -= 1;
    }
  }
  
  protected void ʳ(byte[] paramArrayOfByte)
  {
    int j = 0;
    while (j < 16)
    {
      this.aGv[(j + 16)] = paramArrayOfByte[j];
      this.aGv[(j + 32)] = ((byte)(paramArrayOfByte[j] ^ this.aGv[j]));
      j += 1;
    }
    j = 0;
    int k = 0;
    while (k < 18)
    {
      int m = 0;
      while (m < 48)
      {
        paramArrayOfByte = this.aGv;
        int i = (byte)(paramArrayOfByte[m] ^ aGd[j]);
        paramArrayOfByte[m] = i;
        j = i & 0xFF;
        m += 1;
      }
      j = (j + k) % 256;
      k += 1;
    }
  }
  
  public void ˊ(Memoable paramMemoable)
  {
    ˊ((MD2Digest)paramMemoable);
  }
  
  protected void ｰ(byte[] paramArrayOfByte)
  {
    int j = this.aGy[15];
    int i = 0;
    while (i < 16)
    {
      byte[] arrayOfByte = this.aGy;
      arrayOfByte[i] = ((byte)(arrayOfByte[i] ^ aGd[((paramArrayOfByte[i] ^ j) & 0xFF)]));
      j = this.aGy[i];
      i += 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.MD2Digest
 * JD-Core Version:    0.7.0.1
 */