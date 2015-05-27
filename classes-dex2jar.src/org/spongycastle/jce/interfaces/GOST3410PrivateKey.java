package org.spongycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PrivateKey;

public abstract interface GOST3410PrivateKey
  extends GOST3410Key, PrivateKey
{
  public abstract BigInteger getX();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.interfaces.GOST3410PrivateKey
 * JD-Core Version:    0.7.0.1
 */