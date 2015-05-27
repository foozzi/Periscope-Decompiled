package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;

public class TargetInformation
  extends ASN1Object
{
  private ASN1Sequence aAQ;
  
  private TargetInformation(ASN1Sequence paramASN1Sequence)
  {
    this.aAQ = paramASN1Sequence;
  }
  
  public static TargetInformation า(Object paramObject)
  {
    if ((paramObject instanceof TargetInformation)) {
      return (TargetInformation)paramObject;
    }
    if (paramObject != null) {
      return new TargetInformation(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    return this.aAQ;
  }
  
  public Targets[] jdMethod_if()
  {
    Targets[] arrayOfTargets = new Targets[this.aAQ.size()];
    int i = 0;
    Enumeration localEnumeration = this.aAQ.eT();
    while (localEnumeration.hasMoreElements())
    {
      int j = i + 1;
      arrayOfTargets[i] = Targets.ᐥ(localEnumeration.nextElement());
      i = j;
    }
    return arrayOfTargets;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.TargetInformation
 * JD-Core Version:    0.7.0.1
 */