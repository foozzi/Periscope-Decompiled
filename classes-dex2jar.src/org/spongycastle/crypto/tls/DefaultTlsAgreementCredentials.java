package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.BasicAgreement;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.util.BigIntegers;

public class DefaultTlsAgreementCredentials
  extends AbstractTlsAgreementCredentials
{
  protected Certificate aTD;
  protected AsymmetricKeyParameter aTE;
  protected BasicAgreement aTF;
  protected boolean aTG;
  
  public Certificate lX()
  {
    return this.aTD;
  }
  
  public byte[] ˋ(AsymmetricKeyParameter paramAsymmetricKeyParameter)
  {
    this.aTF.ˊ(this.aTE);
    paramAsymmetricKeyParameter = this.aTF.ˋ(paramAsymmetricKeyParameter);
    if (this.aTG) {
      return BigIntegers.ᵎ(paramAsymmetricKeyParameter);
    }
    return BigIntegers.ʻ(this.aTF.getFieldSize(), paramAsymmetricKeyParameter);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.DefaultTlsAgreementCredentials
 * JD-Core Version:    0.7.0.1
 */