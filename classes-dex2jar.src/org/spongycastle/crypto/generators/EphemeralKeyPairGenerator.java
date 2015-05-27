package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.EphemeralKeyPair;
import org.spongycastle.crypto.KeyEncoder;

public class EphemeralKeyPairGenerator
{
  private AsymmetricCipherKeyPairGenerator aMO;
  private KeyEncoder aMP;
  
  public EphemeralKeyPairGenerator(AsymmetricCipherKeyPairGenerator paramAsymmetricCipherKeyPairGenerator, KeyEncoder paramKeyEncoder)
  {
    this.aMO = paramAsymmetricCipherKeyPairGenerator;
    this.aMP = paramKeyEncoder;
  }
  
  public EphemeralKeyPair jU()
  {
    return new EphemeralKeyPair(this.aMO.iF(), this.aMP);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.EphemeralKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */