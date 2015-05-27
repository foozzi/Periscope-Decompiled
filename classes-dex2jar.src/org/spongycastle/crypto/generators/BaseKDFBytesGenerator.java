package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.DigestDerivationFunction;
import org.spongycastle.crypto.params.ISO18033KDFParameters;
import org.spongycastle.crypto.params.KDFParameters;
import org.spongycastle.util.Pack;

public class BaseKDFBytesGenerator
  implements DigestDerivationFunction
{
  private Digest aFH;
  private int aMB;
  private byte[] aMC;
  private byte[] iv;
  
  protected BaseKDFBytesGenerator(int paramInt, Digest paramDigest)
  {
    this.aMB = paramInt;
    this.aFH = paramDigest;
  }
  
  public void ˊ(DerivationParameters paramDerivationParameters)
  {
    if ((paramDerivationParameters instanceof KDFParameters))
    {
      paramDerivationParameters = (KDFParameters)paramDerivationParameters;
      this.aMC = paramDerivationParameters.kX();
      this.iv = paramDerivationParameters.getIV();
      return;
    }
    if ((paramDerivationParameters instanceof ISO18033KDFParameters))
    {
      this.aMC = ((ISO18033KDFParameters)paramDerivationParameters).getSeed();
      this.iv = null;
      return;
    }
    throw new IllegalArgumentException("KDF parameters required for KDF2Generator");
  }
  
  public int ᐧ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte.length - paramInt2 < paramInt1) {
      throw new DataLengthException("output buffer too small");
    }
    long l = paramInt2;
    int i1 = this.aFH.iJ();
    if (l > 8589934591L) {
      throw new IllegalArgumentException("Output length too large");
    }
    int i2 = (int)((i1 + l - 1L) / i1);
    byte[] arrayOfByte1 = new byte[this.aFH.iJ()];
    byte[] arrayOfByte2 = new byte[4];
    Pack.ʾ(this.aMB, arrayOfByte2, 0);
    int k = this.aMB & 0xFFFFFF00;
    int n = 0;
    int j = paramInt2;
    int m = paramInt1;
    paramInt1 = n;
    paramInt2 = k;
    while (paramInt1 < i2)
    {
      this.aFH.update(this.aMC, 0, this.aMC.length);
      this.aFH.update(arrayOfByte2, 0, arrayOfByte2.length);
      if (this.iv != null) {
        this.aFH.update(this.iv, 0, this.iv.length);
      }
      this.aFH.doFinal(arrayOfByte1, 0);
      if (j > i1)
      {
        System.arraycopy(arrayOfByte1, 0, paramArrayOfByte, m, i1);
        k = m + i1;
        m = j - i1;
        j = k;
        k = m;
      }
      else
      {
        System.arraycopy(arrayOfByte1, 0, paramArrayOfByte, m, j);
        k = j;
        j = m;
      }
      int i = (byte)(arrayOfByte2[3] + 1);
      arrayOfByte2[3] = i;
      m = paramInt2;
      if (i == 0)
      {
        m = paramInt2 + 256;
        Pack.ʾ(m, arrayOfByte2, 0);
      }
      paramInt1 += 1;
      paramInt2 = m;
      m = j;
      j = k;
    }
    this.aFH.reset();
    return (int)l;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.BaseKDFBytesGenerator
 * JD-Core Version:    0.7.0.1
 */