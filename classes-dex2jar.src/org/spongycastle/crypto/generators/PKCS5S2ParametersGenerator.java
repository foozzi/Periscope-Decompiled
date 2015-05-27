package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class PKCS5S2ParametersGenerator
  extends PBEParametersGenerator
{
  private byte[] aGQ;
  private Mac aNl;
  
  public PKCS5S2ParametersGenerator()
  {
    this(new SHA1Digest());
  }
  
  public PKCS5S2ParametersGenerator(Digest paramDigest)
  {
    this.aNl = new HMac(paramDigest);
    this.aGQ = new byte[this.aNl.iO()];
  }
  
  private byte[] ʔ(int paramInt)
  {
    int m = this.aNl.iO();
    int n = (paramInt + m - 1) / m;
    byte[] arrayOfByte1 = new byte[4];
    byte[] arrayOfByte2 = new byte[n * m];
    int j = 0;
    KeyParameter localKeyParameter = new KeyParameter(this.aFe);
    this.aNl.ˊ(localKeyParameter);
    paramInt = 1;
    while (paramInt <= n)
    {
      int k = 3;
      for (;;)
      {
        int i = (byte)(arrayOfByte1[k] + 1);
        arrayOfByte1[k] = i;
        if (i != 0) {
          break;
        }
        k -= 1;
      }
      ˊ(this.aqg, this.aFf, arrayOfByte1, arrayOfByte2, j);
      j += m;
      paramInt += 1;
    }
    return arrayOfByte2;
  }
  
  private void ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, int paramInt2)
  {
    if (paramInt1 == 0) {
      throw new IllegalArgumentException("iteration count must be at least 1.");
    }
    if (paramArrayOfByte1 != null) {
      this.aNl.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
    }
    this.aNl.update(paramArrayOfByte2, 0, paramArrayOfByte2.length);
    this.aNl.doFinal(this.aGQ, 0);
    System.arraycopy(this.aGQ, 0, paramArrayOfByte3, paramInt2, this.aGQ.length);
    int i = 1;
    while (i < paramInt1)
    {
      this.aNl.update(this.aGQ, 0, this.aGQ.length);
      this.aNl.doFinal(this.aGQ, 0);
      int j = 0;
      while (j != this.aGQ.length)
      {
        int k = paramInt2 + j;
        paramArrayOfByte3[k] = ((byte)(paramArrayOfByte3[k] ^ this.aGQ[j]));
        j += 1;
      }
      i += 1;
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
 * Qualified Name:     org.spongycastle.crypto.generators.PKCS5S2ParametersGenerator
 * JD-Core Version:    0.7.0.1
 */