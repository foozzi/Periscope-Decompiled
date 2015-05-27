package org.spongycastle.crypto;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;

public class AsymmetricCipherKeyPair
{
  private AsymmetricKeyParameter aES;
  private AsymmetricKeyParameter aET;
  
  public AsymmetricCipherKeyPair(AsymmetricKeyParameter paramAsymmetricKeyParameter1, AsymmetricKeyParameter paramAsymmetricKeyParameter2)
  {
    this.aES = paramAsymmetricKeyParameter1;
    this.aET = paramAsymmetricKeyParameter2;
  }
  
  public AsymmetricKeyParameter iD()
  {
    return this.aES;
  }
  
  public AsymmetricKeyParameter iE()
  {
    return this.aET;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.AsymmetricCipherKeyPair
 * JD-Core Version:    0.7.0.1
 */