package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.crypto.params.SkeinParameters;
import org.spongycastle.util.Memoable;

public class SkeinDigest
  implements ExtendedDigest, Memoable
{
  private SkeinEngine aHq;
  
  public SkeinDigest(int paramInt1, int paramInt2)
  {
    this.aHq = new SkeinEngine(paramInt1, paramInt2);
    ˊ(null);
  }
  
  public SkeinDigest(SkeinDigest paramSkeinDigest)
  {
    this.aHq = new SkeinEngine(paramSkeinDigest.aHq);
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    return this.aHq.doFinal(paramArrayOfByte, paramInt);
  }
  
  public String iG()
  {
    return "Skein-" + this.aHq.getBlockSize() * 8 + "-" + this.aHq.jb() * 8;
  }
  
  public int iJ()
  {
    return this.aHq.jb();
  }
  
  public int iM()
  {
    return this.aHq.getBlockSize();
  }
  
  public Memoable iU()
  {
    return new SkeinDigest(this);
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
  
  public void ˊ(SkeinParameters paramSkeinParameters)
  {
    this.aHq.ˊ(paramSkeinParameters);
  }
  
  public void ˊ(Memoable paramMemoable)
  {
    paramMemoable = (SkeinDigest)paramMemoable;
    this.aHq.ˊ(paramMemoable.aHq);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.SkeinDigest
 * JD-Core Version:    0.7.0.1
 */