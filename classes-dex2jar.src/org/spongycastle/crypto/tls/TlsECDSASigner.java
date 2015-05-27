package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.signers.ECDSASigner;
import org.spongycastle.crypto.signers.HMacDSAKCalculator;

public class TlsECDSASigner
  extends TlsDSASigner
{
  protected short mS()
  {
    return 3;
  }
  
  protected DSA ʻ(short paramShort)
  {
    return new ECDSASigner(new HMacDSAKCalculator(TlsUtils.ͺ(paramShort)));
  }
  
  public boolean ˎ(AsymmetricKeyParameter paramAsymmetricKeyParameter)
  {
    return paramAsymmetricKeyParameter instanceof ECPublicKeyParameters;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsECDSASigner
 * JD-Core Version:    0.7.0.1
 */