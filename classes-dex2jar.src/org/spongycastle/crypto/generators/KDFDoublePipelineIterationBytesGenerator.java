package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.MacDerivationFunction;
import org.spongycastle.crypto.params.KDFDoublePipelineIterationParameters;
import org.spongycastle.crypto.params.KeyParameter;

public class KDFDoublePipelineIterationBytesGenerator
  implements MacDerivationFunction
{
  private static final BigInteger aKc = BigInteger.valueOf(2L);
  private static final BigInteger aMW = BigInteger.valueOf(2147483647L);
  private byte[] aGa;
  private int aMV;
  private final Mac aMX;
  private final int aMY;
  private int aNb;
  private byte[] aNc;
  private byte[] aNd;
  private byte[] aNe;
  private boolean aNf;
  
  private void jW()
  {
    if (this.aMV == 0)
    {
      this.aMX.update(this.aNe, 0, this.aNe.length);
      this.aMX.doFinal(this.aGa, 0);
    }
    else
    {
      this.aMX.update(this.aGa, 0, this.aGa.length);
      this.aMX.doFinal(this.aGa, 0);
    }
    this.aMX.update(this.aGa, 0, this.aGa.length);
    if (this.aNf)
    {
      int i = this.aMV / this.aMY + 1;
      switch (this.aNc.length)
      {
      default: 
        break;
      case 4: 
        this.aNc[0] = ((byte)(i >>> 24));
      case 3: 
        this.aNc[(this.aNc.length - 3)] = ((byte)(i >>> 16));
      case 2: 
        this.aNc[(this.aNc.length - 2)] = ((byte)(i >>> 8));
      case 1: 
        this.aNc[(this.aNc.length - 1)] = ((byte)i);
        break;
      }
      throw new IllegalStateException("Unsupported size of counter i");
      this.aMX.update(this.aNc, 0, this.aNc.length);
    }
    this.aMX.update(this.aNe, 0, this.aNe.length);
    this.aMX.doFinal(this.aNd, 0);
  }
  
  public void ˊ(DerivationParameters paramDerivationParameters)
  {
    if (!(paramDerivationParameters instanceof KDFDoublePipelineIterationParameters)) {
      throw new IllegalArgumentException("Wrong type of arguments given");
    }
    paramDerivationParameters = (KDFDoublePipelineIterationParameters)paramDerivationParameters;
    this.aMX.ˊ(new KeyParameter(paramDerivationParameters.kR()));
    this.aNe = paramDerivationParameters.kW();
    int i = paramDerivationParameters.kU();
    this.aNc = new byte[i / 8];
    if (paramDerivationParameters.kV())
    {
      BigInteger localBigInteger = aKc.pow(i).multiply(BigInteger.valueOf(this.aMY));
      if (localBigInteger.compareTo(aMW) == 1) {
        i = 2147483647;
      } else {
        i = localBigInteger.intValue();
      }
      this.aNb = i;
    }
    else
    {
      this.aNb = 2147483647;
    }
    this.aNf = paramDerivationParameters.kV();
    this.aMV = 0;
  }
  
  public int ᐧ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = this.aMV + paramInt2;
    if ((i < 0) || (i >= this.aNb)) {
      throw new DataLengthException("Current KDFCTR may only be used for " + this.aNb + " bytes");
    }
    if (this.aMV % this.aMY == 0) {
      jW();
    }
    i = this.aMV;
    int k = this.aMY;
    int j = Math.min(this.aMY - this.aMV % this.aMY, paramInt2);
    System.arraycopy(this.aNd, i % k, paramArrayOfByte, paramInt1, j);
    this.aMV += j;
    i = paramInt2 - j;
    paramInt1 += j;
    while (i > 0)
    {
      jW();
      j = Math.min(this.aMY, i);
      System.arraycopy(this.aNd, 0, paramArrayOfByte, paramInt1, j);
      this.aMV += j;
      i -= j;
      paramInt1 += j;
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.KDFDoublePipelineIterationBytesGenerator
 * JD-Core Version:    0.7.0.1
 */