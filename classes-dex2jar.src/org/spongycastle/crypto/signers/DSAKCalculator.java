package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;

public abstract interface DSAKCalculator
{
  public abstract boolean lA();
  
  public abstract BigInteger lB();
  
  public abstract void ˊ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, byte[] paramArrayOfByte);
  
  public abstract void ˎ(BigInteger paramBigInteger, SecureRandom paramSecureRandom);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.DSAKCalculator
 * JD-Core Version:    0.7.0.1
 */