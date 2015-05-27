package org.spongycastle.asn1.x9;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;

public class X9ECPoint
  extends ASN1Object
{
  ECPoint aDE;
  
  public X9ECPoint(ECCurve paramECCurve, ASN1OctetString paramASN1OctetString)
  {
    this.aDE = paramECCurve.ᕁ(paramASN1OctetString.eM());
  }
  
  public X9ECPoint(ECPoint paramECPoint)
  {
    this.aDE = paramECPoint.pQ();
  }
  
  public ASN1Primitive ez()
  {
    return new DEROctetString(this.aDE.getEncoded());
  }
  
  public ECPoint iy()
  {
    return this.aDE;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X9ECPoint
 * JD-Core Version:    0.7.0.1
 */