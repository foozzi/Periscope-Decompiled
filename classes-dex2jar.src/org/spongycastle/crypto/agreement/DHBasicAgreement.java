package org.spongycastle.crypto.agreement;

import java.math.BigInteger;
import org.spongycastle.crypto.BasicAgreement;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPrivateKeyParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;

public class DHBasicAgreement
  implements BasicAgreement
{
  private DHPrivateKeyParameters aFg;
  private DHParameters aFh;
  
  public int getFieldSize()
  {
    return (this.aFg.kA().getP().bitLength() + 7) / 8;
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof ParametersWithRandom)) {
      paramCipherParameters = (AsymmetricKeyParameter)((ParametersWithRandom)paramCipherParameters).lh();
    } else {
      paramCipherParameters = (AsymmetricKeyParameter)paramCipherParameters;
    }
    if (!(paramCipherParameters instanceof DHPrivateKeyParameters)) {
      throw new IllegalArgumentException("DHEngine expects DHPrivateKeyParameters");
    }
    this.aFg = ((DHPrivateKeyParameters)paramCipherParameters);
    this.aFh = this.aFg.kA();
  }
  
  public BigInteger ˋ(CipherParameters paramCipherParameters)
  {
    paramCipherParameters = (DHPublicKeyParameters)paramCipherParameters;
    if (!paramCipherParameters.kA().equals(this.aFh)) {
      throw new IllegalArgumentException("Diffie-Hellman public key has wrong parameters.");
    }
    return paramCipherParameters.getY().modPow(this.aFg.getX(), this.aFh.getP());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.agreement.DHBasicAgreement
 * JD-Core Version:    0.7.0.1
 */