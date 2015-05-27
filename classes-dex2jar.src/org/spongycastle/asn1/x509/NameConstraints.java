package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class NameConstraints
  extends ASN1Object
{
  private GeneralSubtree[] aAg;
  private GeneralSubtree[] aAh;
  
  private NameConstraints(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    while (paramASN1Sequence.hasMoreElements())
    {
      ASN1TaggedObject localASN1TaggedObject = ASN1TaggedObject.ʵ(paramASN1Sequence.nextElement());
      switch (localASN1TaggedObject.eW())
      {
      default: 
        break;
      case 0: 
        this.aAg = ˋ(ASN1Sequence.ᐝ(localASN1TaggedObject, false));
        break;
      case 1: 
        this.aAh = ˋ(ASN1Sequence.ᐝ(localASN1TaggedObject, false));
      }
    }
  }
  
  private GeneralSubtree[] ˋ(ASN1Sequence paramASN1Sequence)
  {
    GeneralSubtree[] arrayOfGeneralSubtree = new GeneralSubtree[paramASN1Sequence.size()];
    int i = 0;
    while (i != arrayOfGeneralSubtree.length)
    {
      arrayOfGeneralSubtree[i] = GeneralSubtree.ﾆ(paramASN1Sequence.ϲ(i));
      i += 1;
    }
    return arrayOfGeneralSubtree;
  }
  
  public static NameConstraints ϊ(Object paramObject)
  {
    if ((paramObject instanceof NameConstraints)) {
      return (NameConstraints)paramObject;
    }
    if (paramObject != null) {
      return new NameConstraints(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.aAg != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, new DERSequence(this.aAg)));
    }
    if (this.aAh != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, new DERSequence(this.aAh)));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public GeneralSubtree[] hK()
  {
    return this.aAg;
  }
  
  public GeneralSubtree[] hL()
  {
    return this.aAh;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.NameConstraints
 * JD-Core Version:    0.7.0.1
 */