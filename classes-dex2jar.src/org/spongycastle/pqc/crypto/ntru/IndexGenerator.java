package org.spongycastle.pqc.crypto.ntru;

import org.spongycastle.crypto.Digest;

public class IndexGenerator
{
  private byte[] aDx;
  private int aKM;
  private int aMJ;
  private int aNg;
  private int aaN;
  private int bgo;
  private int bgp;
  private int bgq;
  private BitString bgr;
  private Digest bgs;
  private boolean initialized;
  
  IndexGenerator(byte[] paramArrayOfByte, NTRUEncryptionParameters paramNTRUEncryptionParameters)
  {
    this.aDx = paramArrayOfByte;
    this.aMJ = paramNTRUEncryptionParameters.aMJ;
    this.aKM = paramNTRUEncryptionParameters.aKM;
    this.bgo = paramNTRUEncryptionParameters.bgo;
    this.bgp = 0;
    this.bgq = 0;
    this.aaN = 0;
    this.bgs = paramNTRUEncryptionParameters.bgs;
    this.aNg = this.bgs.iJ();
    this.initialized = false;
  }
  
  private static byte[] copyOf(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    if (paramInt >= paramArrayOfByte.length) {
      paramInt = paramArrayOfByte.length;
    }
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramInt);
    return arrayOfByte;
  }
  
  private void ˊ(Digest paramDigest, int paramInt)
  {
    paramDigest.update((byte)(paramInt >> 24));
    paramDigest.update((byte)(paramInt >> 16));
    paramDigest.update((byte)(paramInt >> 8));
    paramDigest.update((byte)paramInt);
  }
  
  private void ˊ(BitString paramBitString, byte[] paramArrayOfByte)
  {
    this.bgs.update(this.aDx, 0, this.aDx.length);
    ˊ(this.bgs, this.aaN);
    this.bgs.doFinal(paramArrayOfByte, 0);
    paramBitString.ﹻ(paramArrayOfByte);
  }
  
  int nextIndex()
  {
    Object localObject;
    if (!this.initialized)
    {
      this.bgr = new BitString();
      localObject = new byte[this.bgs.iJ()];
      while (this.aaN < this.bgo)
      {
        ˊ(this.bgr, (byte[])localObject);
        this.aaN += 1;
      }
      this.bgp = (this.bgo * 8 * this.aNg);
      this.bgq = this.bgp;
      this.initialized = true;
    }
    for (;;)
    {
      this.bgp += this.aKM;
      localObject = this.bgr.Ξ(this.bgq);
      if (this.bgq < this.aKM)
      {
        i = this.aKM - this.bgq;
        int j = this.aaN;
        int k = (this.aNg + i - 1) / this.aNg;
        byte[] arrayOfByte = new byte[this.bgs.iJ()];
        while (this.aaN < j + k)
        {
          ˊ((BitString)localObject, arrayOfByte);
          this.aaN += 1;
          if (i > this.aNg * 8) {
            i -= this.aNg * 8;
          }
        }
        this.bgq = (this.aNg * 8 - i);
        this.bgr = new BitString();
        this.bgr.ﹻ(arrayOfByte);
      }
      else
      {
        this.bgq -= this.aKM;
      }
      int i = ((BitString)localObject).ς(this.aKM);
      if (i < (1 << this.aKM) - (1 << this.aKM) % this.aMJ) {
        return i % this.aMJ;
      }
    }
  }
  
  public static class BitString
  {
    int bgt;
    int bgu;
    byte[] bytes = new byte[4];
    
    public void ˈ(byte paramByte)
    {
      if (this.bgt == this.bytes.length) {
        this.bytes = IndexGenerator.ᐣ(this.bytes, this.bytes.length * 2);
      }
      if (this.bgt == 0)
      {
        this.bgt = 1;
        this.bytes[0] = paramByte;
        this.bgu = 8;
        return;
      }
      if (this.bgu == 8)
      {
        arrayOfByte = this.bytes;
        i = this.bgt;
        this.bgt = (i + 1);
        arrayOfByte[i] = paramByte;
        return;
      }
      int i = this.bgu;
      byte[] arrayOfByte = this.bytes;
      int j = this.bgt - 1;
      arrayOfByte[j] = ((byte)(arrayOfByte[j] | (paramByte & 0xFF) << this.bgu));
      arrayOfByte = this.bytes;
      j = this.bgt;
      this.bgt = (j + 1);
      arrayOfByte[j] = ((byte)((paramByte & 0xFF) >> 8 - i));
    }
    
    public BitString Ξ(int paramInt)
    {
      BitString localBitString = new BitString();
      localBitString.bgt = ((paramInt + 7) / 8);
      localBitString.bytes = new byte[localBitString.bgt];
      int i = 0;
      while (i < localBitString.bgt)
      {
        localBitString.bytes[i] = this.bytes[i];
        i += 1;
      }
      localBitString.bgu = (paramInt % 8);
      if (localBitString.bgu == 0)
      {
        localBitString.bgu = 8;
        return localBitString;
      }
      paramInt = 32 - localBitString.bgu;
      localBitString.bytes[(localBitString.bgt - 1)] = ((byte)(localBitString.bytes[(localBitString.bgt - 1)] << paramInt >>> paramInt));
      return localBitString;
    }
    
    public int ς(int paramInt)
    {
      int i = (this.bgt - 1) * 8 + this.bgu - paramInt;
      paramInt = i / 8;
      i %= 8;
      int j = (this.bytes[paramInt] & 0xFF) >>> i;
      i = 8 - i;
      paramInt += 1;
      while (paramInt < this.bgt)
      {
        j |= (this.bytes[paramInt] & 0xFF) << i;
        i += 8;
        paramInt += 1;
      }
      return j;
    }
    
    void ﹻ(byte[] paramArrayOfByte)
    {
      int i = 0;
      while (i != paramArrayOfByte.length)
      {
        ˈ(paramArrayOfByte[i]);
        i += 1;
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.IndexGenerator
 * JD-Core Version:    0.7.0.1
 */