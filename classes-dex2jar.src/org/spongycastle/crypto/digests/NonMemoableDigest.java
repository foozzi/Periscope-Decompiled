package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;

public class NonMemoableDigest
  implements ExtendedDigest
{
  private ExtendedDigest aGF;
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    return this.aGF.doFinal(paramArrayOfByte, paramInt);
  }
  
  public String iG()
  {
    return this.aGF.iG();
  }
  
  public int iJ()
  {
    return this.aGF.iJ();
  }
  
  public int iM()
  {
    return this.aGF.iM();
  }
  
  public void reset()
  {
    this.aGF.reset();
  }
  
  public void update(byte paramByte)
  {
    this.aGF.update(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aGF.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.NonMemoableDigest
 * JD-Core Version:    0.7.0.1
 */