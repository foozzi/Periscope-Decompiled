package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.generators.Poly1305KeyGenerator;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Pack;

public class Poly1305
  implements Mac
{
  private final BlockCipher aEX;
  private final byte[] aHB = new byte[16];
  private final byte[] aHz = new byte[1];
  private int aNU;
  private int aNV;
  private int aNW;
  private int aNX;
  private int aNY;
  private int aNZ;
  private int aOa;
  private int aOb;
  private int aOc;
  private int aOd;
  private int aOe;
  private int aOf;
  private int aOg;
  private int aOh = 0;
  private int aOi;
  private int aOj;
  private int aOk;
  private int aOl;
  private int aOm;
  
  public Poly1305()
  {
    this.aEX = null;
  }
  
  public Poly1305(BlockCipher paramBlockCipher)
  {
    if (paramBlockCipher.getBlockSize() != 16) {
      throw new IllegalArgumentException("Poly1305 requires a 128 bit block cipher.");
    }
    this.aEX = paramBlockCipher;
  }
  
  private void iV()
  {
    if (this.aOh < 16)
    {
      this.aHB[this.aOh] = 1;
      int i = this.aOh + 1;
      while (i < 16)
      {
        this.aHB[i] = 0;
        i += 1;
      }
    }
    long l1 = 0xFFFFFFFF & Pack.ᐟ(this.aHB, 0);
    long l2 = 0xFFFFFFFF & Pack.ᐟ(this.aHB, 4);
    long l3 = 0xFFFFFFFF & Pack.ᐟ(this.aHB, 8);
    long l4 = 0xFFFFFFFF & Pack.ᐟ(this.aHB, 12);
    this.aOi = ((int)(this.aOi + (0x3FFFFFF & l1)));
    this.aOj = ((int)(this.aOj + ((l2 << 32 | l1) >>> 26 & 0x3FFFFFF)));
    this.aOk = ((int)(this.aOk + ((l3 << 32 | l2) >>> 20 & 0x3FFFFFF)));
    this.aOl = ((int)(this.aOl + ((l4 << 32 | l3) >>> 14 & 0x3FFFFFF)));
    this.aOm = ((int)(this.aOm + (l4 >>> 8)));
    if (this.aOh == 16) {
      this.aOm += 16777216;
    }
    long l16 = ᔅ(this.aOi, this.aNU) + ᔅ(this.aOj, this.aOc) + ᔅ(this.aOk, this.aOb) + ᔅ(this.aOl, this.aOa) + ᔅ(this.aOm, this.aNZ);
    long l17 = ᔅ(this.aOi, this.aNV);
    long l18 = ᔅ(this.aOj, this.aNU);
    long l19 = ᔅ(this.aOk, this.aOc);
    long l20 = ᔅ(this.aOl, this.aOb);
    long l21 = ᔅ(this.aOm, this.aOa);
    long l11 = ᔅ(this.aOi, this.aNW);
    long l12 = ᔅ(this.aOj, this.aNV);
    long l13 = ᔅ(this.aOk, this.aNU);
    long l14 = ᔅ(this.aOl, this.aOc);
    long l15 = ᔅ(this.aOm, this.aOb);
    long l6 = ᔅ(this.aOi, this.aNX);
    long l7 = ᔅ(this.aOj, this.aNW);
    long l8 = ᔅ(this.aOk, this.aNV);
    long l9 = ᔅ(this.aOl, this.aNU);
    long l10 = ᔅ(this.aOm, this.aOc);
    l1 = ᔅ(this.aOi, this.aNY);
    l2 = ᔅ(this.aOj, this.aNX);
    l3 = ᔅ(this.aOk, this.aNW);
    l4 = ᔅ(this.aOl, this.aNV);
    long l5 = ᔅ(this.aOm, this.aNU);
    this.aOi = ((int)l16 & 0x3FFFFFF);
    l16 = l17 + l18 + l19 + l20 + l21 + (l16 >>> 26);
    this.aOj = ((int)l16 & 0x3FFFFFF);
    l11 = l11 + l12 + l13 + l14 + l15 + (l16 >>> 26 & 0xFFFFFFFF);
    this.aOk = ((int)l11 & 0x3FFFFFF);
    l6 = l6 + l7 + l8 + l9 + l10 + (l11 >>> 26 & 0xFFFFFFFF);
    this.aOl = ((int)l6 & 0x3FFFFFF);
    l1 = l1 + l2 + l3 + l4 + l5 + (l6 >>> 26);
    this.aOm = ((int)l1 & 0x3FFFFFF);
    this.aOi = ((int)(this.aOi + 5L * (l1 >>> 26)));
  }
  
  private void ˏ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((this.aEX != null) && ((paramArrayOfByte2 == null) || (paramArrayOfByte2.length != 16))) {
      throw new IllegalArgumentException("Poly1305 requires a 128 bit IV.");
    }
    Poly1305KeyGenerator.ᐟ(paramArrayOfByte1);
    int i = Pack.ᐟ(paramArrayOfByte1, 16);
    int j = Pack.ᐟ(paramArrayOfByte1, 20);
    int k = Pack.ᐟ(paramArrayOfByte1, 24);
    int m = Pack.ᐟ(paramArrayOfByte1, 28);
    this.aNU = (0x3FFFFFF & i);
    this.aNV = (0x3FFFF03 & (i >>> 26 | j << 6));
    this.aNW = (0x3FFC0FF & (j >>> 20 | k << 12));
    this.aNX = (0x3F03FFF & (k >>> 14 | m << 18));
    this.aNY = (0xFFFFF & m >>> 8);
    this.aNZ = (this.aNV * 5);
    this.aOa = (this.aNW * 5);
    this.aOb = (this.aNX * 5);
    this.aOc = (this.aNY * 5);
    if (this.aEX != null)
    {
      byte[] arrayOfByte = new byte[16];
      this.aEX.ˊ(true, new KeyParameter(paramArrayOfByte1, 0, 16));
      this.aEX.ˊ(paramArrayOfByte2, 0, arrayOfByte, 0);
      paramArrayOfByte1 = arrayOfByte;
    }
    this.aOd = Pack.ᐟ(paramArrayOfByte1, 0);
    this.aOe = Pack.ᐟ(paramArrayOfByte1, 4);
    this.aOf = Pack.ᐟ(paramArrayOfByte1, 8);
    this.aOg = Pack.ᐟ(paramArrayOfByte1, 12);
  }
  
  private static final long ᔅ(int paramInt1, int paramInt2)
  {
    return paramInt1 * paramInt2;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt + 16 > paramArrayOfByte.length) {
      throw new DataLengthException("Output buffer is too short.");
    }
    if (this.aOh > 0) {
      iV();
    }
    int i = this.aOi;
    this.aOi &= 0x3FFFFFF;
    this.aOj += (i >>> 26);
    i = this.aOj;
    this.aOj &= 0x3FFFFFF;
    this.aOk += (i >>> 26);
    i = this.aOk;
    this.aOk &= 0x3FFFFFF;
    this.aOl += (i >>> 26);
    i = this.aOl;
    this.aOl &= 0x3FFFFFF;
    this.aOm += (i >>> 26);
    i = this.aOm;
    this.aOm &= 0x3FFFFFF;
    this.aOi += (i >>> 26) * 5;
    i = this.aOi + 5;
    int j = this.aOj + (i >>> 26);
    int k = this.aOk + (j >>> 26);
    int m = this.aOl + (k >>> 26);
    int n = this.aOm + (m >>> 26) - 67108864;
    int i1 = (n >>> 31) - 1;
    int i2 = i1 ^ 0xFFFFFFFF;
    this.aOi = (this.aOi & i2 | i & 0x3FFFFFF & i1);
    this.aOj = (this.aOj & i2 | j & 0x3FFFFFF & i1);
    this.aOk = (this.aOk & i2 | k & 0x3FFFFFF & i1);
    this.aOl = (this.aOl & i2 | m & 0x3FFFFFF & i1);
    this.aOm = (this.aOm & i2 | n & i1);
    long l5 = ((this.aOi | this.aOj << 26) & 0xFFFFFFFF) + (this.aOd & 0xFFFFFFFF);
    long l6 = this.aOj >>> 6 | this.aOk << 20;
    long l7 = this.aOe;
    long l3 = this.aOk >>> 12 | this.aOl << 14;
    long l4 = this.aOf;
    long l1 = this.aOl >>> 18 | this.aOm << 8;
    long l2 = this.aOg;
    Pack.ʿ((int)l5, paramArrayOfByte, paramInt);
    l5 = (l6 & 0xFFFFFFFF) + (l7 & 0xFFFFFFFF) + (l5 >>> 32);
    Pack.ʿ((int)l5, paramArrayOfByte, paramInt + 4);
    l3 = (l3 & 0xFFFFFFFF) + (l4 & 0xFFFFFFFF) + (l5 >>> 32);
    Pack.ʿ((int)l3, paramArrayOfByte, paramInt + 8);
    Pack.ʿ((int)((l1 & 0xFFFFFFFF) + (l2 & 0xFFFFFFFF) + (l3 >>> 32)), paramArrayOfByte, paramInt + 12);
    reset();
    return 16;
  }
  
  public String iG()
  {
    if (this.aEX == null) {
      return "Poly1305";
    }
    return "Poly1305-" + this.aEX.iG();
  }
  
  public int iO()
  {
    return 16;
  }
  
  public void reset()
  {
    this.aOh = 0;
    this.aOm = 0;
    this.aOl = 0;
    this.aOk = 0;
    this.aOj = 0;
    this.aOi = 0;
  }
  
  public void update(byte paramByte)
  {
    this.aHz[0] = paramByte;
    update(this.aHz, 0, 1);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (paramInt2 > i)
    {
      if (this.aOh == 16)
      {
        iV();
        this.aOh = 0;
      }
      int j = Math.min(paramInt2 - i, 16 - this.aOh);
      System.arraycopy(paramArrayOfByte, i + paramInt1, this.aHB, this.aOh, j);
      i += j;
      this.aOh += j;
    }
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    byte[] arrayOfByte = null;
    CipherParameters localCipherParameters = paramCipherParameters;
    if (this.aEX != null)
    {
      if (!(paramCipherParameters instanceof ParametersWithIV)) {
        throw new IllegalArgumentException("Poly1305 requires an IV when used with a block cipher.");
      }
      paramCipherParameters = (ParametersWithIV)paramCipherParameters;
      arrayOfByte = paramCipherParameters.getIV();
      localCipherParameters = paramCipherParameters.lh();
    }
    if (!(localCipherParameters instanceof KeyParameter)) {
      throw new IllegalArgumentException("Poly1305 requires a key.");
    }
    ˏ(((KeyParameter)localCipherParameters).getKey(), arrayOfByte);
    reset();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.Poly1305
 * JD-Core Version:    0.7.0.1
 */