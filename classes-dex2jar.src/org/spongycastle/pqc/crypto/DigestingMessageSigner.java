package org.spongycastle.pqc.crypto;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;

public class DigestingMessageSigner
  implements Signer
{
  private boolean aSa;
  private final Digest ber;
  private final MessageSigner bes;
  
  public byte[] iP()
  {
    if (!this.aSa) {
      throw new IllegalStateException("RainbowDigestSigner not initialised for signature generation.");
    }
    byte[] arrayOfByte = new byte[this.ber.iJ()];
    this.ber.doFinal(arrayOfByte, 0);
    return this.bes.ᕑ(arrayOfByte);
  }
  
  public void reset()
  {
    this.ber.reset();
  }
  
  public void update(byte paramByte)
  {
    this.ber.update(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.ber.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public boolean verify(byte[] paramArrayOfByte)
  {
    if (this.aSa) {
      throw new IllegalStateException("RainbowDigestSigner not initialised for verification");
    }
    byte[] arrayOfByte = new byte[this.ber.iJ()];
    this.ber.doFinal(arrayOfByte, 0);
    return this.bes.ᴵ(arrayOfByte, paramArrayOfByte);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aSa = paramBoolean;
    AsymmetricKeyParameter localAsymmetricKeyParameter;
    if ((paramCipherParameters instanceof ParametersWithRandom)) {
      localAsymmetricKeyParameter = (AsymmetricKeyParameter)((ParametersWithRandom)paramCipherParameters).lh();
    } else {
      localAsymmetricKeyParameter = (AsymmetricKeyParameter)paramCipherParameters;
    }
    if ((paramBoolean) && (!localAsymmetricKeyParameter.isPrivate())) {
      throw new IllegalArgumentException("Signing Requires Private Key.");
    }
    if ((!paramBoolean) && (localAsymmetricKeyParameter.isPrivate())) {
      throw new IllegalArgumentException("Verification Requires Public Key.");
    }
    reset();
    this.bes.ˊ(paramBoolean, paramCipherParameters);
  }
  
  public boolean ᵔ(byte[] paramArrayOfByte)
  {
    return verify(paramArrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.DigestingMessageSigner
 * JD-Core Version:    0.7.0.1
 */