package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1Null;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERNull;

public class PKIConfirmContent
  extends ASN1Object
{
  private ASN1Null ado = DERNull.abj;
  
  public ASN1Primitive ez()
  {
    return this.ado;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.PKIConfirmContent
 * JD-Core Version:    0.7.0.1
 */