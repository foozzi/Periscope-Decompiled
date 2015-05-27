package org.spongycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PublicKey;

public abstract interface ElGamalPublicKey
  extends ElGamalKey, PublicKey
{
  public abstract BigInteger getY();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.interfaces.ElGamalPublicKey
 * JD-Core Version:    0.7.0.1
 */