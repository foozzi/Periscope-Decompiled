package org.spongycastle.jce.interfaces;

import java.security.PublicKey;
import org.spongycastle.math.ec.ECPoint;

public abstract interface ECPublicKey
  extends ECKey, PublicKey
{
  public abstract ECPoint kH();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.interfaces.ECPublicKey
 * JD-Core Version:    0.7.0.1
 */