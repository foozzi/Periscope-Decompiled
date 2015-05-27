package org.spongycastle.asn1.x9;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.nist.NISTNamedCurves;
import org.spongycastle.asn1.sec.SECNamedCurves;
import org.spongycastle.asn1.teletrust.TeleTrusTNamedCurves;

public class ECNamedCurveTable
{
  public static X9ECParameters ג(String paramString)
  {
    Object localObject2 = X962NamedCurves.ג(paramString);
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = SECNamedCurves.ג(paramString);
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = TeleTrusTNamedCurves.ג(paramString);
    }
    localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = NISTNamedCurves.ג(paramString);
    }
    return localObject1;
  }
  
  public static X9ECParameters ᐝ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    Object localObject2 = X962NamedCurves.ᐝ(paramASN1ObjectIdentifier);
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = SECNamedCurves.ᐝ(paramASN1ObjectIdentifier);
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = TeleTrusTNamedCurves.ᐝ(paramASN1ObjectIdentifier);
    }
    return localObject2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.ECNamedCurveTable
 * JD-Core Version:    0.7.0.1
 */