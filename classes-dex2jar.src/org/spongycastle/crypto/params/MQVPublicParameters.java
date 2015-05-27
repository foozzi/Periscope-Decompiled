package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

public class MQVPublicParameters
  implements CipherParameters
{
  private ECPublicKeyParameters aQx;
  private ECPublicKeyParameters aQy;
  
  public MQVPublicParameters(ECPublicKeyParameters paramECPublicKeyParameters1, ECPublicKeyParameters paramECPublicKeyParameters2)
  {
    this.aQy = paramECPublicKeyParameters1;
    this.aQx = paramECPublicKeyParameters2;
  }
  
  public ECPublicKeyParameters la()
  {
    return this.aQx;
  }
  
  public ECPublicKeyParameters lb()
  {
    return this.aQy;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.MQVPublicParameters
 * JD-Core Version:    0.7.0.1
 */