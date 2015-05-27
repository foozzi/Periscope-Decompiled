package org.spongycastle.jcajce.provider.digest;

import java.security.MessageDigest;
import org.spongycastle.crypto.Digest;

public class BCMessageDigest
  extends MessageDigest
{
  protected Digest aFH;
  
  protected BCMessageDigest(Digest paramDigest)
  {
    super(paramDigest.iG());
    this.aFH = paramDigest;
  }
  
  public byte[] engineDigest()
  {
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte, 0);
    return arrayOfByte;
  }
  
  public void engineReset()
  {
    this.aFH.reset();
  }
  
  public void engineUpdate(byte paramByte)
  {
    this.aFH.update(paramByte);
  }
  
  public void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.digest.BCMessageDigest
 * JD-Core Version:    0.7.0.1
 */