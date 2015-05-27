package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

public class MQVPrivateParameters
  implements CipherParameters
{
  private ECPrivateKeyParameters aQv;
  private ECPrivateKeyParameters aQw;
  private ECPublicKeyParameters aQx;
  
  public MQVPrivateParameters(ECPrivateKeyParameters paramECPrivateKeyParameters1, ECPrivateKeyParameters paramECPrivateKeyParameters2, ECPublicKeyParameters paramECPublicKeyParameters)
  {
    this.aQv = paramECPrivateKeyParameters1;
    this.aQw = paramECPrivateKeyParameters2;
    this.aQx = paramECPublicKeyParameters;
  }
  
  public ECPrivateKeyParameters kY()
  {
    return this.aQv;
  }
  
  public ECPrivateKeyParameters kZ()
  {
    return this.aQw;
  }
  
  public ECPublicKeyParameters la()
  {
    return this.aQx;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.MQVPrivateParameters
 * JD-Core Version:    0.7.0.1
 */