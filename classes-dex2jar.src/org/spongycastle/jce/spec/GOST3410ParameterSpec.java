package org.spongycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.GOST3410NamedParameters;
import org.spongycastle.asn1.cryptopro.GOST3410ParamSetParameters;
import org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.spongycastle.jce.interfaces.GOST3410Params;

public class GOST3410ParameterSpec
  implements AlgorithmParameterSpec, GOST3410Params
{
  private GOST3410PublicKeyParameterSetSpec bbW;
  private String bbX;
  private String bbY;
  private String bbZ;
  
  public GOST3410ParameterSpec(String paramString)
  {
    this(paramString, CryptoProObjectIdentifiers.ahg.getId(), null);
  }
  
  public GOST3410ParameterSpec(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }
  
  public GOST3410ParameterSpec(String paramString1, String paramString2, String paramString3)
  {
    Object localObject = null;
    try
    {
      GOST3410ParamSetParameters localGOST3410ParamSetParameters = GOST3410NamedParameters.ˏ(new ASN1ObjectIdentifier(paramString1));
      localObject = localGOST3410ParamSetParameters;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      ASN1ObjectIdentifier localASN1ObjectIdentifier = GOST3410NamedParameters.ϊ(paramString1);
      if (localASN1ObjectIdentifier != null)
      {
        paramString1 = localASN1ObjectIdentifier.getId();
        localObject = GOST3410NamedParameters.ˏ(localASN1ObjectIdentifier);
      }
    }
    if (localObject == null) {
      throw new IllegalArgumentException("no key parameter set for passed in name/OID.");
    }
    this.bbW = new GOST3410PublicKeyParameterSetSpec(((GOST3410ParamSetParameters)localObject).getP(), ((GOST3410ParamSetParameters)localObject).getQ(), ((GOST3410ParamSetParameters)localObject).getA());
    this.bbX = paramString1;
    this.bbY = paramString2;
    this.bbZ = paramString3;
  }
  
  public GOST3410ParameterSpec(GOST3410PublicKeyParameterSetSpec paramGOST3410PublicKeyParameterSetSpec)
  {
    this.bbW = paramGOST3410PublicKeyParameterSetSpec;
    this.bbY = CryptoProObjectIdentifiers.ahg.getId();
    this.bbZ = null;
  }
  
  public static GOST3410ParameterSpec ˊ(GOST3410PublicKeyAlgParameters paramGOST3410PublicKeyAlgParameters)
  {
    if (paramGOST3410PublicKeyAlgParameters.fp() != null) {
      return new GOST3410ParameterSpec(paramGOST3410PublicKeyAlgParameters.fq().getId(), paramGOST3410PublicKeyAlgParameters.fr().getId(), paramGOST3410PublicKeyAlgParameters.fp().getId());
    }
    return new GOST3410ParameterSpec(paramGOST3410PublicKeyAlgParameters.fq().getId(), paramGOST3410PublicKeyAlgParameters.fr().getId());
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof GOST3410ParameterSpec))
    {
      paramObject = (GOST3410ParameterSpec)paramObject;
      return (this.bbW.equals(paramObject.bbW)) && (this.bbY.equals(paramObject.bbY)) && ((this.bbZ == paramObject.bbZ) || ((this.bbZ != null) && (this.bbZ.equals(paramObject.bbZ))));
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = this.bbW.hashCode();
    int k = this.bbY.hashCode();
    int i;
    if (this.bbZ != null) {
      i = this.bbZ.hashCode();
    } else {
      i = 0;
    }
    return j ^ k ^ i;
  }
  
  public String oL()
  {
    return this.bbX;
  }
  
  public String oM()
  {
    return this.bbY;
  }
  
  public String oN()
  {
    return this.bbZ;
  }
  
  public GOST3410PublicKeyParameterSetSpec oO()
  {
    return this.bbW;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.GOST3410ParameterSpec
 * JD-Core Version:    0.7.0.1
 */