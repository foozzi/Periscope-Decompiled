package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.crypto.params.AEADParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class GMac
  implements Mac
{
  private final GCMBlockCipher aNF;
  private final int aNG;
  
  public GMac(GCMBlockCipher paramGCMBlockCipher)
  {
    this.aNF = paramGCMBlockCipher;
    this.aNG = 128;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      paramInt = this.aNF.doFinal(paramArrayOfByte, paramInt);
      return paramInt;
    }
    catch (InvalidCipherTextException paramArrayOfByte)
    {
      throw new IllegalStateException(paramArrayOfByte.toString());
    }
  }
  
  public String iG()
  {
    return this.aNF.iH().iG() + "-GMAC";
  }
  
  public int iO()
  {
    return this.aNG / 8;
  }
  
  public void reset()
  {
    this.aNF.reset();
  }
  
  public void update(byte paramByte)
  {
    this.aNF.ʿ(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aNF.ᵔ(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof ParametersWithIV))
    {
      Object localObject = (ParametersWithIV)paramCipherParameters;
      paramCipherParameters = ((ParametersWithIV)localObject).getIV();
      localObject = (KeyParameter)((ParametersWithIV)localObject).lh();
      this.aNF.ˊ(true, new AEADParameters((KeyParameter)localObject, this.aNG, paramCipherParameters));
      return;
    }
    throw new IllegalArgumentException("GMAC requires ParametersWithIV");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.GMac
 * JD-Core Version:    0.7.0.1
 */