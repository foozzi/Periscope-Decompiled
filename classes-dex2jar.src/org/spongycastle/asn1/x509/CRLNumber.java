package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

public class CRLNumber
  extends ASN1Object
{
  private BigInteger ayq;
  
  public CRLNumber(BigInteger paramBigInteger)
  {
    this.ayq = paramBigInteger;
  }
  
  public ASN1Primitive ez()
  {
    return new ASN1Integer(this.ayq);
  }
  
  public BigInteger hc()
  {
    return this.ayq;
  }
  
  public String toString()
  {
    return "CRLNumber: " + hc();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.CRLNumber
 * JD-Core Version:    0.7.0.1
 */