package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERTaggedObject;

public class DistributionPointName
  extends ASN1Object
  implements ASN1Choice
{
  ASN1Encodable ayG;
  int type;
  
  public DistributionPointName(int paramInt, ASN1Encodable paramASN1Encodable)
  {
    this.type = paramInt;
    this.ayG = paramASN1Encodable;
  }
  
  public DistributionPointName(ASN1TaggedObject paramASN1TaggedObject)
  {
    this.type = paramASN1TaggedObject.eW();
    if (this.type == 0)
    {
      this.ayG = GeneralNames.ˍ(paramASN1TaggedObject, false);
      return;
    }
    this.ayG = ASN1Set.ʻ(paramASN1TaggedObject, false);
  }
  
  public static DistributionPointName ˉ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    return ﯾ(ASN1TaggedObject.ʼ(paramASN1TaggedObject, true));
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
  
  public static DistributionPointName ﯾ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof DistributionPointName))) {
      return (DistributionPointName)paramObject;
    }
    if ((paramObject instanceof ASN1TaggedObject)) {
      return new DistributionPointName((ASN1TaggedObject)paramObject);
    }
    throw new IllegalArgumentException("unknown object in factory: " + paramObject.getClass().getName());
  }
  
  public ASN1Primitive ez()
  {
    return new DERTaggedObject(false, this.type, this.ayG);
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public ASN1Encodable hw()
  {
    return this.ayG;
  }
  
  public String toString()
  {
    String str = System.getProperty("line.separator");
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("DistributionPointName: [");
    localStringBuffer.append(str);
    if (this.type == 0) {
      ˊ(localStringBuffer, str, "fullName", this.ayG.toString());
    } else {
      ˊ(localStringBuffer, str, "nameRelativeToCRLIssuer", this.ayG.toString());
    }
    localStringBuffer.append("]");
    localStringBuffer.append(str);
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.DistributionPointName
 * JD-Core Version:    0.7.0.1
 */