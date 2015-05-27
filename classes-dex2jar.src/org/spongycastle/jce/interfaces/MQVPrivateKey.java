package org.spongycastle.jce.interfaces;

import java.security.PrivateKey;
import java.security.PublicKey;

public abstract interface MQVPrivateKey
  extends PrivateKey
{
  public abstract PrivateKey oP();
  
  public abstract PrivateKey oQ();
  
  public abstract PublicKey oR();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.interfaces.MQVPrivateKey
 * JD-Core Version:    0.7.0.1
 */