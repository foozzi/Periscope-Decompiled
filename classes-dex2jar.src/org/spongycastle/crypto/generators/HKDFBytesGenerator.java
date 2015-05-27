package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.params.HKDFParameters;
import org.spongycastle.crypto.params.KeyParameter;

public class HKDFBytesGenerator
  implements DerivationFunction
{
  private HMac aMR;
  private int aMS;
  private byte[] aMT;
  private byte[] aMU;
  private int aMV;
  
  private void jV()
  {
    int i = this.aMV / this.aMS + 1;
    if (i >= 256) {
      throw new DataLengthException("HKDF cannot generate more than 255 blocks of HashLen size");
    }
    if (this.aMV != 0) {
      this.aMR.update(this.aMU, 0, this.aMS);
    }
    this.aMR.update(this.aMT, 0, this.aMT.length);
    this.aMR.update((byte)i);
    this.aMR.doFinal(this.aMU, 0);
  }
  
  private KeyParameter ʼ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.aMR.ˊ(new KeyParameter(paramArrayOfByte2));
    if (paramArrayOfByte1 == null) {
      this.aMR.ˊ(new KeyParameter(new byte[this.aMS]));
    } else {
      this.aMR.ˊ(new KeyParameter(paramArrayOfByte1));
    }
    this.aMR.update(paramArrayOfByte2, 0, paramArrayOfByte2.length);
    paramArrayOfByte1 = new byte[this.aMS];
    this.aMR.doFinal(paramArrayOfByte1, 0);
    return new KeyParameter(paramArrayOfByte1);
  }
  
  public void ˊ(DerivationParameters paramDerivationParameters)
  {
    if (!(paramDerivationParameters instanceof HKDFParameters)) {
      throw new IllegalArgumentException("HKDF parameters required for HKDFBytesGenerator");
    }
    paramDerivationParameters = (HKDFParameters)paramDerivationParameters;
    if (paramDerivationParameters.kL()) {
      this.aMR.ˊ(new KeyParameter(paramDerivationParameters.kK()));
    } else {
      this.aMR.ˊ(ʼ(paramDerivationParameters.getSalt(), paramDerivationParameters.kK()));
    }
    this.aMT = paramDerivationParameters.kM();
    this.aMV = 0;
    this.aMU = new byte[this.aMS];
  }
  
  public int ᐧ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aMV + paramInt2 > this.aMS * 255) {
      throw new DataLengthException("HKDF may only be used for 255 * HashLen bytes of output");
    }
    if (this.aMV % this.aMS == 0) {
      jV();
    }
    int i = this.aMV;
    int k = this.aMS;
    int j = Math.min(this.aMS - this.aMV % this.aMS, paramInt2);
    System.arraycopy(this.aMU, i % k, paramArrayOfByte, paramInt1, j);
    this.aMV += j;
    i = paramInt2 - j;
    paramInt1 += j;
    while (i > 0)
    {
      jV();
      j = Math.min(this.aMS, i);
      System.arraycopy(this.aMU, 0, paramArrayOfByte, paramInt1, j);
      this.aMV += j;
      i -= j;
      paramInt1 += j;
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.HKDFBytesGenerator
 * JD-Core Version:    0.7.0.1
 */