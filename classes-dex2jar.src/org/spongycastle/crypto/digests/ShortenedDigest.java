package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;

public class ShortenedDigest
  implements ExtendedDigest
{
  private ExtendedDigest aGF;
  private int length;
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[this.aGF.iJ()];
    this.aGF.doFinal(arrayOfByte, 0);
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt, this.length);
    return this.length;
  }
  
  public String iG()
  {
    return this.aGF.iG() + "(" + this.length * 8 + ")";
  }
  
  public int iJ()
  {
    return this.length;
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
 * Qualified Name:     org.spongycastle.crypto.digests.ShortenedDigest
 * JD-Core Version:    0.7.0.1
 */