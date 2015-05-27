package org.spongycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PrivateKey;

public abstract interface ECPrivateKey
  extends ECKey, PrivateKey
{
  public abstract BigInteger kz();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.interfaces.ECPrivateKey
 * JD-Core Version:    0.7.0.1
 */