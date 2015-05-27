package org.spongycastle.jce.provider;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

class OldPKCS12ParametersGenerator
  extends PBEParametersGenerator
{
  private Digest aFH;
  private int aNj;
  private int aNk;
  
  private void ˊ(byte[] paramArrayOfByte1, int paramInt, byte[] paramArrayOfByte2)
  {
    int i = (paramArrayOfByte2[(paramArrayOfByte2.length - 1)] & 0xFF) + (paramArrayOfByte1[(paramArrayOfByte2.length + paramInt - 1)] & 0xFF) + 1;
    paramArrayOfByte1[(paramArrayOfByte2.length + paramInt - 1)] = ((byte)i);
    int j = i >>> 8;
    i = paramArrayOfByte2.length - 2;
    while (i >= 0)
    {
      j += (paramArrayOfByte2[i] & 0xFF) + (paramArrayOfByte1[(paramInt + i)] & 0xFF);
      paramArrayOfByte1[(paramInt + i)] = ((byte)j);
      j >>>= 8;
      i -= 1;
    }
  }
  
  private byte[] ᐢ(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte3 = new byte[this.aNk];
    byte[] arrayOfByte4 = new byte[paramInt2];
    int i = 0;
    while (i != arrayOfByte3.length)
    {
      arrayOfByte3[i] = ((byte)paramInt1);
      i += 1;
    }
    if ((this.aqg != null) && (this.aqg.length != 0))
    {
      arrayOfByte1 = new byte[this.aNk * ((this.aqg.length + this.aNk - 1) / this.aNk)];
      paramInt1 = 0;
      while (paramInt1 != arrayOfByte1.length)
      {
        arrayOfByte1[paramInt1] = this.aqg[(paramInt1 % this.aqg.length)];
        paramInt1 += 1;
      }
    }
    else
    {
      arrayOfByte1 = new byte[0];
    }
    byte[] arrayOfByte2;
    if ((this.aFe != null) && (this.aFe.length != 0))
    {
      arrayOfByte2 = new byte[this.aNk * ((this.aFe.length + this.aNk - 1) / this.aNk)];
      paramInt1 = 0;
      while (paramInt1 != arrayOfByte2.length)
      {
        arrayOfByte2[paramInt1] = this.aFe[(paramInt1 % this.aFe.length)];
        paramInt1 += 1;
      }
    }
    else
    {
      arrayOfByte2 = new byte[0];
    }
    byte[] arrayOfByte5 = new byte[arrayOfByte1.length + arrayOfByte2.length];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte5, 0, arrayOfByte1.length);
    System.arraycopy(arrayOfByte2, 0, arrayOfByte5, arrayOfByte1.length, arrayOfByte2.length);
    byte[] arrayOfByte1 = new byte[this.aNk];
    i = (this.aNj + paramInt2 - 1) / this.aNj;
    paramInt1 = 1;
    while (paramInt1 <= i)
    {
      arrayOfByte2 = new byte[this.aNj];
      this.aFH.update(arrayOfByte3, 0, arrayOfByte3.length);
      this.aFH.update(arrayOfByte5, 0, arrayOfByte5.length);
      this.aFH.doFinal(arrayOfByte2, 0);
      paramInt2 = 1;
      while (paramInt2 != this.aFf)
      {
        this.aFH.update(arrayOfByte2, 0, arrayOfByte2.length);
        this.aFH.doFinal(arrayOfByte2, 0);
        paramInt2 += 1;
      }
      paramInt2 = 0;
      while (paramInt2 != arrayOfByte1.length)
      {
        arrayOfByte1[paramInt1] = arrayOfByte2[(paramInt2 % arrayOfByte2.length)];
        paramInt2 += 1;
      }
      paramInt2 = 0;
      while (paramInt2 != arrayOfByte5.length / this.aNk)
      {
        ˊ(arrayOfByte5, this.aNk * paramInt2, arrayOfByte1);
        paramInt2 += 1;
      }
      if (paramInt1 == i) {
        System.arraycopy(arrayOfByte2, 0, arrayOfByte4, (paramInt1 - 1) * this.aNj, arrayOfByte4.length - (paramInt1 - 1) * this.aNj);
      } else {
        System.arraycopy(arrayOfByte2, 0, arrayOfByte4, (paramInt1 - 1) * this.aNj, arrayOfByte2.length);
      }
      paramInt1 += 1;
    }
    return arrayOfByte4;
  }
  
  public CipherParameters ر(int paramInt)
  {
    paramInt /= 8;
    return new KeyParameter(ᐢ(1, paramInt), 0, paramInt);
  }
  
  public CipherParameters ڎ(int paramInt)
  {
    paramInt /= 8;
    return new KeyParameter(ᐢ(3, paramInt), 0, paramInt);
  }
  
  public CipherParameters ᵙ(int paramInt1, int paramInt2)
  {
    paramInt1 /= 8;
    paramInt2 /= 8;
    byte[] arrayOfByte1 = ᐢ(1, paramInt1);
    byte[] arrayOfByte2 = ᐢ(2, paramInt2);
    return new ParametersWithIV(new KeyParameter(arrayOfByte1, 0, paramInt1), arrayOfByte2, 0, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.OldPKCS12ParametersGenerator
 * JD-Core Version:    0.7.0.1
 */