package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;
import org.spongycastle.util.MemoableResetException;

public class SHA512tDigest
  extends LongDigest
{
  private int aHc;
  private long aHd;
  private long aHe;
  private long aHf;
  private long aHg;
  private long aHh;
  private long aHi;
  private long aHj;
  private long aHk;
  
  public SHA512tDigest(int paramInt)
  {
    if (paramInt >= 512) {
      throw new IllegalArgumentException("bitLength cannot be >= 512");
    }
    if (paramInt % 8 != 0) {
      throw new IllegalArgumentException("bitLength needs to be a multiple of 8");
    }
    if (paramInt == 384) {
      throw new IllegalArgumentException("bitLength cannot be 384 use SHA384 instead");
    }
    this.aHc = (paramInt / 8);
    ᓲ(this.aHc * 8);
    reset();
  }
  
  public SHA512tDigest(SHA512tDigest paramSHA512tDigest)
  {
    super(paramSHA512tDigest);
    this.aHc = paramSHA512tDigest.aHc;
    ˊ(paramSHA512tDigest);
  }
  
  private static void ˊ(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 > 0)
    {
      ˏ((int)(paramLong >>> 32), paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt2 > 4) {
        ˏ((int)(0xFFFFFFFF & paramLong), paramArrayOfByte, paramInt1 + 4, paramInt2 - 4);
      }
    }
  }
  
  private static void ˏ(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    paramInt3 = Math.min(4, paramInt3);
    for (;;)
    {
      paramInt3 -= 1;
      if (paramInt3 < 0) {
        break;
      }
      paramArrayOfByte[(paramInt2 + paramInt3)] = ((byte)(paramInt1 >>> (3 - paramInt3) * 8));
    }
  }
  
  private void ᓲ(int paramInt)
  {
    this.aGk = -3482333909917012819L;
    this.aGl = 2216346199247487646L;
    this.aGm = -7364697282686394994L;
    this.aGn = 65953792586715988L;
    this.aGo = -816286391624063116L;
    this.aGp = 4512832404995164602L;
    this.aGq = -5033199132376557362L;
    this.aGr = -124578254951840548L;
    update((byte)83);
    update((byte)72);
    update((byte)65);
    update((byte)45);
    update((byte)53);
    update((byte)49);
    update((byte)50);
    update((byte)47);
    if (paramInt > 100)
    {
      update((byte)(paramInt / 100 + 48));
      paramInt %= 100;
      update((byte)(paramInt / 10 + 48));
      update((byte)(paramInt % 10 + 48));
    }
    else if (paramInt > 10)
    {
      update((byte)(paramInt / 10 + 48));
      update((byte)(paramInt % 10 + 48));
    }
    else
    {
      update((byte)(paramInt + 48));
    }
    finish();
    this.aHd = this.aGk;
    this.aHe = this.aGl;
    this.aHf = this.aGm;
    this.aHg = this.aGn;
    this.aHh = this.aGo;
    this.aHi = this.aGp;
    this.aHj = this.aGq;
    this.aHk = this.aGr;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    finish();
    ˊ(this.aGk, paramArrayOfByte, paramInt, this.aHc);
    ˊ(this.aGl, paramArrayOfByte, paramInt + 8, this.aHc - 8);
    ˊ(this.aGm, paramArrayOfByte, paramInt + 16, this.aHc - 16);
    ˊ(this.aGn, paramArrayOfByte, paramInt + 24, this.aHc - 24);
    ˊ(this.aGo, paramArrayOfByte, paramInt + 32, this.aHc - 32);
    ˊ(this.aGp, paramArrayOfByte, paramInt + 40, this.aHc - 40);
    ˊ(this.aGq, paramArrayOfByte, paramInt + 48, this.aHc - 48);
    ˊ(this.aGr, paramArrayOfByte, paramInt + 56, this.aHc - 56);
    reset();
    return this.aHc;
  }
  
  public String iG()
  {
    return "SHA-512/" + Integer.toString(this.aHc * 8);
  }
  
  public int iJ()
  {
    return this.aHc;
  }
  
  public Memoable iU()
  {
    return new SHA512tDigest(this);
  }
  
  public void reset()
  {
    super.reset();
    this.aGk = this.aHd;
    this.aGl = this.aHe;
    this.aGm = this.aHf;
    this.aGn = this.aHg;
    this.aGo = this.aHh;
    this.aGp = this.aHi;
    this.aGq = this.aHj;
    this.aGr = this.aHk;
  }
  
  public void ˊ(Memoable paramMemoable)
  {
    paramMemoable = (SHA512tDigest)paramMemoable;
    if (this.aHc != paramMemoable.aHc) {
      throw new MemoableResetException("digestLength inappropriate in other");
    }
    super.ˊ(paramMemoable);
    this.aHd = paramMemoable.aHd;
    this.aHe = paramMemoable.aHe;
    this.aHf = paramMemoable.aHf;
    this.aHg = paramMemoable.aHg;
    this.aHh = paramMemoable.aHh;
    this.aHi = paramMemoable.aHi;
    this.aHj = paramMemoable.aHj;
    this.aHk = paramMemoable.aHk;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.SHA512tDigest
 * JD-Core Version:    0.7.0.1
 */