package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class PBES2Algorithms
  extends AlgorithmIdentifier
  implements PKCSObjectIdentifiers
{
  private ASN1ObjectIdentifier aqj;
  
  public ASN1ObjectIdentifier fO()
  {
    return this.aqj;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.PBES2Algorithms
 * JD-Core Version:    0.7.0.1
 */