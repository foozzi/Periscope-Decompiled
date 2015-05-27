package org.spongycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PrivateKey;

public abstract interface ElGamalPrivateKey
  extends ElGamalKey, PrivateKey
{
  public abstract BigInteger getX();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.interfaces.ElGamalPrivateKey
 * JD-Core Version:    0.7.0.1
 */