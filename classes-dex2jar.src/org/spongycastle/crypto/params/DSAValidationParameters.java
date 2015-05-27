package org.spongycastle.crypto.params;

import org.spongycastle.util.Arrays;

public class DSAValidationParameters
{
  private byte[] aDx;
  private int aML;
  private int aaN;
  
  public DSAValidationParameters(byte[] paramArrayOfByte, int paramInt)
  {
    this(paramArrayOfByte, paramInt, -1);
  }
  
  public DSAValidationParameters(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aDx = paramArrayOfByte;
    this.aaN = paramInt1;
    this.aML = paramInt2;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DSAValidationParameters)) {
      return false;
    }
    paramObject = (DSAValidationParameters)paramObject;
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
 * Qualified Name:     org.spongycastle.crypto.params.DSAValidationParameters
 * JD-Core Version:    0.7.0.1
 */