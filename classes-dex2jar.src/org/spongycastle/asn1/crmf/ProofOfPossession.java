package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DERTaggedObject;

public class ProofOfPossession
  extends ASN1Object
  implements ASN1Choice
{
  private int aaC = 0;
  private ASN1Encodable aaF = DERNull.abj;
  
  public ASN1Primitive ez()
  {
    return new DERTaggedObject(false, this.aaC, this.aaF);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.crmf.ProofOfPossession
 * JD-Core Version:    0.7.0.1
 */