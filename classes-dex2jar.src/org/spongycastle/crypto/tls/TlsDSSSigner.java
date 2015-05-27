package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.crypto.signers.DSASigner;
import org.spongycastle.crypto.signers.HMacDSAKCalculator;

public class TlsDSSSigner
  extends TlsDSASigner
{
  protected short mS()
  {
    return 2;
  }
  
  protected DSA ʻ(short paramShort)
  {
    return new DSASigner(new HMacDSAKCalculator(TlsUtils.ͺ(paramShort)));
  }
  
  public boolean ˎ(AsymmetricKeyParameter paramAsymmetricKeyParameter)
  {
    return paramAsymmetricKeyParameter instanceof DSAPublicKeyParameters;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsDSSSigner
 * JD-Core Version:    0.7.0.1
 */