package org.spongycastle.crypto.signers;

import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.Arrays;

public class GenericSigner
  implements Signer
{
  private final Digest aFH;
  private final AsymmetricBlockCipher aIu;
  private boolean aSa;
  
  public GenericSigner(AsymmetricBlockCipher paramAsymmetricBlockCipher, Digest paramDigest)
  {
    this.aIu = paramAsymmetricBlockCipher;
    this.aFH = paramDigest;
  }
  
  public byte[] iP()
  {
    if (!this.aSa) {
      throw new IllegalStateException("GenericSigner not initialised for signature generation.");
    }
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte, 0);
    return this.aIu.ˑ(arrayOfByte, 0, arrayOfByte.length);
  }
  
  public void reset()
  {
    this.aFH.reset();
  }
  
  public void update(byte paramByte)
  {
    this.aFH.update(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
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
      throw new IllegalArgumentException("signing requires private key");
    }
    if ((!paramBoolean) && (localAsymmetricKeyParameter.isPrivate())) {
      throw new IllegalArgumentException("verification requires public key");
    }
    reset();
    this.aIu.ˊ(paramBoolean, paramCipherParameters);
  }
  
  public boolean ᵔ(byte[] paramArrayOfByte)
  {
    if (this.aSa) {
      throw new IllegalStateException("GenericSigner not initialised for verification");
    }
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte, 0);
    try
    {
      boolean bool = Arrays.ｰ(this.aIu.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length), arrayOfByte);
      return bool;
    }
    catch (Exception paramArrayOfByte) {}
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.GenericSigner
 * JD-Core Version:    0.7.0.1
 */