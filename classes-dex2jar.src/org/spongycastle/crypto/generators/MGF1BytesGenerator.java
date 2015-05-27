package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.params.MGFParameters;

public class MGF1BytesGenerator
  implements DerivationFunction
{
  private byte[] aDx;
  private Digest aFH;
  private int aNg;
  
  private void ˏ(int paramInt, byte[] paramArrayOfByte)
  {
    paramArrayOfByte[0] = ((byte)(paramInt >>> 24));
    paramArrayOfByte[1] = ((byte)(paramInt >>> 16));
    paramArrayOfByte[2] = ((byte)(paramInt >>> 8));
    paramArrayOfByte[3] = ((byte)(paramInt >>> 0));
  }
  
  public void ˊ(DerivationParameters paramDerivationParameters)
  {
    if (!(paramDerivationParameters instanceof MGFParameters)) {
      throw new IllegalArgumentException("MGF parameters required for MGF1Generator");
    }
    this.aDx = ((MGFParameters)paramDerivationParameters).getSeed();
  }
  
  public int ᐧ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte.length - paramInt2 < paramInt1) {
      throw new DataLengthException("output buffer too small");
    }
    byte[] arrayOfByte1 = new byte[this.aNg];
    byte[] arrayOfByte2 = new byte[4];
    int j = 0;
    int i = 0;
    this.aFH.reset();
    if (paramInt2 > this.aNg) {
      do
      {
        ˏ(i, arrayOfByte2);
        this.aFH.update(this.aDx, 0, this.aDx.length);
        this.aFH.update(arrayOfByte2, 0, arrayOfByte2.length);
        this.aFH.doFinal(arrayOfByte1, 0);
        System.arraycopy(arrayOfByte1, 0, paramArrayOfByte, this.aNg * i + paramInt1, this.aNg);
        j = i + 1;
        i = j;
      } while (j < paramInt2 / this.aNg);
    }
    if (this.aNg * j < paramInt2)
    {
      ˏ(j, arrayOfByte2);
      this.aFH.update(this.aDx, 0, this.aDx.length);
      this.aFH.update(arrayOfByte2, 0, arrayOfByte2.length);
      this.aFH.doFinal(arrayOfByte1, 0);
      System.arraycopy(arrayOfByte1, 0, paramArrayOfByte, this.aNg * j + paramInt1, paramInt2 - this.aNg * j);
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.MGF1BytesGenerator
 * JD-Core Version:    0.7.0.1
 */