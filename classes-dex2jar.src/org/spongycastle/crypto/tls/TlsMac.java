package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.digests.LongDigest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Arrays;

public class TlsMac
{
  protected Mac aKx;
  protected TlsContext aSQ;
  protected byte[] aUr;
  protected int aVr;
  protected int aVs;
  protected int aVt;
  
  public TlsMac(TlsContext paramTlsContext, Digest paramDigest, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aSQ = paramTlsContext;
    paramArrayOfByte = new KeyParameter(paramArrayOfByte, paramInt1, paramInt2);
    this.aUr = Arrays.І(paramArrayOfByte.getKey());
    if ((paramDigest instanceof LongDigest))
    {
      this.aVr = 128;
      this.aVs = 16;
    }
    else
    {
      this.aVr = 64;
      this.aVs = 8;
    }
    if (TlsUtils.ˎ(paramTlsContext))
    {
      this.aKx = new SSL3Mac(paramDigest);
      if (paramDigest.iJ() == 20) {
        this.aVs = 4;
      }
    }
    else
    {
      this.aKx = new HMac(paramDigest);
    }
    this.aKx.ˊ(paramArrayOfByte);
    this.aVt = this.aKx.iO();
    if (paramTlsContext.lH().aUB) {
      this.aVt = Math.min(this.aVt, 10);
    }
  }
  
  public int getSize()
  {
    return this.aVt;
  }
  
  protected byte[] ˀ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length <= this.aVt) {
      return paramArrayOfByte;
    }
    return Arrays.copyOf(paramArrayOfByte, this.aVt);
  }
  
  public byte[] ˊ(long paramLong, short paramShort, byte[] paramArrayOfByte1, int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte1 = ˎ(paramLong, paramShort, paramArrayOfByte1, paramInt1, paramInt2);
    if (TlsUtils.ˎ(this.aSQ)) {
      paramInt1 = 11;
    } else {
      paramInt1 = 13;
    }
    paramInt1 = ᘄ(paramInt1 + paramInt3) - ᘄ(paramInt1 + paramInt2);
    for (;;)
    {
      paramInt1 -= 1;
      if (paramInt1 < 0) {
        break;
      }
      this.aKx.update(paramArrayOfByte2, 0, this.aVr);
    }
    this.aKx.update(paramArrayOfByte2[0]);
    this.aKx.reset();
    return paramArrayOfByte1;
  }
  
  public byte[] ˎ(long paramLong, short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ProtocolVersion localProtocolVersion = this.aSQ.lJ();
    boolean bool = localProtocolVersion.mp();
    int i;
    if (bool) {
      i = 11;
    } else {
      i = 13;
    }
    byte[] arrayOfByte = new byte[i];
    TlsUtils.ᐝ(paramLong, arrayOfByte, 0);
    TlsUtils.ˊ(paramShort, arrayOfByte, 8);
    if (!bool) {
      TlsUtils.ˊ(localProtocolVersion, arrayOfByte, 9);
    }
    TlsUtils.ʽ(paramInt2, arrayOfByte, arrayOfByte.length - 2);
    this.aKx.update(arrayOfByte, 0, arrayOfByte.length);
    this.aKx.update(paramArrayOfByte, paramInt1, paramInt2);
    paramArrayOfByte = new byte[this.aKx.iO()];
    this.aKx.doFinal(paramArrayOfByte, 0);
    return ˀ(paramArrayOfByte);
  }
  
  protected int ᘄ(int paramInt)
  {
    return (this.aVs + paramInt) / this.aVr;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsMac
 * JD-Core Version:    0.7.0.1
 */