package org.spongycastle.jcajce.provider.asymmetric.util;

import java.math.BigInteger;

public abstract interface DSAEncoder
{
  public abstract byte[] ˎ(BigInteger paramBigInteger1, BigInteger paramBigInteger2);
  
  public abstract BigInteger[] ᔉ(byte[] paramArrayOfByte);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.util.DSAEncoder
 * JD-Core Version:    0.7.0.1
 */