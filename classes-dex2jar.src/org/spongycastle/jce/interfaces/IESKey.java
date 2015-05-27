package org.spongycastle.jce.interfaces;

import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;

public abstract interface IESKey
  extends Key
{
  public abstract PrivateKey getPrivate();
  
  public abstract PublicKey getPublic();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.interfaces.IESKey
 * JD-Core Version:    0.7.0.1
 */