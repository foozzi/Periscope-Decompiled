package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class PKCS5S1ParametersGenerator
  extends PBEParametersGenerator
{
  private Digest aFH;
  
  public PKCS5S1ParametersGenerator(Digest paramDigest)
  {
    this.aFH = paramDigest;
  }
  
  private byte[] jX()
  {
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.update(this.aFe, 0, this.aFe.length);
    this.aFH.update(this.aqg, 0, this.aqg.length);
    this.aFH.doFinal(arrayOfByte, 0);
    int i = 1;
    while (i < this.aFf)
    {
      this.aFH.update(arrayOfByte, 0, arrayOfByte.length);
      this.aFH.doFinal(arrayOfByte, 0);
      i += 1;
    }
    return arrayOfByte;
  }
  
  public CipherParameters ر(int paramInt)
  {
    paramInt /= 8;
    if (paramInt > this.aFH.iJ()) {
      throw new IllegalArgumentException("Can't generate a derived key " + paramInt + " bytes long.");
    }
    return new KeyParameter(jX(), 0, paramInt);
  }
  
  public CipherParameters ڎ(int paramInt)
  {
    return ر(paramInt);
  }
  
  public CipherParameters ᵙ(int paramInt1, int paramInt2)
  {
    paramInt1 /= 8;
    paramInt2 /= 8;
    if (paramInt1 + paramInt2 > this.aFH.iJ()) {
      throw new IllegalArgumentException("Can't generate a derived key " + (paramInt1 + paramInt2) + " bytes long.");
    }
    byte[] arrayOfByte = jX();
    return new ParametersWithIV(new KeyParameter(arrayOfByte, 0, paramInt1), arrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.PKCS5S1ParametersGenerator
 * JD-Core Version:    0.7.0.1
 */