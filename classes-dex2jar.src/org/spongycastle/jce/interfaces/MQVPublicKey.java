package org.spongycastle.jce.interfaces;

import java.security.PublicKey;

public abstract interface MQVPublicKey
  extends PublicKey
{
  public abstract PublicKey oS();
  
  public abstract PublicKey oT();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.interfaces.MQVPublicKey
 * JD-Core Version:    0.7.0.1
 */