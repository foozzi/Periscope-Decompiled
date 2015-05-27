package org.spongycastle.jcajce.provider.symmetric.util;

import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;

public class PBESecretKeyFactory
  extends BaseSecretKeyFactory
  implements PBE
{
  private boolean aYS;
  private int aYT;
  private int aYU;
  private int ahI;
  private int scheme;
  
  public PBESecretKeyFactory(String paramString, ASN1ObjectIdentifier paramASN1ObjectIdentifier, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramString, paramASN1ObjectIdentifier);
    this.aYS = paramBoolean;
    this.scheme = paramInt1;
    this.aYT = paramInt2;
    this.ahI = paramInt3;
    this.aYU = paramInt4;
  }
  
  protected SecretKey engineGenerateSecret(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof PBEKeySpec))
    {
      PBEKeySpec localPBEKeySpec = (PBEKeySpec)paramKeySpec;
      if (localPBEKeySpec.getSalt() == null) {
        return new BCPBEKey(this.aZp, this.aZw, this.scheme, this.aYT, this.ahI, this.aYU, localPBEKeySpec, null);
      }
      if (this.aYS) {
        paramKeySpec = PBE.Util.ˊ(localPBEKeySpec, this.scheme, this.aYT, this.ahI, this.aYU);
      } else {
        paramKeySpec = PBE.Util.ˊ(localPBEKeySpec, this.scheme, this.aYT, this.ahI);
      }
      return new BCPBEKey(this.aZp, this.aZw, this.scheme, this.aYT, this.ahI, this.aYU, localPBEKeySpec, paramKeySpec);
    }
    throw new InvalidKeySpecException("Invalid KeySpec");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory
 * JD-Core Version:    0.7.0.1
 */