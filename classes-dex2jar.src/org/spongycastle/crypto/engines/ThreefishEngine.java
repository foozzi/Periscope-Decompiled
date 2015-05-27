package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.TweakableBlockCipherParameters;

public class ThreefishEngine
  implements BlockCipher
{
  private static int[] aMa = new int[80];
  private static int[] aMb = new int[aMa.length];
  private static int[] aMc = new int[aMa.length];
  private static int[] aMd = new int[aMa.length];
  private boolean aEW;
  private int aMe;
  private int aMf;
  private long[] aMg;
  private long[] aMh = new long[5];
  private long[] aMi;
  private ThreefishCipher aMj;
  
  static
  {
    int i = 0;
    while (i < aMa.length)
    {
      aMb[i] = (i % 17);
      aMa[i] = (i % 9);
      aMc[i] = (i % 5);
      aMd[i] = (i % 3);
      i += 1;
    }
  }
  
  public ThreefishEngine(int paramInt)
  {
    this.aMe = (paramInt / 8);
    this.aMf = (this.aMe / 8);
    this.aMg = new long[this.aMf];
    this.aMi = new long[this.aMf * 2 + 1];
    switch (paramInt)
    {
    default: 
      break;
    case 256: 
      this.aMj = new Threefish256Cipher(this.aMi, this.aMh);
      return;
    case 512: 
      this.aMj = new Threefish512Cipher(this.aMi, this.aMh);
      return;
    case 1024: 
      this.aMj = new Threefish1024Cipher(this.aMi, this.aMh);
      return;
    }
    throw new IllegalArgumentException("Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits");
  }
  
  static long ˊ(long paramLong1, int paramInt, long paramLong2)
  {
    return (paramLong1 << paramInt | paramLong1 >>> -paramInt) ^ paramLong2;
  }
  
  static long ˋ(long paramLong1, int paramInt, long paramLong2)
  {
    paramLong1 ^= paramLong2;
    return paramLong1 >>> paramInt | paramLong1 << -paramInt;
  }
  
  public static void ˏ(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt + 8 > paramArrayOfByte.length) {
      throw new IllegalArgumentException();
    }
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(int)(paramLong >> 8));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >> 16));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(int)(paramLong >> 24));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >> 32));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(int)(paramLong >> 40));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >> 48));
    paramArrayOfByte[i] = ((byte)(int)(paramLong >> 56));
  }
  
  private void ͺ(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong.length != this.aMf) {
      throw new IllegalArgumentException("Threefish key must be same size as block (" + this.aMf + " words)");
    }
    long l = 2004413935125273122L;
    int i = 0;
    while (i < this.aMf)
    {
      this.aMi[i] = paramArrayOfLong[i];
      l ^= this.aMi[i];
      i += 1;
    }
    this.aMi[this.aMf] = l;
    System.arraycopy(this.aMi, 0, this.aMi, this.aMf + 1, this.aMf);
  }
  
  private void ι(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong.length != 2) {
      throw new IllegalArgumentException("Tweak must be 2 words.");
    }
    this.aMh[0] = paramArrayOfLong[0];
    this.aMh[1] = paramArrayOfLong[1];
    this.aMh[2] = (this.aMh[0] ^ this.aMh[1]);
    this.aMh[3] = this.aMh[0];
    this.aMh[4] = this.aMh[1];
  }
  
  public static long ﾞ(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt + 8 > paramArrayOfByte.length) {
      throw new IllegalArgumentException();
    }
    int i = paramInt + 1;
    long l1 = paramArrayOfByte[paramInt];
    paramInt = i + 1;
    long l2 = paramArrayOfByte[i];
    i = paramInt + 1;
    long l3 = paramArrayOfByte[paramInt];
    paramInt = i + 1;
    long l4 = paramArrayOfByte[i];
    i = paramInt + 1;
    long l5 = paramArrayOfByte[paramInt];
    paramInt = i + 1;
    long l6 = paramArrayOfByte[i];
    i = paramInt + 1;
    return l1 & 0xFF | (l2 & 0xFF) << 8 | (l3 & 0xFF) << 16 | (l4 & 0xFF) << 24 | (l5 & 0xFF) << 32 | (l6 & 0xFF) << 40 | (paramArrayOfByte[paramInt] & 0xFF) << 48 | (paramArrayOfByte[i] & 0xFF) << 56;
  }
  
  public int getBlockSize()
  {
    return this.aMe;
  }
  
  public String iG()
  {
    return "Threefish-" + this.aMe * 8;
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aMe + paramInt2 > paramArrayOfByte2.length) {
      throw new DataLengthException("Output buffer too short");
    }
    if (this.aMe + paramInt1 > paramArrayOfByte1.length) {
      throw new DataLengthException("Input buffer too short");
    }
    int i = 0;
    while (i < this.aMe)
    {
      this.aMg[(i >> 3)] = ﾞ(paramArrayOfByte1, paramInt1 + i);
      i += 8;
    }
    ˊ(this.aMg, this.aMg);
    paramInt1 = 0;
    while (paramInt1 < this.aMe)
    {
      ˏ(this.aMg[(paramInt1 >> 3)], paramArrayOfByte2, paramInt2 + paramInt1);
      paramInt1 += 8;
    }
    return this.aMe;
  }
  
  public int ˊ(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    if (this.aMi[this.aMf] == 0L) {
      throw new IllegalStateException("Threefish engine not initialised");
    }
    if (paramArrayOfLong1.length != this.aMf) {
      throw new DataLengthException("Input buffer too short");
    }
    if (paramArrayOfLong2.length != this.aMf) {
      throw new DataLengthException("Output buffer too short");
    }
    if (this.aEW) {
      this.aMj.ˋ(paramArrayOfLong1, paramArrayOfLong2);
    } else {
      this.aMj.ˎ(paramArrayOfLong1, paramArrayOfLong2);
    }
    return this.aMf;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    Object localObject1;
    if ((paramCipherParameters instanceof TweakableBlockCipherParameters))
    {
      localObject1 = (TweakableBlockCipherParameters)paramCipherParameters;
      paramCipherParameters = ((TweakableBlockCipherParameters)localObject1).ko().getKey();
      localObject1 = ((TweakableBlockCipherParameters)localObject1).lq();
    }
    else if ((paramCipherParameters instanceof KeyParameter))
    {
      paramCipherParameters = ((KeyParameter)paramCipherParameters).getKey();
      localObject1 = null;
    }
    else
    {
      throw new IllegalArgumentException("Invalid parameter passed to Threefish init - " + paramCipherParameters.getClass().getName());
    }
    Object localObject2 = null;
    Object localObject3 = null;
    if (paramCipherParameters != null)
    {
      if (paramCipherParameters.length != this.aMe) {
        throw new IllegalArgumentException("Threefish key must be same size as block (" + this.aMe + " bytes)");
      }
      long[] arrayOfLong = new long[this.aMf];
      int i = 0;
      for (;;)
      {
        localObject2 = arrayOfLong;
        if (i >= arrayOfLong.length) {
          break;
        }
        arrayOfLong[i] = ﾞ(paramCipherParameters, i * 8);
        i += 1;
      }
    }
    paramCipherParameters = localObject3;
    if (localObject1 != null)
    {
      if (localObject1.length != 16) {
        throw new IllegalArgumentException("Threefish tweak must be 16 bytes");
      }
      paramCipherParameters = new long[2];
      paramCipherParameters[0] = ﾞ((byte[])localObject1, 0);
      paramCipherParameters[1] = ﾞ((byte[])localObject1, 8);
    }
    ˊ(paramBoolean, localObject2, paramCipherParameters);
  }
  
  public void ˊ(boolean paramBoolean, long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    this.aEW = paramBoolean;
    if (paramArrayOfLong1 != null) {
      ͺ(paramArrayOfLong1);
    }
    if (paramArrayOfLong2 != null) {
      ι(paramArrayOfLong2);
    }
  }
  
  static final class Threefish1024Cipher
    extends ThreefishEngine.ThreefishCipher
  {
    public Threefish1024Cipher(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
    {
      super(paramArrayOfLong2);
    }
    
    void ˋ(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
    {
      long[] arrayOfLong1 = this.aMi;
      long[] arrayOfLong2 = this.aMh;
      int[] arrayOfInt1 = ThreefishEngine.jN();
      int[] arrayOfInt2 = ThreefishEngine.jL();
      if (arrayOfLong1.length != 33) {
        throw new IllegalArgumentException();
      }
      if (arrayOfLong2.length != 5) {
        throw new IllegalArgumentException();
      }
      long l16 = paramArrayOfLong1[0];
      long l15 = paramArrayOfLong1[1];
      long l14 = paramArrayOfLong1[2];
      long l13 = paramArrayOfLong1[3];
      long l12 = paramArrayOfLong1[4];
      long l11 = paramArrayOfLong1[5];
      long l10 = paramArrayOfLong1[6];
      long l9 = paramArrayOfLong1[7];
      long l8 = paramArrayOfLong1[8];
      long l7 = paramArrayOfLong1[9];
      long l6 = paramArrayOfLong1[10];
      long l5 = paramArrayOfLong1[11];
      long l4 = paramArrayOfLong1[12];
      long l3 = paramArrayOfLong1[13];
      long l2 = paramArrayOfLong1[14];
      long l1 = paramArrayOfLong1[15];
      l16 += arrayOfLong1[0];
      l15 += arrayOfLong1[1];
      l14 += arrayOfLong1[2];
      l13 += arrayOfLong1[3];
      l12 += arrayOfLong1[4];
      l11 += arrayOfLong1[5];
      l10 += arrayOfLong1[6];
      l9 += arrayOfLong1[7];
      l8 += arrayOfLong1[8];
      l7 += arrayOfLong1[9];
      l6 += arrayOfLong1[10];
      l5 += arrayOfLong1[11];
      l4 += arrayOfLong1[12];
      l3 += arrayOfLong1[13] + arrayOfLong2[0];
      l2 += arrayOfLong1[14] + arrayOfLong2[1];
      l1 += arrayOfLong1[15];
      int i = 1;
      while (i < 20)
      {
        int j = arrayOfInt1[i];
        int k = arrayOfInt2[i];
        l16 += l15;
        l15 = ThreefishEngine.ˊ(l15, 24, l16);
        l14 += l13;
        l13 = ThreefishEngine.ˊ(l13, 13, l14);
        l12 += l11;
        l11 = ThreefishEngine.ˊ(l11, 8, l12);
        l10 += l9;
        l9 = ThreefishEngine.ˊ(l9, 47, l10);
        l8 += l7;
        long l20 = ThreefishEngine.ˊ(l7, 8, l8);
        long l17 = l6 + l5;
        l6 = ThreefishEngine.ˊ(l5, 17, l17);
        long l18 = l4 + l3;
        l3 = ThreefishEngine.ˊ(l3, 22, l18);
        long l19 = l2 + l1;
        l4 = ThreefishEngine.ˊ(l1, 37, l19);
        l7 = l16 + l20;
        l1 = ThreefishEngine.ˊ(l20, 38, l7);
        l14 += l3;
        l2 = ThreefishEngine.ˊ(l3, 19, l14);
        l5 = l10 + l6;
        l3 = ThreefishEngine.ˊ(l6, 10, l5);
        l16 = l12 + l4;
        l6 = ThreefishEngine.ˊ(l4, 55, l16);
        l4 = l17 + l9;
        l10 = ThreefishEngine.ˊ(l9, 49, l4);
        l17 = l18 + l13;
        l9 = ThreefishEngine.ˊ(l13, 18, l17);
        l18 = l19 + l11;
        l20 = ThreefishEngine.ˊ(l11, 23, l18);
        l19 = l8 + l15;
        l13 = ThreefishEngine.ˊ(l15, 52, l19);
        l11 = l7 + l10;
        l10 = ThreefishEngine.ˊ(l10, 33, l11);
        l12 = l14 + l20;
        l8 = ThreefishEngine.ˊ(l20, 4, l12);
        l7 = l16 + l9;
        l9 = ThreefishEngine.ˊ(l9, 51, l7);
        l15 = l5 + l13;
        l14 = ThreefishEngine.ˊ(l13, 13, l15);
        l13 = l17 + l6;
        l5 = ThreefishEngine.ˊ(l6, 34, l13);
        l16 = l18 + l2;
        l6 = ThreefishEngine.ˊ(l2, 41, l16);
        l17 = l19 + l3;
        l3 = ThreefishEngine.ˊ(l3, 59, l17);
        l18 = l4 + l1;
        l1 = ThreefishEngine.ˊ(l1, 17, l18);
        l2 = l11 + l5;
        l5 = ThreefishEngine.ˊ(l5, 5, l2);
        l4 = l12 + l3;
        l11 = ThreefishEngine.ˊ(l3, 20, l4);
        l3 = l15 + l6;
        l12 = ThreefishEngine.ˊ(l6, 48, l3);
        l6 = l7 + l1;
        l15 = ThreefishEngine.ˊ(l1, 41, l6);
        l1 = l16 + l14;
        l16 = ThreefishEngine.ˊ(l14, 47, l1);
        l7 = l17 + l8;
        l14 = ThreefishEngine.ˊ(l8, 28, l7);
        l8 = l18 + l9;
        l17 = ThreefishEngine.ˊ(l9, 16, l8);
        l9 = l13 + l10;
        l10 = ThreefishEngine.ˊ(l10, 25, l9);
        long l26 = arrayOfLong1[j];
        long l27 = l16 + arrayOfLong1[(j + 1)];
        l18 = arrayOfLong1[(j + 2)];
        long l25 = l17 + arrayOfLong1[(j + 3)];
        long l23 = arrayOfLong1[(j + 4)];
        long l24 = l14 + arrayOfLong1[(j + 5)];
        l19 = arrayOfLong1[(j + 6)];
        long l22 = l10 + arrayOfLong1[(j + 7)];
        l20 = arrayOfLong1[(j + 8)];
        long l21 = l15 + arrayOfLong1[(j + 9)];
        l16 = arrayOfLong1[(j + 10)];
        l17 = l11 + arrayOfLong1[(j + 11)];
        l13 = arrayOfLong1[(j + 12)];
        l14 = l12 + (arrayOfLong1[(j + 13)] + arrayOfLong2[k]);
        l10 = arrayOfLong1[(j + 14)];
        l11 = arrayOfLong2[(k + 1)];
        l12 = l5 + (arrayOfLong1[(j + 15)] + i);
        l15 = l2 + l26 + l27;
        l2 = ThreefishEngine.ˊ(l27, 41, l15);
        l18 = l4 + l18 + l25;
        l4 = ThreefishEngine.ˊ(l25, 9, l18);
        l6 = l6 + l23 + l24;
        l5 = ThreefishEngine.ˊ(l24, 37, l6);
        l23 = l3 + l19 + l22;
        l19 = ThreefishEngine.ˊ(l22, 31, l23);
        l3 = l7 + l20 + l21;
        l7 = ThreefishEngine.ˊ(l21, 12, l3);
        l16 = l8 + l16 + l17;
        l8 = ThreefishEngine.ˊ(l17, 47, l16);
        l13 = l9 + l13 + l14;
        l9 = ThreefishEngine.ˊ(l14, 44, l13);
        l14 = l1 + (l10 + l11) + l12;
        l10 = ThreefishEngine.ˊ(l12, 30, l14);
        l11 = l15 + l7;
        l1 = ThreefishEngine.ˊ(l7, 16, l11);
        l12 = l18 + l9;
        l7 = ThreefishEngine.ˊ(l9, 34, l12);
        l9 = l23 + l8;
        l8 = ThreefishEngine.ˊ(l8, 56, l9);
        l15 = l6 + l10;
        l10 = ThreefishEngine.ˊ(l10, 51, l15);
        l6 = l16 + l19;
        l18 = ThreefishEngine.ˊ(l19, 4, l6);
        l16 = l13 + l4;
        l4 = ThreefishEngine.ˊ(l4, 53, l16);
        l14 += l5;
        l20 = ThreefishEngine.ˊ(l5, 42, l14);
        l17 = l3 + l2;
        l19 = ThreefishEngine.ˊ(l2, 41, l17);
        l5 = l11 + l18;
        l2 = ThreefishEngine.ˊ(l18, 31, l5);
        l13 = l12 + l20;
        l3 = ThreefishEngine.ˊ(l20, 44, l13);
        l11 = l15 + l4;
        l4 = ThreefishEngine.ˊ(l4, 47, l11);
        l15 = l9 + l19;
        l12 = ThreefishEngine.ˊ(l19, 46, l15);
        l9 = l16 + l10;
        l10 = ThreefishEngine.ˊ(l10, 19, l9);
        l14 += l7;
        l7 = ThreefishEngine.ˊ(l7, 42, l14);
        l16 = l17 + l8;
        l17 = ThreefishEngine.ˊ(l8, 44, l16);
        l19 = l6 + l1;
        l18 = ThreefishEngine.ˊ(l1, 25, l19);
        l8 = l5 + l10;
        l1 = ThreefishEngine.ˊ(l10, 9, l8);
        l10 = l13 + l17;
        l5 = ThreefishEngine.ˊ(l17, 48, l10);
        l6 = l15 + l7;
        l17 = ThreefishEngine.ˊ(l7, 35, l6);
        l11 += l18;
        l7 = ThreefishEngine.ˊ(l18, 52, l11);
        l18 = l14 + l12;
        l12 = ThreefishEngine.ˊ(l12, 23, l18);
        l20 = l16 + l3;
        l21 = ThreefishEngine.ˊ(l3, 31, l20);
        l3 = l19 + l4;
        l13 = ThreefishEngine.ˊ(l4, 37, l3);
        l4 = l9 + l2;
        l2 = ThreefishEngine.ˊ(l2, 20, l4);
        l16 = l8 + arrayOfLong1[(j + 1)];
        l15 = l12 + arrayOfLong1[(j + 2)];
        l14 = l10 + arrayOfLong1[(j + 3)];
        l13 += arrayOfLong1[(j + 4)];
        l12 = l11 + arrayOfLong1[(j + 5)];
        l11 = l21 + arrayOfLong1[(j + 6)];
        l10 = l6 + arrayOfLong1[(j + 7)];
        l9 = l2 + arrayOfLong1[(j + 8)];
        l8 = l20 + arrayOfLong1[(j + 9)];
        l7 += arrayOfLong1[(j + 10)];
        l6 = l3 + arrayOfLong1[(j + 11)];
        l5 += arrayOfLong1[(j + 12)];
        l4 += arrayOfLong1[(j + 13)];
        l3 = l17 + (arrayOfLong1[(j + 14)] + arrayOfLong2[(k + 1)]);
        l2 = l18 + (arrayOfLong1[(j + 15)] + arrayOfLong2[(k + 2)]);
        l1 += arrayOfLong1[(j + 16)] + i + 1L;
        i += 2;
      }
      paramArrayOfLong2[0] = l16;
      paramArrayOfLong2[1] = l15;
      paramArrayOfLong2[2] = l14;
      paramArrayOfLong2[3] = l13;
      paramArrayOfLong2[4] = l12;
      paramArrayOfLong2[5] = l11;
      paramArrayOfLong2[6] = l10;
      paramArrayOfLong2[7] = l9;
      paramArrayOfLong2[8] = l8;
      paramArrayOfLong2[9] = l7;
      paramArrayOfLong2[10] = l6;
      paramArrayOfLong2[11] = l5;
      paramArrayOfLong2[12] = l4;
      paramArrayOfLong2[13] = l3;
      paramArrayOfLong2[14] = l2;
      paramArrayOfLong2[15] = l1;
    }
    
    void ˎ(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
    {
      long[] arrayOfLong1 = this.aMi;
      long[] arrayOfLong2 = this.aMh;
      int[] arrayOfInt1 = ThreefishEngine.jN();
      int[] arrayOfInt2 = ThreefishEngine.jL();
      if (arrayOfLong1.length != 33) {
        throw new IllegalArgumentException();
      }
      if (arrayOfLong2.length != 5) {
        throw new IllegalArgumentException();
      }
      long l16 = paramArrayOfLong1[0];
      long l4 = paramArrayOfLong1[1];
      long l15 = paramArrayOfLong1[2];
      long l2 = paramArrayOfLong1[3];
      long l14 = paramArrayOfLong1[4];
      long l3 = paramArrayOfLong1[5];
      long l13 = paramArrayOfLong1[6];
      long l1 = paramArrayOfLong1[7];
      long l12 = paramArrayOfLong1[8];
      long l5 = paramArrayOfLong1[9];
      long l11 = paramArrayOfLong1[10];
      long l7 = paramArrayOfLong1[11];
      long l10 = paramArrayOfLong1[12];
      long l6 = paramArrayOfLong1[13];
      long l9 = paramArrayOfLong1[14];
      long l8 = paramArrayOfLong1[15];
      int i = 19;
      while (i >= 1)
      {
        int j = arrayOfInt1[i];
        int k = arrayOfInt2[i];
        l22 = l16 - arrayOfLong1[(j + 1)];
        l16 = arrayOfLong1[(j + 2)];
        l17 = l15 - arrayOfLong1[(j + 3)];
        l15 = arrayOfLong1[(j + 4)];
        l19 = l14 - arrayOfLong1[(j + 5)];
        l14 = arrayOfLong1[(j + 6)];
        l18 = l13 - arrayOfLong1[(j + 7)];
        l13 = arrayOfLong1[(j + 8)];
        l12 -= arrayOfLong1[(j + 9)];
        l20 = arrayOfLong1[(j + 10)];
        l11 -= arrayOfLong1[(j + 11)];
        l25 = arrayOfLong1[(j + 12)];
        l10 -= arrayOfLong1[(j + 13)];
        l23 = arrayOfLong1[(j + 14)];
        l24 = arrayOfLong2[(k + 1)];
        l21 = l9 - (arrayOfLong1[(j + 15)] + arrayOfLong2[(k + 2)]);
        l8 = ThreefishEngine.ˋ(l8 - (arrayOfLong1[(j + 16)] + i + 1L), 9, l22);
        l9 = l22 - l8;
        l7 = ThreefishEngine.ˋ(l7 - l25, 48, l17);
        l17 -= l7;
        l6 = ThreefishEngine.ˋ(l6 - (l23 + l24), 35, l18);
        l18 -= l6;
        l5 = ThreefishEngine.ˋ(l5 - l20, 52, l19);
        l19 -= l5;
        l4 = ThreefishEngine.ˋ(l4 - l16, 23, l21);
        l16 = l21 - l4;
        l3 = ThreefishEngine.ˋ(l3 - l14, 31, l12);
        l12 -= l3;
        l15 = ThreefishEngine.ˋ(l2 - l15, 37, l11);
        l11 -= l15;
        l1 = ThreefishEngine.ˋ(l1 - l13, 20, l10);
        l14 = l10 - l1;
        l2 = ThreefishEngine.ˋ(l1, 31, l9);
        l9 -= l2;
        l1 = ThreefishEngine.ˋ(l3, 44, l17);
        l13 = l17 - l1;
        l3 = ThreefishEngine.ˋ(l15, 47, l19);
        l10 = l19 - l3;
        l4 = ThreefishEngine.ˋ(l4, 46, l18);
        l18 -= l4;
        l19 = ThreefishEngine.ˋ(l8, 19, l14);
        l14 -= l19;
        l6 = ThreefishEngine.ˋ(l6, 42, l16);
        l15 = l16 - l6;
        l17 = ThreefishEngine.ˋ(l7, 44, l12);
        l16 = l12 - l17;
        l7 = ThreefishEngine.ˋ(l5, 25, l11);
        l5 = l11 - l7;
        l7 = ThreefishEngine.ˋ(l7, 16, l9);
        l8 = l9 - l7;
        l12 = ThreefishEngine.ˋ(l6, 34, l13);
        l9 = l13 - l12;
        l17 = ThreefishEngine.ˋ(l17, 56, l18);
        l6 = l18 - l17;
        l19 = ThreefishEngine.ˋ(l19, 51, l10);
        l13 = l10 - l19;
        l2 = ThreefishEngine.ˋ(l2, 4, l5);
        l10 = l5 - l2;
        l5 = ThreefishEngine.ˋ(l3, 53, l14);
        l11 = l14 - l5;
        l18 = ThreefishEngine.ˋ(l1, 42, l15);
        l3 = l15 - l18;
        l1 = ThreefishEngine.ˋ(l4, 41, l16);
        l14 = l16 - l1;
        l4 = ThreefishEngine.ˋ(l1, 41, l8);
        l1 = ThreefishEngine.ˋ(l5, 9, l9);
        l5 = ThreefishEngine.ˋ(l18, 37, l13);
        l2 = ThreefishEngine.ˋ(l2, 31, l6);
        l7 = ThreefishEngine.ˋ(l7, 12, l14);
        l17 = ThreefishEngine.ˋ(l17, 47, l10);
        l18 = ThreefishEngine.ˋ(l12, 44, l11);
        l15 = ThreefishEngine.ˋ(l19, 30, l3);
        l24 = l8 - l4 - arrayOfLong1[j];
        l12 = arrayOfLong1[(j + 1)];
        l20 = l9 - l1 - arrayOfLong1[(j + 2)];
        l8 = arrayOfLong1[(j + 3)];
        l19 = l13 - l5 - arrayOfLong1[(j + 4)];
        l13 = arrayOfLong1[(j + 5)];
        l21 = l6 - l2 - arrayOfLong1[(j + 6)];
        l9 = arrayOfLong1[(j + 7)];
        l16 = l14 - l7 - arrayOfLong1[(j + 8)];
        l22 = arrayOfLong1[(j + 9)];
        l14 = l10 - l17 - arrayOfLong1[(j + 10)];
        l26 = arrayOfLong1[(j + 11)];
        l11 = l11 - l18 - arrayOfLong1[(j + 12)];
        l10 = arrayOfLong1[(j + 13)];
        l25 = arrayOfLong2[k];
        l23 = l3 - l15 - (arrayOfLong1[(j + 14)] + arrayOfLong2[(k + 1)]);
        l6 = ThreefishEngine.ˋ(l15 - (arrayOfLong1[(j + 15)] + i), 5, l24);
        l15 = l24 - l6;
        l3 = ThreefishEngine.ˋ(l17 - l26, 20, l20);
        l17 = l20 - l3;
        l10 = ThreefishEngine.ˋ(l18 - (l10 + l25), 48, l21);
        l18 = l21 - l10;
        l7 = ThreefishEngine.ˋ(l7 - l22, 41, l19);
        l19 -= l7;
        l4 = ThreefishEngine.ˋ(l4 - l12, 47, l23);
        l12 = l23 - l4;
        l13 = ThreefishEngine.ˋ(l5 - l13, 28, l16);
        l5 = l16 - l13;
        l16 = ThreefishEngine.ˋ(l1 - l8, 16, l14);
        l8 = l14 - l16;
        l1 = ThreefishEngine.ˋ(l2 - l9, 25, l11);
        l20 = l11 - l1;
        l2 = ThreefishEngine.ˋ(l1, 33, l15);
        l14 = l15 - l2;
        l1 = ThreefishEngine.ˋ(l13, 4, l17);
        l15 = l17 - l1;
        l9 = ThreefishEngine.ˋ(l16, 51, l19);
        l11 = l19 - l9;
        l4 = ThreefishEngine.ˋ(l4, 13, l18);
        l16 = l18 - l4;
        l17 = ThreefishEngine.ˋ(l6, 34, l20);
        l13 = l20 - l17;
        l6 = ThreefishEngine.ˋ(l10, 41, l12);
        l10 = l12 - l6;
        l12 = ThreefishEngine.ˋ(l3, 59, l5);
        l3 = l5 - l12;
        l5 = ThreefishEngine.ˋ(l7, 17, l8);
        l20 = l8 - l5;
        l5 = ThreefishEngine.ˋ(l5, 38, l14);
        l14 -= l5;
        l6 = ThreefishEngine.ˋ(l6, 19, l15);
        l15 -= l6;
        l7 = ThreefishEngine.ˋ(l12, 10, l16);
        l12 = l16 - l7;
        l8 = ThreefishEngine.ˋ(l17, 55, l11);
        l18 = l11 - l8;
        l19 = ThreefishEngine.ˋ(l2, 49, l20);
        l11 = l20 - l19;
        l2 = ThreefishEngine.ˋ(l9, 18, l13);
        l9 = l13 - l2;
        l1 = ThreefishEngine.ˋ(l1, 23, l10);
        l17 = l10 - l1;
        l4 = ThreefishEngine.ˋ(l4, 52, l3);
        l10 = l3 - l4;
        l4 = ThreefishEngine.ˋ(l4, 24, l14);
        l16 = l14 - l4;
        l2 = ThreefishEngine.ˋ(l2, 13, l15);
        l15 -= l2;
        l3 = ThreefishEngine.ˋ(l1, 8, l18);
        l14 = l18 - l3;
        l1 = ThreefishEngine.ˋ(l19, 47, l12);
        l13 = l12 - l1;
        l5 = ThreefishEngine.ˋ(l5, 8, l10);
        l12 = l10 - l5;
        l7 = ThreefishEngine.ˋ(l7, 17, l11);
        l11 -= l7;
        l6 = ThreefishEngine.ˋ(l6, 22, l9);
        l10 = l9 - l6;
        l8 = ThreefishEngine.ˋ(l8, 37, l17);
        l9 = l17 - l8;
        i -= 2;
      }
      long l17 = arrayOfLong1[0];
      long l18 = arrayOfLong1[1];
      long l19 = arrayOfLong1[2];
      long l20 = arrayOfLong1[3];
      long l21 = arrayOfLong1[4];
      long l22 = arrayOfLong1[5];
      long l23 = arrayOfLong1[6];
      long l24 = arrayOfLong1[7];
      long l25 = arrayOfLong1[8];
      long l26 = arrayOfLong1[9];
      long l27 = arrayOfLong1[10];
      long l28 = arrayOfLong1[11];
      long l29 = arrayOfLong1[12];
      long l30 = arrayOfLong1[13];
      long l31 = arrayOfLong2[0];
      long l32 = arrayOfLong1[14];
      long l33 = arrayOfLong2[1];
      long l34 = arrayOfLong1[15];
      paramArrayOfLong2[0] = (l16 - l17);
      paramArrayOfLong2[1] = (l4 - l18);
      paramArrayOfLong2[2] = (l15 - l19);
      paramArrayOfLong2[3] = (l2 - l20);
      paramArrayOfLong2[4] = (l14 - l21);
      paramArrayOfLong2[5] = (l3 - l22);
      paramArrayOfLong2[6] = (l13 - l23);
      paramArrayOfLong2[7] = (l1 - l24);
      paramArrayOfLong2[8] = (l12 - l25);
      paramArrayOfLong2[9] = (l5 - l26);
      paramArrayOfLong2[10] = (l11 - l27);
      paramArrayOfLong2[11] = (l7 - l28);
      paramArrayOfLong2[12] = (l10 - l29);
      paramArrayOfLong2[13] = (l6 - (l30 + l31));
      paramArrayOfLong2[14] = (l9 - (l32 + l33));
      paramArrayOfLong2[15] = (l8 - l34);
    }
  }
  
  static final class Threefish256Cipher
    extends ThreefishEngine.ThreefishCipher
  {
    public Threefish256Cipher(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
    {
      super(paramArrayOfLong2);
    }
    
    void ˋ(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
    {
      long[] arrayOfLong1 = this.aMi;
      long[] arrayOfLong2 = this.aMh;
      int[] arrayOfInt1 = ThreefishEngine.jK();
      int[] arrayOfInt2 = ThreefishEngine.jL();
      if (arrayOfLong1.length != 9) {
        throw new IllegalArgumentException();
      }
      if (arrayOfLong2.length != 5) {
        throw new IllegalArgumentException();
      }
      long l4 = paramArrayOfLong1[0];
      long l3 = paramArrayOfLong1[1];
      long l2 = paramArrayOfLong1[2];
      long l1 = paramArrayOfLong1[3];
      l4 += arrayOfLong1[0];
      l3 += arrayOfLong1[1] + arrayOfLong2[0];
      l2 += arrayOfLong1[2] + arrayOfLong2[1];
      l1 += arrayOfLong1[3];
      int i = 1;
      while (i < 18)
      {
        int j = arrayOfInt1[i];
        int k = arrayOfInt2[i];
        l4 += l3;
        l3 = ThreefishEngine.ˊ(l3, 14, l4);
        l2 += l1;
        l1 = ThreefishEngine.ˊ(l1, 16, l2);
        l4 += l1;
        l1 = ThreefishEngine.ˊ(l1, 52, l4);
        l2 += l3;
        long l5 = ThreefishEngine.ˊ(l3, 57, l2);
        l3 = l4 + l5;
        l4 = ThreefishEngine.ˊ(l5, 23, l3);
        l2 += l1;
        l5 = ThreefishEngine.ˊ(l1, 40, l2);
        l1 = l3 + l5;
        l3 = ThreefishEngine.ˊ(l5, 5, l1);
        l2 += l4;
        l4 = ThreefishEngine.ˊ(l4, 37, l2);
        long l6 = arrayOfLong1[j];
        long l7 = l4 + (arrayOfLong1[(j + 1)] + arrayOfLong2[k]);
        l4 = arrayOfLong1[(j + 2)];
        l5 = arrayOfLong2[(k + 1)];
        l3 += arrayOfLong1[(j + 3)] + i;
        l6 = l1 + l6 + l7;
        l1 = ThreefishEngine.ˊ(l7, 25, l6);
        l4 = l2 + (l4 + l5) + l3;
        l2 = ThreefishEngine.ˊ(l3, 33, l4);
        l3 = l6 + l2;
        l2 = ThreefishEngine.ˊ(l2, 46, l3);
        l4 += l1;
        l1 = ThreefishEngine.ˊ(l1, 12, l4);
        l3 += l1;
        l1 = ThreefishEngine.ˊ(l1, 58, l3);
        l4 += l2;
        l5 = ThreefishEngine.ˊ(l2, 22, l4);
        l2 = l3 + l5;
        l5 = ThreefishEngine.ˊ(l5, 32, l2);
        l6 = l4 + l1;
        l1 = ThreefishEngine.ˊ(l1, 32, l6);
        l4 = l2 + arrayOfLong1[(j + 1)];
        l3 = l1 + (arrayOfLong1[(j + 2)] + arrayOfLong2[(k + 1)]);
        l2 = l6 + (arrayOfLong1[(j + 3)] + arrayOfLong2[(k + 2)]);
        l1 = l5 + (arrayOfLong1[(j + 4)] + i + 1L);
        i += 2;
      }
      paramArrayOfLong2[0] = l4;
      paramArrayOfLong2[1] = l3;
      paramArrayOfLong2[2] = l2;
      paramArrayOfLong2[3] = l1;
    }
    
    void ˎ(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
    {
      long[] arrayOfLong1 = this.aMi;
      long[] arrayOfLong2 = this.aMh;
      int[] arrayOfInt1 = ThreefishEngine.jK();
      int[] arrayOfInt2 = ThreefishEngine.jL();
      if (arrayOfLong1.length != 9) {
        throw new IllegalArgumentException();
      }
      if (arrayOfLong2.length != 5) {
        throw new IllegalArgumentException();
      }
      long l4 = paramArrayOfLong1[0];
      long l1 = paramArrayOfLong1[1];
      long l3 = paramArrayOfLong1[2];
      long l2 = paramArrayOfLong1[3];
      int i = 17;
      while (i >= 1)
      {
        int j = arrayOfInt1[i];
        int k = arrayOfInt2[i];
        l6 = l4 - arrayOfLong1[(j + 1)];
        l4 = arrayOfLong1[(j + 2)];
        l5 = arrayOfLong2[(k + 1)];
        l3 -= arrayOfLong1[(j + 3)] + arrayOfLong2[(k + 2)];
        l2 = ThreefishEngine.ˋ(l2 - (arrayOfLong1[(j + 4)] + i + 1L), 32, l6);
        l6 -= l2;
        l1 = ThreefishEngine.ˋ(l1 - (l4 + l5), 32, l3);
        l3 -= l1;
        l1 = ThreefishEngine.ˋ(l1, 58, l6);
        l4 = l6 - l1;
        l5 = ThreefishEngine.ˋ(l2, 22, l3);
        l2 = l3 - l5;
        l3 = ThreefishEngine.ˋ(l5, 46, l4);
        l4 -= l3;
        l1 = ThreefishEngine.ˋ(l1, 12, l2);
        l2 -= l1;
        l1 = ThreefishEngine.ˋ(l1, 25, l4);
        l6 = ThreefishEngine.ˋ(l3, 33, l2);
        l7 = l4 - l1 - arrayOfLong1[j];
        l3 = arrayOfLong1[(j + 1)];
        l4 = arrayOfLong2[k];
        l5 = l2 - l6 - (arrayOfLong1[(j + 2)] + arrayOfLong2[(k + 1)]);
        l2 = ThreefishEngine.ˋ(l6 - (arrayOfLong1[(j + 3)] + i), 5, l7);
        l6 = l7 - l2;
        l1 = ThreefishEngine.ˋ(l1 - (l3 + l4), 37, l5);
        l3 = l5 - l1;
        l1 = ThreefishEngine.ˋ(l1, 23, l6);
        l4 = l6 - l1;
        l2 = ThreefishEngine.ˋ(l2, 40, l3);
        l3 -= l2;
        l2 = ThreefishEngine.ˋ(l2, 52, l4);
        l4 -= l2;
        l1 = ThreefishEngine.ˋ(l1, 57, l3);
        l3 -= l1;
        l1 = ThreefishEngine.ˋ(l1, 14, l4);
        l4 -= l1;
        l2 = ThreefishEngine.ˋ(l2, 16, l3);
        l3 -= l2;
        i -= 2;
      }
      long l5 = arrayOfLong1[0];
      long l6 = arrayOfLong1[1];
      long l7 = arrayOfLong2[0];
      long l8 = arrayOfLong1[2];
      long l9 = arrayOfLong2[1];
      long l10 = arrayOfLong1[3];
      paramArrayOfLong2[0] = (l4 - l5);
      paramArrayOfLong2[1] = (l1 - (l6 + l7));
      paramArrayOfLong2[2] = (l3 - (l8 + l9));
      paramArrayOfLong2[3] = (l2 - l10);
    }
  }
  
  static final class Threefish512Cipher
    extends ThreefishEngine.ThreefishCipher
  {
    protected Threefish512Cipher(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
    {
      super(paramArrayOfLong2);
    }
    
    public void ˋ(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
    {
      long[] arrayOfLong1 = this.aMi;
      long[] arrayOfLong2 = this.aMh;
      int[] arrayOfInt1 = ThreefishEngine.jM();
      int[] arrayOfInt2 = ThreefishEngine.jL();
      if (arrayOfLong1.length != 17) {
        throw new IllegalArgumentException();
      }
      if (arrayOfLong2.length != 5) {
        throw new IllegalArgumentException();
      }
      long l8 = paramArrayOfLong1[0];
      long l7 = paramArrayOfLong1[1];
      long l6 = paramArrayOfLong1[2];
      long l5 = paramArrayOfLong1[3];
      long l4 = paramArrayOfLong1[4];
      long l3 = paramArrayOfLong1[5];
      long l2 = paramArrayOfLong1[6];
      long l1 = paramArrayOfLong1[7];
      l8 += arrayOfLong1[0];
      l7 += arrayOfLong1[1];
      l6 += arrayOfLong1[2];
      l5 += arrayOfLong1[3];
      l4 += arrayOfLong1[4];
      l3 += arrayOfLong1[5] + arrayOfLong2[0];
      l2 += arrayOfLong1[6] + arrayOfLong2[1];
      l1 += arrayOfLong1[7];
      int i = 1;
      while (i < 18)
      {
        int j = arrayOfInt1[i];
        int k = arrayOfInt2[i];
        l8 += l7;
        l7 = ThreefishEngine.ˊ(l7, 46, l8);
        l6 += l5;
        l5 = ThreefishEngine.ˊ(l5, 36, l6);
        l4 += l3;
        l3 = ThreefishEngine.ˊ(l3, 19, l4);
        long l9 = l2 + l1;
        l2 = ThreefishEngine.ˊ(l1, 37, l9);
        l1 = l6 + l7;
        l6 = ThreefishEngine.ˊ(l7, 33, l1);
        l4 += l2;
        l2 = ThreefishEngine.ˊ(l2, 27, l4);
        l7 = l9 + l3;
        l3 = ThreefishEngine.ˊ(l3, 14, l7);
        l8 += l5;
        long l10 = ThreefishEngine.ˊ(l5, 42, l8);
        l4 += l6;
        l5 = ThreefishEngine.ˊ(l6, 17, l4);
        l9 = l7 + l10;
        l6 = ThreefishEngine.ˊ(l10, 49, l9);
        l10 = l8 + l3;
        l7 = ThreefishEngine.ˊ(l3, 36, l10);
        l3 = l1 + l2;
        long l11 = ThreefishEngine.ˊ(l2, 39, l3);
        l1 = l9 + l5;
        l8 = ThreefishEngine.ˊ(l5, 44, l1);
        l2 = l10 + l11;
        l5 = ThreefishEngine.ˊ(l11, 9, l2);
        l3 += l7;
        l7 = ThreefishEngine.ˊ(l7, 54, l3);
        l4 += l6;
        l6 = ThreefishEngine.ˊ(l6, 56, l4);
        l10 = arrayOfLong1[j];
        long l13 = l8 + arrayOfLong1[(j + 1)];
        l11 = arrayOfLong1[(j + 2)];
        long l12 = l6 + arrayOfLong1[(j + 3)];
        l8 = arrayOfLong1[(j + 4)];
        l9 = l7 + (arrayOfLong1[(j + 5)] + arrayOfLong2[k]);
        l6 = arrayOfLong1[(j + 6)];
        l7 = arrayOfLong2[(k + 1)];
        l5 += arrayOfLong1[(j + 7)] + i;
        l2 = l2 + l10 + l13;
        l10 = ThreefishEngine.ˊ(l13, 39, l2);
        l11 = l3 + l11 + l12;
        l3 = ThreefishEngine.ˊ(l12, 30, l11);
        l4 = l4 + l8 + l9;
        l8 = ThreefishEngine.ˊ(l9, 34, l4);
        l6 = l1 + (l6 + l7) + l5;
        l9 = ThreefishEngine.ˊ(l5, 24, l6);
        l1 = l11 + l10;
        l5 = ThreefishEngine.ˊ(l10, 13, l1);
        l7 = l4 + l9;
        l4 = ThreefishEngine.ˊ(l9, 50, l7);
        l9 = l6 + l8;
        l6 = ThreefishEngine.ˊ(l8, 10, l9);
        l8 = l2 + l3;
        l3 = ThreefishEngine.ˊ(l3, 17, l8);
        l2 = l7 + l5;
        l5 = ThreefishEngine.ˊ(l5, 25, l2);
        l7 = l9 + l3;
        l3 = ThreefishEngine.ˊ(l3, 29, l7);
        l8 += l6;
        l6 = ThreefishEngine.ˊ(l6, 39, l8);
        l10 = l1 + l4;
        l9 = ThreefishEngine.ˊ(l4, 43, l10);
        l1 = l7 + l5;
        l4 = ThreefishEngine.ˊ(l5, 8, l1);
        l5 = l8 + l9;
        l9 = ThreefishEngine.ˊ(l9, 35, l5);
        l11 = l10 + l6;
        l10 = ThreefishEngine.ˊ(l6, 56, l11);
        l2 += l3;
        l3 = ThreefishEngine.ˊ(l3, 22, l2);
        l8 = l5 + arrayOfLong1[(j + 1)];
        l7 = l4 + arrayOfLong1[(j + 2)];
        l6 = l11 + arrayOfLong1[(j + 3)];
        l5 = l3 + arrayOfLong1[(j + 4)];
        l4 = l2 + arrayOfLong1[(j + 5)];
        l3 = l10 + (arrayOfLong1[(j + 6)] + arrayOfLong2[(k + 1)]);
        l2 = l1 + (arrayOfLong1[(j + 7)] + arrayOfLong2[(k + 2)]);
        l1 = l9 + (arrayOfLong1[(j + 8)] + i + 1L);
        i += 2;
      }
      paramArrayOfLong2[0] = l8;
      paramArrayOfLong2[1] = l7;
      paramArrayOfLong2[2] = l6;
      paramArrayOfLong2[3] = l5;
      paramArrayOfLong2[4] = l4;
      paramArrayOfLong2[5] = l3;
      paramArrayOfLong2[6] = l2;
      paramArrayOfLong2[7] = l1;
    }
    
    public void ˎ(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
    {
      long[] arrayOfLong1 = this.aMi;
      long[] arrayOfLong2 = this.aMh;
      int[] arrayOfInt1 = ThreefishEngine.jM();
      int[] arrayOfInt2 = ThreefishEngine.jL();
      if (arrayOfLong1.length != 17) {
        throw new IllegalArgumentException();
      }
      if (arrayOfLong2.length != 5) {
        throw new IllegalArgumentException();
      }
      long l8 = paramArrayOfLong1[0];
      long l4 = paramArrayOfLong1[1];
      long l7 = paramArrayOfLong1[2];
      long l1 = paramArrayOfLong1[3];
      long l6 = paramArrayOfLong1[4];
      long l2 = paramArrayOfLong1[5];
      long l5 = paramArrayOfLong1[6];
      long l3 = paramArrayOfLong1[7];
      int i = 17;
      while (i >= 1)
      {
        int j = arrayOfInt1[i];
        int k = arrayOfInt2[i];
        l9 = l8 - arrayOfLong1[(j + 1)];
        l12 = arrayOfLong1[(j + 2)];
        l8 = l7 - arrayOfLong1[(j + 3)];
        l7 = arrayOfLong1[(j + 4)];
        l6 -= arrayOfLong1[(j + 5)];
        l10 = arrayOfLong1[(j + 6)];
        l11 = arrayOfLong2[(k + 1)];
        l15 = l5 - (arrayOfLong1[(j + 7)] + arrayOfLong2[(k + 2)]);
        l13 = arrayOfLong1[(j + 8)];
        l14 = i;
        l5 = ThreefishEngine.ˋ(l4 - l12, 8, l15);
        l4 = l15 - l5;
        l3 = ThreefishEngine.ˋ(l3 - (l13 + l14 + 1L), 35, l9);
        l9 -= l3;
        l10 = ThreefishEngine.ˋ(l2 - (l10 + l11), 56, l8);
        l2 = l8 - l10;
        l1 = ThreefishEngine.ˋ(l1 - l7, 22, l6);
        l6 -= l1;
        l8 = ThreefishEngine.ˋ(l5, 25, l6);
        l5 = l6 - l8;
        l1 = ThreefishEngine.ˋ(l1, 29, l4);
        l6 = l4 - l1;
        l10 = ThreefishEngine.ˋ(l10, 39, l9);
        l7 = l9 - l10;
        l4 = ThreefishEngine.ˋ(l3, 43, l2);
        l3 = l2 - l4;
        l2 = ThreefishEngine.ˋ(l8, 13, l3);
        l3 -= l2;
        l8 = ThreefishEngine.ˋ(l4, 50, l5);
        l4 = l5 - l8;
        l9 = ThreefishEngine.ˋ(l10, 10, l6);
        l5 = l6 - l9;
        l1 = ThreefishEngine.ˋ(l1, 17, l7);
        l7 -= l1;
        l6 = ThreefishEngine.ˋ(l2, 39, l7);
        l1 = ThreefishEngine.ˋ(l1, 30, l3);
        l2 = ThreefishEngine.ˋ(l9, 34, l4);
        l8 = ThreefishEngine.ˋ(l8, 24, l5);
        l9 = l7 - l6 - arrayOfLong1[j];
        l10 = arrayOfLong1[(j + 1)];
        l7 = l3 - l1 - arrayOfLong1[(j + 2)];
        l3 = arrayOfLong1[(j + 3)];
        l4 = l4 - l2 - arrayOfLong1[(j + 4)];
        l11 = arrayOfLong1[(j + 5)];
        l12 = arrayOfLong2[k];
        l5 = l5 - l8 - (arrayOfLong1[(j + 6)] + arrayOfLong2[(k + 1)]);
        l13 = arrayOfLong1[(j + 7)];
        l14 = i;
        l10 = ThreefishEngine.ˋ(l6 - l10, 44, l5);
        l5 -= l10;
        l6 = ThreefishEngine.ˋ(l8 - (l13 + l14), 9, l9);
        l8 = l9 - l6;
        l9 = ThreefishEngine.ˋ(l2 - (l11 + l12), 54, l7);
        l2 = l7 - l9;
        l1 = ThreefishEngine.ˋ(l1 - l3, 56, l4);
        l4 -= l1;
        l3 = ThreefishEngine.ˋ(l10, 17, l4);
        l4 -= l3;
        l1 = ThreefishEngine.ˋ(l1, 49, l5);
        l5 -= l1;
        l9 = ThreefishEngine.ˋ(l9, 36, l8);
        l7 = l8 - l9;
        l6 = ThreefishEngine.ˋ(l6, 39, l2);
        l2 -= l6;
        l8 = ThreefishEngine.ˋ(l3, 33, l2);
        l2 -= l8;
        l3 = ThreefishEngine.ˋ(l6, 27, l4);
        l6 = l4 - l3;
        l9 = ThreefishEngine.ˋ(l9, 14, l5);
        l5 -= l9;
        l1 = ThreefishEngine.ˋ(l1, 42, l7);
        l7 -= l1;
        l4 = ThreefishEngine.ˋ(l8, 46, l7);
        l8 = l7 - l4;
        l1 = ThreefishEngine.ˋ(l1, 36, l2);
        l7 = l2 - l1;
        l2 = ThreefishEngine.ˋ(l9, 19, l6);
        l6 -= l2;
        l3 = ThreefishEngine.ˋ(l3, 37, l5);
        l5 -= l3;
        i -= 2;
      }
      long l9 = arrayOfLong1[0];
      long l10 = arrayOfLong1[1];
      long l11 = arrayOfLong1[2];
      long l12 = arrayOfLong1[3];
      long l13 = arrayOfLong1[4];
      long l14 = arrayOfLong1[5];
      long l15 = arrayOfLong2[0];
      long l16 = arrayOfLong1[6];
      long l17 = arrayOfLong2[1];
      long l18 = arrayOfLong1[7];
      paramArrayOfLong2[0] = (l8 - l9);
      paramArrayOfLong2[1] = (l4 - l10);
      paramArrayOfLong2[2] = (l7 - l11);
      paramArrayOfLong2[3] = (l1 - l12);
      paramArrayOfLong2[4] = (l6 - l13);
      paramArrayOfLong2[5] = (l2 - (l14 + l15));
      paramArrayOfLong2[6] = (l5 - (l16 + l17));
      paramArrayOfLong2[7] = (l3 - l18);
    }
  }
  
  static abstract class ThreefishCipher
  {
    protected final long[] aMh;
    protected final long[] aMi;
    
    protected ThreefishCipher(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
    {
      this.aMi = paramArrayOfLong1;
      this.aMh = paramArrayOfLong2;
    }
    
    abstract void ˋ(long[] paramArrayOfLong1, long[] paramArrayOfLong2);
    
    abstract void ˎ(long[] paramArrayOfLong1, long[] paramArrayOfLong2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.ThreefishEngine
 * JD-Core Version:    0.7.0.1
 */