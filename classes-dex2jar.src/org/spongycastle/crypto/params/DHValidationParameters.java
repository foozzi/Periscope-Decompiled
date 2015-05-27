package org.spongycastle.crypto.params;

import org.spongycastle.util.Arrays;

public class DHValidationParameters
{
  private byte[] aDx;
  private int aaN;
  
  public DHValidationParameters(byte[] paramArrayOfByte, int paramInt)
  {
    this.aDx = paramArrayOfByte;
    this.aaN = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DHValidationParameters)) {
      return false;
    }
    paramObject = (DHValidationParameters)paramObject;
    if (paramObject.aaN != this.aaN) {
      return false;
    }
    return Arrays.ﹺ(this.aDx, paramObject.aDx);
  }
  
  public int hashCode()
  {
    return this.aaN ^ Arrays.hashCode(this.aDx);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DHValidationParameters
 * JD-Core Version:    0.7.0.1
 */