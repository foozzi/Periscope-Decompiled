package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.digests.MD5Digest;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class OpenSSLPBEParametersGenerator
  extends PBEParametersGenerator
{
  private Digest aFH = new MD5Digest();
  
  private byte[] ʔ(int paramInt)
  {
    byte[] arrayOfByte1 = new byte[this.aFH.iJ()];
    byte[] arrayOfByte2 = new byte[paramInt];
    int i = 0;
    for (;;)
    {
      this.aFH.update(this.aFe, 0, this.aFe.length);
      this.aFH.update(this.aqg, 0, this.aqg.length);
      this.aFH.doFinal(arrayOfByte1, 0);
      int j;
      if (paramInt > arrayOfByte1.length) {
        j = arrayOfByte1.length;
      } else {
        j = paramInt;
      }
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, i, j);
      i += j;
      paramInt -= j;
      if (paramInt == 0) {
        return arrayOfByte2;
      }
      this.aFH.reset();
      this.aFH.update(arrayOfByte1, 0, arrayOfByte1.length);
    }
  }
  
  public CipherParameters ر(int paramInt)
  {
    paramInt /= 8;
    return new KeyParameter(ʔ(paramInt), 0, paramInt);
  }
  
  public CipherParameters ڎ(int paramInt)
  {
    return ر(paramInt);
  }
  
  public CipherParameters ᵙ(int paramInt1, int paramInt2)
  {
    paramInt1 /= 8;
    paramInt2 /= 8;
    byte[] arrayOfByte = ʔ(paramInt1 + paramInt2);
    return new ParametersWithIV(new KeyParameter(arrayOfByte, 0, paramInt1), arrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.OpenSSLPBEParametersGenerator
 * JD-Core Version:    0.7.0.1
 */