package org.spongycastle.jce;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;

public class ECGOST3410NamedCurveTable
{
  public static ECNamedCurveParameterSpec ﺩ(String paramString)
  {
    ECDomainParameters localECDomainParameters2 = ECGOST3410NamedCurves.ʶ(paramString);
    ECDomainParameters localECDomainParameters1 = localECDomainParameters2;
    if (localECDomainParameters2 == null) {
      try
      {
        localECDomainParameters1 = ECGOST3410NamedCurves.ˋ(new ASN1ObjectIdentifier(paramString));
      }
      catch (IllegalArgumentException paramString)
      {
        return null;
      }
    }
    if (localECDomainParameters1 == null) {
      return null;
    }
    return new ECNamedCurveParameterSpec(paramString, localECDomainParameters1.iv(), localECDomainParameters1.iw(), localECDomainParameters1.gy(), localECDomainParameters1.ix(), localECDomainParameters1.getSeed());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.ECGOST3410NamedCurveTable
 * JD-Core Version:    0.7.0.1
 */