package org.spongycastle.jce.provider;

import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.params.KDFParameters;

public class BrokenKDF2BytesGenerator
  implements DerivationFunction
{
  private Digest aFH;
  private byte[] aMC;
  private byte[] iv;
  
  public void ˊ(DerivationParameters paramDerivationParameters)
  {
    if (!(paramDerivationParameters instanceof KDFParameters)) {
      throw new IllegalArgumentException("KDF parameters required for KDF2Generator");
    }
    paramDerivationParameters = (KDFParameters)paramDerivationParameters;
    this.aMC = paramDerivationParameters.kX();
    this.iv = paramDerivationParameters.getIV();
  }
  
  public int ᐧ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte.length - paramInt2 < paramInt1) {
      throw new DataLengthException("output buffer too small");
    }
    long l = paramInt2 * 8;
    if (l > this.aFH.iJ() * 8 * 29L) {
      new IllegalArgumentException("Output length to large");
    }
    int k = (int)(l / this.aFH.iJ());
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    int j = 1;
    int i = paramInt1;
    paramInt1 = j;
    while (paramInt1 <= k)
    {
      this.aFH.update(this.aMC, 0, this.aMC.length);
      this.aFH.update((byte)(paramInt1 & 0xFF));
      this.aFH.update((byte)(paramInt1 >> 8 & 0xFF));
      this.aFH.update((byte)(paramInt1 >> 16 & 0xFF));
      this.aFH.update((byte)(paramInt1 >> 24 & 0xFF));
      this.aFH.update(this.iv, 0, this.iv.length);
      this.aFH.doFinal(arrayOfByte, 0);
      if (paramInt2 - i > arrayOfByte.length)
      {
        System.arraycopy(arrayOfByte, 0, paramArrayOfByte, i, arrayOfByte.length);
        i += arrayOfByte.length;
      }
      else
      {
        System.arraycopy(arrayOfByte, 0, paramArrayOfByte, i, paramInt2 - i);
      }
      paramInt1 += 1;
    }
    this.aFH.reset();
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.BrokenKDF2BytesGenerator
 * JD-Core Version:    0.7.0.1
 */