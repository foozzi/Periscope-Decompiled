package org.spongycastle.crypto.engines;

import org.spongycastle.util.Pack;

public class ChaChaEngine
  extends Salsa20Engine
{
  public ChaChaEngine() {}
  
  public ChaChaEngine(int paramInt)
  {
    super(paramInt);
  }
  
  public static void ˊ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (paramArrayOfInt1.length != 16) {
      throw new IllegalArgumentException();
    }
    if (paramArrayOfInt2.length != 16) {
      throw new IllegalArgumentException();
    }
    if (paramInt % 2 != 0) {
      throw new IllegalArgumentException("Number of rounds must be even");
    }
    int i11 = paramArrayOfInt1[0];
    int i7 = paramArrayOfInt1[1];
    int i3 = paramArrayOfInt1[2];
    int m = paramArrayOfInt1[3];
    int i8 = paramArrayOfInt1[4];
    int i4 = paramArrayOfInt1[5];
    int n = paramArrayOfInt1[6];
    int i = paramArrayOfInt1[7];
    int i9 = paramArrayOfInt1[8];
    int i5 = paramArrayOfInt1[9];
    int i1 = paramArrayOfInt1[10];
    int j = paramArrayOfInt1[11];
    int i10 = paramArrayOfInt1[12];
    int i6 = paramArrayOfInt1[13];
    int i2 = paramArrayOfInt1[14];
    int k = paramArrayOfInt1[15];
    while (paramInt > 0)
    {
      i11 += i8;
      i10 = ˁ(i10 ^ i11, 16);
      i9 += i10;
      i8 = ˁ(i8 ^ i9, 12);
      i11 += i8;
      i10 = ˁ(i10 ^ i11, 8);
      i9 += i10;
      i8 = ˁ(i8 ^ i9, 7);
      i7 += i4;
      i6 = ˁ(i6 ^ i7, 16);
      i5 += i6;
      i4 = ˁ(i4 ^ i5, 12);
      i7 += i4;
      i6 = ˁ(i6 ^ i7, 8);
      i5 += i6;
      i4 = ˁ(i4 ^ i5, 7);
      i3 += n;
      i2 = ˁ(i2 ^ i3, 16);
      i1 += i2;
      n = ˁ(n ^ i1, 12);
      i3 += n;
      i2 = ˁ(i2 ^ i3, 8);
      i1 += i2;
      n = ˁ(n ^ i1, 7);
      m += i;
      k = ˁ(k ^ m, 16);
      j += k;
      i = ˁ(i ^ j, 12);
      m += i;
      k = ˁ(k ^ m, 8);
      j += k;
      i = ˁ(i ^ j, 7);
      i11 += i4;
      k = ˁ(k ^ i11, 16);
      i1 += k;
      i4 = ˁ(i4 ^ i1, 12);
      i11 += i4;
      k = ˁ(k ^ i11, 8);
      i1 += k;
      i4 = ˁ(i4 ^ i1, 7);
      i7 += n;
      i10 = ˁ(i10 ^ i7, 16);
      j += i10;
      n = ˁ(n ^ j, 12);
      i7 += n;
      i10 = ˁ(i10 ^ i7, 8);
      j += i10;
      n = ˁ(n ^ j, 7);
      i3 += i;
      i6 = ˁ(i6 ^ i3, 16);
      i9 += i6;
      i = ˁ(i ^ i9, 12);
      i3 += i;
      i6 = ˁ(i6 ^ i3, 8);
      i9 += i6;
      i = ˁ(i ^ i9, 7);
      m += i8;
      i2 = ˁ(i2 ^ m, 16);
      i5 += i2;
      i8 = ˁ(i8 ^ i5, 12);
      m += i8;
      i2 = ˁ(i2 ^ m, 8);
      i5 += i2;
      i8 = ˁ(i8 ^ i5, 7);
      paramInt -= 2;
    }
    paramArrayOfInt1[0] += i11;
    paramArrayOfInt1[1] += i7;
    paramArrayOfInt1[2] += i3;
    paramArrayOfInt1[3] += m;
    paramArrayOfInt1[4] += i8;
    paramArrayOfInt1[5] += i4;
    paramArrayOfInt1[6] += n;
    paramArrayOfInt1[7] += i;
    paramArrayOfInt1[8] += i9;
    paramArrayOfInt1[9] += i5;
    paramArrayOfInt1[10] += i1;
    paramArrayOfInt1[11] += j;
    paramArrayOfInt1[12] += i10;
    paramArrayOfInt1[13] += i6;
    paramArrayOfInt1[14] += i2;
    paramArrayOfInt1[15] += k;
  }
  
  public String iG()
  {
    return "ChaCha" + this.aLI;
  }
  
  protected void jo()
  {
    int[] arrayOfInt = this.aKI;
    int i = arrayOfInt[12] + 1;
    arrayOfInt[12] = i;
    if (i == 0)
    {
      arrayOfInt = this.aKI;
      arrayOfInt[13] += 1;
    }
  }
  
  protected void jp()
  {
    if ((this.aKI[12] == 0) && (this.aKI[13] == 0)) {
      throw new IllegalStateException("attempt to reduce counter past zero.");
    }
    int[] arrayOfInt = this.aKI;
    int i = arrayOfInt[12] - 1;
    arrayOfInt[12] = i;
    if (i == -1)
    {
      arrayOfInt = this.aKI;
      arrayOfInt[13] -= 1;
    }
  }
  
  protected long jq()
  {
    return this.aKI[13] << 32 | this.aKI[12] & 0xFFFFFFFF;
  }
  
  protected void jr()
  {
    int[] arrayOfInt = this.aKI;
    this.aKI[13] = 0;
    arrayOfInt[12] = 0;
  }
  
  protected void ˏ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1 != null)
    {
      if ((paramArrayOfByte1.length != 16) && (paramArrayOfByte1.length != 32)) {
        throw new IllegalArgumentException(iG() + " requires 128 bit or 256 bit key");
      }
      this.aKI[4] = Pack.ᐟ(paramArrayOfByte1, 0);
      this.aKI[5] = Pack.ᐟ(paramArrayOfByte1, 4);
      this.aKI[6] = Pack.ᐟ(paramArrayOfByte1, 8);
      this.aKI[7] = Pack.ᐟ(paramArrayOfByte1, 12);
      byte[] arrayOfByte;
      int i;
      if (paramArrayOfByte1.length == 32)
      {
        arrayOfByte = aLG;
        i = 16;
      }
      else
      {
        arrayOfByte = aLH;
        i = 0;
      }
      this.aKI[8] = Pack.ᐟ(paramArrayOfByte1, i);
      this.aKI[9] = Pack.ᐟ(paramArrayOfByte1, i + 4);
      this.aKI[10] = Pack.ᐟ(paramArrayOfByte1, i + 8);
      this.aKI[11] = Pack.ᐟ(paramArrayOfByte1, i + 12);
      this.aKI[0] = Pack.ᐟ(arrayOfByte, 0);
      this.aKI[1] = Pack.ᐟ(arrayOfByte, 4);
      this.aKI[2] = Pack.ᐟ(arrayOfByte, 8);
      this.aKI[3] = Pack.ᐟ(arrayOfByte, 12);
    }
    this.aKI[14] = Pack.ᐟ(paramArrayOfByte2, 0);
    this.aKI[15] = Pack.ᐟ(paramArrayOfByte2, 4);
  }
  
  protected void ˡ(byte[] paramArrayOfByte)
  {
    ˊ(this.aLI, this.aKI, this.aLJ);
    Pack.ˏ(this.aLJ, paramArrayOfByte, 0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.ChaChaEngine
 * JD-Core Version:    0.7.0.1
 */