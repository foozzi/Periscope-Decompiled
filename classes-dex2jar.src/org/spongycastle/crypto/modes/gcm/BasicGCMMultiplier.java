package org.spongycastle.crypto.modes.gcm;

import org.spongycastle.util.Arrays;

public class BasicGCMMultiplier
  implements GCMMultiplier
{
  private byte[] aFR;
  
  public void init(byte[] paramArrayOfByte)
  {
    this.aFR = Arrays.І(paramArrayOfByte);
  }
  
  public void ᵀ(byte[] paramArrayOfByte)
  {
    GCMUtil.ι(paramArrayOfByte, this.aFR);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.gcm.BasicGCMMultiplier
 * JD-Core Version:    0.7.0.1
 */