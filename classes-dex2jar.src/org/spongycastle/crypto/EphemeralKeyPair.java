package org.spongycastle.crypto;

public class EphemeralKeyPair
{
  private AsymmetricCipherKeyPair aFc;
  private KeyEncoder aFd;
  
  public EphemeralKeyPair(AsymmetricCipherKeyPair paramAsymmetricCipherKeyPair, KeyEncoder paramKeyEncoder)
  {
    this.aFc = paramAsymmetricCipherKeyPair;
    this.aFd = paramKeyEncoder;
  }
  
  public AsymmetricCipherKeyPair iK()
  {
    return this.aFc;
  }
  
  public byte[] iL()
  {
    return this.aFd.ˊ(this.aFc.iD());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.EphemeralKeyPair
 * JD-Core Version:    0.7.0.1
 */