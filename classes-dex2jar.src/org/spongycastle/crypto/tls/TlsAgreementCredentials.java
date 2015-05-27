package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;

public abstract interface TlsAgreementCredentials
  extends TlsCredentials
{
  public abstract byte[] ˋ(AsymmetricKeyParameter paramAsymmetricKeyParameter);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsAgreementCredentials
 * JD-Core Version:    0.7.0.1
 */