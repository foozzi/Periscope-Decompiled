package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Pack;

public class SipHash
  implements Mac
{
  protected final int aKM;
  protected final int aOn;
  protected long aOo;
  protected long aOp;
  protected long aOq;
  protected long aOr;
  protected long aOs;
  protected long aOt;
  protected long aOu = 0L;
  protected int aOv = 0;
  protected int aOw = 0;
  
  public SipHash()
  {
    this.aKM = 2;
    this.aOn = 4;
  }
  
  public SipHash(int paramInt1, int paramInt2)
  {
    this.aKM = paramInt1;
    this.aOn = paramInt2;
  }
  
  protected static long rotateLeft(long paramLong, int paramInt)
  {
    return paramLong << paramInt | paramLong >>> -paramInt;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    Pack.ʼ(ka(), paramArrayOfByte, paramInt);
    return 8;
  }
  
  public String iG()
  {
    return "SipHash-" + this.aKM + "-" + this.aOn;
  }
  
  public int iO()
  {
    return 8;
  }
  
  public long ka()
  {
    this.aOu >>>= 7 - this.aOv << 3;
    this.aOu >>>= 8;
    this.aOu |= ((this.aOw << 3) + this.aOv & 0xFF) << 56;
    kb();
    this.aOs ^= 0xFF;
    ʕ(this.aOn);
    long l1 = this.aOq;
    long l2 = this.aOr;
    long l3 = this.aOs;
    long l4 = this.aOt;
    reset();
    return l1 ^ l2 ^ l3 ^ l4;
  }
  
  protected void kb()
  {
    this.aOw += 1;
    this.aOt ^= this.aOu;
    ʕ(this.aKM);
    this.aOq ^= this.aOu;
  }
  
  public void reset()
  {
    this.aOq = (this.aOo ^ 0x70736575);
    this.aOr = (this.aOp ^ 0x6E646F6D);
    this.aOs = (this.aOo ^ 0x6E657261);
    this.aOt = (this.aOp ^ 0x79746573);
    this.aOu = 0L;
    this.aOv = 0;
    this.aOw = 0;
  }
  
  public void update(byte paramByte)
  {
    this.aOu >>>= 8;
    this.aOu |= (paramByte & 0xFF) << 56;
    paramByte = this.aOv + 1;
    this.aOv = paramByte;
    if (paramByte == 8)
    {
      kb();
      this.aOv = 0;
    }
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    int j = 0;
    int k = paramInt2 & 0xFFFFFFF8;
    if (this.aOv == 0)
    {
      i = j;
      for (;;)
      {
        j = i;
        if (i >= k) {
          break;
        }
        this.aOu = Pack.ᐡ(paramArrayOfByte, paramInt1 + i);
        kb();
        i += 8;
      }
      while (j < paramInt2)
      {
        this.aOu >>>= 8;
        this.aOu |= (paramArrayOfByte[(paramInt1 + j)] & 0xFF) << 56;
        j += 1;
      }
      this.aOv = (paramInt2 - k);
      return;
    }
    int m = this.aOv << 3;
    for (;;)
    {
      j = i;
      if (i >= k) {
        break;
      }
      long l = Pack.ᐡ(paramArrayOfByte, paramInt1 + i);
      this.aOu = (l << m | this.aOu >>> -m);
      kb();
      this.aOu = l;
      i += 8;
    }
    while (j < paramInt2)
    {
      this.aOu >>>= 8;
      this.aOu |= (paramArrayOfByte[(paramInt1 + j)] & 0xFF) << 56;
      i = this.aOv + 1;
      this.aOv = i;
      if (i == 8)
      {
        kb();
        this.aOv = 0;
      }
      j += 1;
    }
  }
  
  protected void ʕ(int paramInt)
  {
    long l4 = this.aOq;
    long l2 = this.aOr;
    long l3 = this.aOs;
    long l1 = this.aOt;
    int i = 0;
    while (i < paramInt)
    {
      l4 += l2;
      l3 += l1;
      l2 = rotateLeft(l2, 13);
      long l5 = rotateLeft(l1, 16);
      l1 = l2 ^ l4;
      l2 = l5 ^ l3;
      l4 = rotateLeft(l4, 32);
      l3 += l1;
      l4 += l2;
      l1 = rotateLeft(l1, 17);
      l5 = rotateLeft(l2, 21);
      l2 = l1 ^ l3;
      l1 = l5 ^ l4;
      l3 = rotateLeft(l3, 32);
      i += 1;
    }
    this.aOq = l4;
    this.aOr = l2;
    this.aOs = l3;
    this.aOt = l1;
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof KeyParameter)) {
      throw new IllegalArgumentException("'params' must be an instance of KeyParameter");
    }
    paramCipherParameters = ((KeyParameter)paramCipherParameters).getKey();
    if (paramCipherParameters.length != 16) {
      throw new IllegalArgumentException("'params' must be a 128-bit key");
    }
    this.aOo = Pack.ᐡ(paramCipherParameters, 0);
    this.aOp = Pack.ᐡ(paramCipherParameters, 8);
    reset();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.SipHash
 * JD-Core Version:    0.7.0.1
 */