package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;

public class Targets
  extends ASN1Object
{
  private ASN1Sequence aAQ;
  
  private Targets(ASN1Sequence paramASN1Sequence)
  {
    this.aAQ = paramASN1Sequence;
  }
  
  public static Targets ᐥ(Object paramObject)
  {
    if ((paramObject instanceof Targets)) {
      return (Targets)paramObject;
    }
    if (paramObject != null) {
      return new Targets(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    return this.aAQ;
  }
  
  public Target[] ig()
  {
    Target[] arrayOfTarget = new Target[this.aAQ.size()];
    int i = 0;
    Enumeration localEnumeration = this.aAQ.eT();
    while (localEnumeration.hasMoreElements())
    {
      int j = i + 1;
      arrayOfTarget[i] = Target.ܝ(localEnumeration.nextElement());
      i = j;
    }
    return arrayOfTarget;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.Targets
 * JD-Core Version:    0.7.0.1
 */