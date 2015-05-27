package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public final class TwofishEngine
  implements BlockCipher
{
  private static final byte[][] aMk = { { -87, 103, -77, -24, 4, -3, -93, 118, -102, -110, -128, 120, -28, -35, -47, 56, 13, -58, 53, -104, 24, -9, -20, 108, 67, 117, 55, 38, -6, 19, -108, 72, -14, -48, -117, 48, -124, 84, -33, 35, 25, 91, 61, 89, -13, -82, -94, -126, 99, 1, -125, 46, -39, 81, -101, 124, -90, -21, -91, -66, 22, 12, -29, 97, -64, -116, 58, -11, 115, 44, 37, 11, -69, 78, -119, 107, 83, 106, -76, -15, -31, -26, -67, 69, -30, -12, -74, 102, -52, -107, 3, 86, -44, 28, 30, -41, -5, -61, -114, -75, -23, -49, -65, -70, -22, 119, 57, -81, 51, -55, 98, 113, -127, 121, 9, -83, 36, -51, -7, -40, -27, -59, -71, 77, 68, 8, -122, -25, -95, 29, -86, -19, 6, 112, -78, -46, 65, 123, -96, 17, 49, -62, 39, -112, 32, -10, 96, -1, -106, 92, -79, -85, -98, -100, 82, 27, 95, -109, 10, -17, -111, -123, 73, -18, 45, 79, -113, 59, 71, -121, 109, 70, -42, 62, 105, 100, 42, -50, -53, 47, -4, -105, 5, 122, -84, 127, -43, 26, 75, 14, -89, 90, 40, 20, 63, 41, -120, 60, 76, 2, -72, -38, -80, 23, 85, 31, -118, 125, 87, -57, -115, 116, -73, -60, -97, 114, 126, 21, 34, 18, 88, 7, -103, 52, 110, 80, -34, 104, 101, -68, -37, -8, -56, -88, 43, 64, -36, -2, 50, -92, -54, 16, 33, -16, -45, 93, 15, 0, 111, -99, 54, 66, 74, 94, -63, -32 }, { 117, -13, -58, -12, -37, 123, -5, -56, 74, -45, -26, 107, 69, 125, -24, 75, -42, 50, -40, -3, 55, 113, -15, -31, 48, 15, -8, 27, -121, -6, 6, 63, 94, -70, -82, 91, -118, 0, -68, -99, 109, -63, -79, 14, -128, 93, -46, -43, -96, -124, 7, 20, -75, -112, 44, -93, -78, 115, 76, 84, -110, 116, 54, 81, 56, -80, -67, 90, -4, 96, 98, -106, 108, 66, -9, 16, 124, 40, 39, -116, 19, -107, -100, -57, 36, 70, 59, 112, -54, -29, -123, -53, 17, -48, -109, -72, -90, -125, 32, -1, -97, 119, -61, -52, 3, 111, 8, -65, 64, -25, 43, -30, 121, 12, -86, -126, 65, 58, -22, -71, -28, -102, -92, -105, 126, -38, 122, 23, 102, -108, -95, 29, 61, -16, -34, -77, 11, 114, -89, 28, -17, -47, 83, 62, -113, 51, 38, 95, -20, 118, 42, 73, -127, -120, -18, 33, -60, 26, -21, -39, -59, 57, -103, -51, -83, 49, -117, 1, 24, 35, -35, 31, 78, 45, -7, 72, 79, -14, 101, -114, 120, 92, 88, 25, -115, -27, -104, 87, 103, 127, 5, 100, -81, 99, -74, -2, -11, -73, 60, -91, -50, -23, 104, 68, -32, 77, 67, 105, 41, 46, -84, 21, 89, -88, 10, -98, 110, 71, -33, 52, 53, 106, -49, -36, 34, -55, -64, -101, -119, -44, -19, -85, 18, -94, 13, 82, -69, 2, 47, -87, -41, 97, 30, -76, 80, 4, -10, -62, 22, 37, -122, 86, 85, 9, -66, -111 } };
  private boolean aIY = false;
  private byte[] aIZ = null;
  private int[] aMl = new int[256];
  private int[] aMm = new int[256];
  private int[] aMn = new int[256];
  private int[] aMo = new int[256];
  private int[] aMp;
  private int[] aMq;
  private int aMr = 0;
  
  public TwofishEngine()
  {
    int[] arrayOfInt1 = new int[2];
    int[] arrayOfInt2 = new int[2];
    int[] arrayOfInt3 = new int[2];
    int i = 0;
    while (i < 256)
    {
      int j = aMk[0][i] & 0xFF;
      arrayOfInt1[0] = j;
      arrayOfInt2[0] = (Ī(j) & 0xFF);
      arrayOfInt3[0] = (Ĭ(j) & 0xFF);
      j = aMk[1][i] & 0xFF;
      arrayOfInt1[1] = j;
      arrayOfInt2[1] = (Ī(j) & 0xFF);
      arrayOfInt3[1] = (Ĭ(j) & 0xFF);
      this.aMl[i] = (arrayOfInt1[1] | arrayOfInt2[1] << 8 | arrayOfInt3[1] << 16 | arrayOfInt3[1] << 24);
      this.aMm[i] = (arrayOfInt3[0] | arrayOfInt3[0] << 8 | arrayOfInt2[0] << 16 | arrayOfInt1[0] << 24);
      this.aMn[i] = (arrayOfInt2[1] | arrayOfInt3[1] << 8 | arrayOfInt1[1] << 16 | arrayOfInt3[1] << 24);
      this.aMo[i] = (arrayOfInt2[0] | arrayOfInt1[0] << 8 | arrayOfInt3[0] << 16 | arrayOfInt2[0] << 24);
      i += 1;
    }
  }
  
  private int Ī(int paramInt)
  {
    return ｭ(paramInt) ^ paramInt;
  }
  
  private int Ĭ(int paramInt)
  {
    return ｊ(paramInt) ^ paramInt ^ ｭ(paramInt);
  }
  
  private int Į(int paramInt)
  {
    return paramInt & 0xFF;
  }
  
  private int į(int paramInt)
  {
    return paramInt >>> 8 & 0xFF;
  }
  
  private int ŕ(int paramInt)
  {
    return paramInt >>> 16 & 0xFF;
  }
  
  private int ȉ(int paramInt)
  {
    return paramInt >>> 24 & 0xFF;
  }
  
  private int ȓ(int paramInt)
  {
    return this.aMq[((paramInt & 0xFF) * 2 + 0)] ^ this.aMq[((paramInt >>> 8 & 0xFF) * 2 + 1)] ^ this.aMq[((paramInt >>> 16 & 0xFF) * 2 + 512)] ^ this.aMq[((paramInt >>> 24 & 0xFF) * 2 + 513)];
  }
  
  private int ɭ(int paramInt)
  {
    return this.aMq[((paramInt >>> 24 & 0xFF) * 2 + 0)] ^ this.aMq[((paramInt & 0xFF) * 2 + 1)] ^ this.aMq[((paramInt >>> 8 & 0xFF) * 2 + 512)] ^ this.aMq[((paramInt >>> 16 & 0xFF) * 2 + 513)];
  }
  
  private void ˇ(byte[] paramArrayOfByte)
  {
    int[] arrayOfInt1 = new int[4];
    int[] arrayOfInt2 = new int[4];
    int[] arrayOfInt3 = new int[4];
    this.aMp = new int[40];
    if (this.aMr < 1) {
      throw new IllegalArgumentException("Key size less than 64 bits");
    }
    if (this.aMr > 4) {
      throw new IllegalArgumentException("Key size larger than 256 bits");
    }
    int i = 0;
    int j;
    while (i < this.aMr)
    {
      j = i * 8;
      arrayOfInt1[i] = י(paramArrayOfByte, j);
      arrayOfInt2[i] = י(paramArrayOfByte, j + 4);
      arrayOfInt3[(this.aMr - 1 - i)] = ৲(arrayOfInt1[i], arrayOfInt2[i]);
      i += 1;
    }
    i = 0;
    int k;
    while (i < 20)
    {
      k = i * 33686018;
      j = ˊ(k, arrayOfInt1);
      k = ˊ(16843009 + k, arrayOfInt2);
      k = k << 8 | k >>> 24;
      j += k;
      this.aMp[(i * 2)] = j;
      j += k;
      this.aMp[(i * 2 + 1)] = (j << 9 | j >>> 23);
      i += 1;
    }
    int i9 = arrayOfInt3[0];
    int i10 = arrayOfInt3[1];
    int i11 = arrayOfInt3[2];
    int i12 = arrayOfInt3[3];
    this.aMq = new int[1024];
    i = 0;
    while (i < 256)
    {
      j = i;
      k = i;
      int m = i;
      int n = i;
      int i7 = n;
      int i4 = m;
      int i2 = k;
      int i1 = j;
      int i8 = n;
      int i6 = m;
      int i5 = k;
      int i3 = j;
      switch (this.aMr & 0x3)
      {
      default: 
        break;
      case 1: 
        this.aMq[(i * 2)] = this.aMl[(aMk[0][n] & 0xFF ^ Į(i9))];
        this.aMq[(i * 2 + 1)] = this.aMm[(aMk[0][m] & 0xFF ^ į(i9))];
        this.aMq[(i * 2 + 512)] = this.aMn[(aMk[1][k] & 0xFF ^ ŕ(i9))];
        this.aMq[(i * 2 + 513)] = this.aMo[(aMk[1][j] & 0xFF ^ ȉ(i9))];
        break;
      case 0: 
        i7 = aMk[1][n] & 0xFF ^ Į(i12);
        i4 = aMk[0][m] & 0xFF ^ į(i12);
        i2 = aMk[0][k] & 0xFF ^ ŕ(i12);
        i1 = aMk[1][j] & 0xFF ^ ȉ(i12);
      case 3: 
        i8 = aMk[1][i7] & 0xFF ^ Į(i11);
        i6 = aMk[1][i4] & 0xFF ^ į(i11);
        i5 = aMk[0][i2] & 0xFF ^ ŕ(i11);
        i3 = aMk[0][i1] & 0xFF ^ ȉ(i11);
      case 2: 
        this.aMq[(i * 2)] = this.aMl[(aMk[0][(aMk[0][i8] & 0xFF ^ Į(i10))] & 0xFF ^ Į(i9))];
        this.aMq[(i * 2 + 1)] = this.aMm[(aMk[0][(aMk[1][i6] & 0xFF ^ į(i10))] & 0xFF ^ į(i9))];
        this.aMq[(i * 2 + 512)] = this.aMn[(aMk[1][(aMk[0][i5] & 0xFF ^ ŕ(i10))] & 0xFF ^ ŕ(i9))];
        this.aMq[(i * 2 + 513)] = this.aMo[(aMk[1][(aMk[1][i3] & 0xFF ^ ȉ(i10))] & 0xFF ^ ȉ(i9))];
      }
      i += 1;
    }
  }
  
  private int ˊ(int paramInt, int[] paramArrayOfInt)
  {
    int i3 = Į(paramInt);
    int n = į(paramInt);
    int j = ŕ(paramInt);
    int k = ȉ(paramInt);
    int i7 = paramArrayOfInt[0];
    int i8 = paramArrayOfInt[1];
    int i9 = paramArrayOfInt[2];
    int i10 = paramArrayOfInt[3];
    int i5 = i3;
    int i1 = n;
    int i = j;
    paramInt = k;
    int i6 = i3;
    int i4 = n;
    int i2 = j;
    int m = k;
    switch (this.aMr & 0x3)
    {
    default: 
      return 0;
    case 1: 
      return this.aMl[(aMk[0][i3] & 0xFF ^ Į(i7))] ^ this.aMm[(aMk[0][n] & 0xFF ^ į(i7))] ^ this.aMn[(aMk[1][j] & 0xFF ^ ŕ(i7))] ^ this.aMo[(aMk[1][k] & 0xFF ^ ȉ(i7))];
    case 0: 
      i5 = aMk[1][i3] & 0xFF ^ Į(i10);
      i1 = aMk[0][n] & 0xFF ^ į(i10);
      i = aMk[0][j] & 0xFF ^ ŕ(i10);
      paramInt = aMk[1][k] & 0xFF ^ ȉ(i10);
    case 3: 
      i6 = aMk[1][i5] & 0xFF ^ Į(i9);
      i4 = aMk[1][i1] & 0xFF ^ į(i9);
      i2 = aMk[0][i] & 0xFF ^ ŕ(i9);
      m = aMk[0][paramInt] & 0xFF ^ ȉ(i9);
    }
    return this.aMl[(aMk[0][(aMk[0][i6] & 0xFF ^ Į(i8))] & 0xFF ^ Į(i7))] ^ this.aMm[(aMk[0][(aMk[1][i4] & 0xFF ^ į(i8))] & 0xFF ^ į(i7))] ^ this.aMn[(aMk[1][(aMk[0][i2] & 0xFF ^ ŕ(i8))] & 0xFF ^ ŕ(i7))] ^ this.aMo[(aMk[1][(aMk[1][m] & 0xFF ^ ȉ(i8))] & 0xFF ^ ȉ(i7))];
  }
  
  private void ˋ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)paramInt1);
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >> 8));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >> 16));
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)(paramInt1 >> 24));
  }
  
  private void ˋ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int j = י(paramArrayOfByte1, paramInt1) ^ this.aMp[0];
    int i = י(paramArrayOfByte1, paramInt1 + 4) ^ this.aMp[1];
    int m = י(paramArrayOfByte1, paramInt1 + 8) ^ this.aMp[2];
    int k = י(paramArrayOfByte1, paramInt1 + 12) ^ this.aMp[3];
    int n = 8;
    paramInt1 = 0;
    while (paramInt1 < 16)
    {
      int i1 = ȓ(j);
      int i2 = ɭ(i);
      paramArrayOfByte1 = this.aMp;
      int i3 = n + 1;
      m ^= i1 + i2 + paramArrayOfByte1[n];
      m = m >>> 1 | m << 31;
      paramArrayOfByte1 = this.aMp;
      n = i3 + 1;
      k = (k << 1 | k >>> 31) ^ i2 * 2 + i1 + paramArrayOfByte1[i3];
      i1 = ȓ(m);
      i2 = ɭ(k);
      paramArrayOfByte1 = this.aMp;
      i3 = n + 1;
      j ^= i1 + i2 + paramArrayOfByte1[n];
      j = j >>> 1 | j << 31;
      paramArrayOfByte1 = this.aMp;
      n = i3 + 1;
      i = (i << 1 | i >>> 31) ^ i2 * 2 + i1 + paramArrayOfByte1[i3];
      paramInt1 += 2;
    }
    ˋ(this.aMp[4] ^ m, paramArrayOfByte2, paramInt2);
    ˋ(this.aMp[5] ^ k, paramArrayOfByte2, paramInt2 + 4);
    ˋ(this.aMp[6] ^ j, paramArrayOfByte2, paramInt2 + 8);
    ˋ(this.aMp[7] ^ i, paramArrayOfByte2, paramInt2 + 12);
  }
  
  private void ˎ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int i = י(paramArrayOfByte1, paramInt1) ^ this.aMp[4];
    int j = י(paramArrayOfByte1, paramInt1 + 4) ^ this.aMp[5];
    int k = י(paramArrayOfByte1, paramInt1 + 8) ^ this.aMp[6];
    int m = י(paramArrayOfByte1, paramInt1 + 12) ^ this.aMp[7];
    int n = 39;
    paramInt1 = 0;
    while (paramInt1 < 16)
    {
      int i1 = ȓ(i);
      int i2 = ɭ(j);
      paramArrayOfByte1 = this.aMp;
      int i3 = n - 1;
      m ^= i2 * 2 + i1 + paramArrayOfByte1[n];
      paramArrayOfByte1 = this.aMp;
      n = i3 - 1;
      k = (k << 1 | k >>> 31) ^ i1 + i2 + paramArrayOfByte1[i3];
      m = m >>> 1 | m << 31;
      i1 = ȓ(k);
      i2 = ɭ(m);
      paramArrayOfByte1 = this.aMp;
      i3 = n - 1;
      j ^= i2 * 2 + i1 + paramArrayOfByte1[n];
      paramArrayOfByte1 = this.aMp;
      n = i3 - 1;
      i = (i << 1 | i >>> 31) ^ i1 + i2 + paramArrayOfByte1[i3];
      j = j >>> 1 | j << 31;
      paramInt1 += 2;
    }
    ˋ(this.aMp[0] ^ k, paramArrayOfByte2, paramInt2);
    ˋ(this.aMp[1] ^ m, paramArrayOfByte2, paramInt2 + 4);
    ˋ(this.aMp[2] ^ i, paramArrayOfByte2, paramInt2 + 8);
    ˋ(this.aMp[3] ^ j, paramArrayOfByte2, paramInt2 + 12);
  }
  
  private int י(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[paramInt] & 0xFF | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8 | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 16 | (paramArrayOfByte[(paramInt + 3)] & 0xFF) << 24;
  }
  
  private int ৲(int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    paramInt2 = 0;
    while (paramInt2 < 4)
    {
      i = ﺭ(i);
      paramInt2 += 1;
    }
    paramInt2 = i ^ paramInt1;
    paramInt1 = 0;
    while (paramInt1 < 4)
    {
      paramInt2 = ﺭ(paramInt2);
      paramInt1 += 1;
    }
    return paramInt2;
  }
  
  private int ﺭ(int paramInt)
  {
    int j = paramInt >>> 24 & 0xFF;
    if ((j & 0x80) != 0) {
      i = 333;
    } else {
      i = 0;
    }
    int k = (j << 1 ^ i) & 0xFF;
    if ((j & 0x1) != 0) {
      i = 166;
    } else {
      i = 0;
    }
    int i = j >>> 1 ^ i ^ k;
    return paramInt << 8 ^ i << 24 ^ k << 16 ^ i << 8 ^ j;
  }
  
  private int ｊ(int paramInt)
  {
    int i;
    if ((paramInt & 0x1) != 0) {
      i = 180;
    } else {
      i = 0;
    }
    return paramInt >> 1 ^ i;
  }
  
  private int ｭ(int paramInt)
  {
    int i;
    if ((paramInt & 0x2) != 0) {
      i = 180;
    } else {
      i = 0;
    }
    int j;
    if ((paramInt & 0x1) != 0) {
      j = 90;
    } else {
      j = 0;
    }
    return paramInt >> 2 ^ i ^ j;
  }
  
  public int getBlockSize()
  {
    return 16;
  }
  
  public String iG()
  {
    return "Twofish";
  }
  
  public void reset()
  {
    if (this.aIZ != null) {
      ˇ(this.aIZ);
    }
  }
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aIZ == null) {
      throw new IllegalStateException("Twofish not initialised");
    }
    if (paramInt1 + 16 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 16 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    if (this.aIY) {
      ˋ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    } else {
      ˎ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return 16;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof KeyParameter))
    {
      this.aIY = paramBoolean;
      this.aIZ = ((KeyParameter)paramCipherParameters).getKey();
      this.aMr = (this.aIZ.length / 8);
      ˇ(this.aIZ);
      return;
    }
    throw new IllegalArgumentException("invalid parameter passed to Twofish init - " + paramCipherParameters.getClass().getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.TwofishEngine
 * JD-Core Version:    0.7.0.1
 */