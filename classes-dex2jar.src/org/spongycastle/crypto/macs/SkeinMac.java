package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.digests.SkeinEngine;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.SkeinParameters;
import org.spongycastle.crypto.params.SkeinParameters.Builder;

public class SkeinMac
  implements Mac
{
  private SkeinEngine aHq;
  
  public SkeinMac(int paramInt1, int paramInt2)
  {
    this.aHq = new SkeinEngine(paramInt1, paramInt2);
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    return this.aHq.doFinal(paramArrayOfByte, paramInt);
  }
  
  public String iG()
  {
    return "Skein-MAC-" + this.aHq.getBlockSize() * 8 + "-" + this.aHq.jb() * 8;
  }
  
  public int iO()
  {
    return this.aHq.jb();
  }
  
  public void reset()
  {
    this.aHq.reset();
  }
  
  public void update(byte paramByte)
  {
    this.aHq.update(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aHq.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof SkeinParameters)) {
      paramCipherParameters = (SkeinParameters)paramCipherParameters;
    } else if ((paramCipherParameters instanceof KeyParameter)) {
      paramCipherParameters = new SkeinParameters.Builder().ǃ(((KeyParameter)paramCipherParameters).getKey()).lp();
    } else {
      throw new IllegalArgumentException("Invalid parameter passed to Skein MAC init - " + paramCipherParameters.getClass().getName());
    }
    if (paramCipherParameters.getKey() == null) {
      throw new IllegalArgumentException("Skein MAC requires a key parameter.");
    }
    this.aHq.ˊ(paramCipherParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.SkeinMac
 * JD-Core Version:    0.7.0.1
 */