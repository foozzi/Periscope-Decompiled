package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class DistributionPoint
  extends ASN1Object
{
  DistributionPointName ayD;
  ReasonFlags ayE;
  GeneralNames ayF;
  
  public DistributionPoint(ASN1Sequence paramASN1Sequence)
  {
    int i = 0;
    while (i != paramASN1Sequence.size())
    {
      ASN1TaggedObject localASN1TaggedObject = ASN1TaggedObject.ʵ(paramASN1Sequence.ϲ(i));
      switch (localASN1TaggedObject.eW())
      {
      default: 
        break;
      case 0: 
        this.ayD = DistributionPointName.ˉ(localASN1TaggedObject, true);
        break;
      case 1: 
        this.ayE = new ReasonFlags(DERBitString.ʽ(localASN1TaggedObject, false));
        break;
      case 2: 
        this.ayF = GeneralNames.ˍ(localASN1TaggedObject, false);
      }
      i += 1;
    }
  }
  
  public DistributionPoint(DistributionPointName paramDistributionPointName, ReasonFlags paramReasonFlags, GeneralNames paramGeneralNames)
  {
    this.ayD = paramDistributionPointName;
    this.ayE = paramReasonFlags;
    this.ayF = paramGeneralNames;
  }
  
  private void ˊ(StringBuffer paramStringBuffer, String paramString1, String paramString2, String paramString3)
  {
    paramStringBuffer.append("    ");
    paramStringBuffer.append(paramString2);
    paramStringBuffer.append(":");
    paramStringBuffer.append(paramString1);
    paramStringBuffer.append("    ");
    paramStringBuffer.append("    ");
    paramStringBuffer.append(paramString3);
    paramStringBuffer.append(paramString1);
  }
  
  public static DistributionPoint ﯩ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof DistributionPoint))) {
      return (DistributionPoint)paramObject;
    }
    if ((paramObject instanceof ASN1Sequence)) {
      return new DistributionPoint((ASN1Sequence)paramObject);
    }
    throw new IllegalArgumentException("Invalid DistributionPoint: " + paramObject.getClass().getName());
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.ayD != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(0, this.ayD));
    }
    if (this.ayE != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.ayE));
    }
    if (this.ayF != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 2, this.ayF));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public DistributionPointName ht()
  {
    return this.ayD;
  }
  
  public ReasonFlags hu()
  {
    return this.ayE;
  }
  
  public GeneralNames hv()
  {
    return this.ayF;
  }
  
  public String toString()
  {
    String str = System.getProperty("line.separator");
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("DistributionPoint: [");
    localStringBuffer.append(str);
    if (this.ayD != null) {
      ˊ(localStringBuffer, str, "distributionPoint", this.ayD.toString());
    }
    if (this.ayE != null) {
      ˊ(localStringBuffer, str, "reasons", this.ayE.toString());
    }
    if (this.ayF != null) {
      ˊ(localStringBuffer, str, "cRLIssuer", this.ayF.toString());
    }
    localStringBuffer.append("]");
    localStringBuffer.append(str);
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.DistributionPoint
 * JD-Core Version:    0.7.0.1
 */