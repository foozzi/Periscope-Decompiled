package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;

public class CRLDistPoint
  extends ASN1Object
{
  ASN1Sequence agu = null;
  
  private CRLDistPoint(ASN1Sequence paramASN1Sequence)
  {
    this.agu = paramASN1Sequence;
  }
  
  public static CRLDistPoint ⁿ(Object paramObject)
  {
    if ((paramObject instanceof CRLDistPoint)) {
      return (CRLDistPoint)paramObject;
    }
    if (paramObject != null) {
      return new CRLDistPoint(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    return this.agu;
  }
  
  public DistributionPoint[] hb()
  {
    DistributionPoint[] arrayOfDistributionPoint = new DistributionPoint[this.agu.size()];
    int i = 0;
    while (i != this.agu.size())
    {
      arrayOfDistributionPoint[i] = DistributionPoint.ﯩ(this.agu.ϲ(i));
      i += 1;
    }
    return arrayOfDistributionPoint;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = System.getProperty("line.separator");
    localStringBuffer.append("CRLDistPoint:");
    localStringBuffer.append(str);
    DistributionPoint[] arrayOfDistributionPoint = hb();
    int i = 0;
    while (i != arrayOfDistributionPoint.length)
    {
      localStringBuffer.append("    ");
      localStringBuffer.append(arrayOfDistributionPoint[i]);
      localStringBuffer.append(str);
      i += 1;
    }
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.CRLDistPoint
 * JD-Core Version:    0.7.0.1
 */