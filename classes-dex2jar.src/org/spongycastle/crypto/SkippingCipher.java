package org.spongycastle.crypto;

public abstract interface SkippingCipher
{
  public abstract long getPosition();
  
  public abstract long skip(long paramLong);
  
  public abstract long ו(long paramLong);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.SkippingCipher
 * JD-Core Version:    0.7.0.1
 */