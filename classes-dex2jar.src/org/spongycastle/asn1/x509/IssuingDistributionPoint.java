package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;

public class IssuingDistributionPoint
  extends ASN1Object
{
  private ASN1Sequence agu;
  private DistributionPointName ayD;
  private boolean azE;
  private boolean azF;
  private ReasonFlags azG;
  private boolean azH;
  private boolean azI;
  
  private IssuingDistributionPoint(ASN1Sequence paramASN1Sequence)
  {
    this.agu = paramASN1Sequence;
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
        this.azE = ASN1Boolean.ˊ(localASN1TaggedObject, false).ew();
        break;
      case 2: 
        this.azF = ASN1Boolean.ˊ(localASN1TaggedObject, false).ew();
        break;
      case 3: 
        this.azG = new ReasonFlags(ReasonFlags.ʽ(localASN1TaggedObject, false));
        break;
      case 4: 
        this.azH = ASN1Boolean.ˊ(localASN1TaggedObject, false).ew();
        break;
      case 5: 
        this.azI = ASN1Boolean.ˊ(localASN1TaggedObject, false).ew();
        break;
      }
      throw new IllegalArgumentException("unknown tag in IssuingDistributionPoint");
      i += 1;
    }
  }
  
  public static IssuingDistributionPoint ɹ(Object paramObject)
  {
    if ((paramObject instanceof IssuingDistributionPoint)) {
      return (IssuingDistributionPoint)paramObject;
    }
    if (paramObject != null) {
      return new IssuingDistributionPoint(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
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
  
  private String ᵞ(boolean paramBoolean)
  {
    if (paramBoolean) {
      return "true";
    }
    return "false";
  }
  
  public ASN1Primitive ez()
  {
    return this.agu;
  }
  
  public boolean hF()
  {
    return this.azE;
  }
  
  public boolean hG()
  {
    return this.azF;
  }
  
  public boolean hH()
  {
    return this.azH;
  }
  
  public boolean hI()
  {
    return this.azI;
  }
  
  public ReasonFlags hJ()
  {
    return this.azG;
  }
  
  public DistributionPointName ht()
  {
    return this.ayD;
  }
  
  public String toString()
  {
    String str = System.getProperty("line.separator");
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("IssuingDistributionPoint: [");
    localStringBuffer.append(str);
    if (this.ayD != null) {
      ˊ(localStringBuffer, str, "distributionPoint", this.ayD.toString());
    }
    if (this.azE) {
      ˊ(localStringBuffer, str, "onlyContainsUserCerts", ᵞ(this.azE));
    }
    if (this.azF) {
      ˊ(localStringBuffer, str, "onlyContainsCACerts", ᵞ(this.azF));
    }
    if (this.azG != null) {
      ˊ(localStringBuffer, str, "onlySomeReasons", this.azG.toString());
    }
    if (this.azI) {
      ˊ(localStringBuffer, str, "onlyContainsAttributeCerts", ᵞ(this.azI));
    }
    if (this.azH) {
      ˊ(localStringBuffer, str, "indirectCRL", ᵞ(this.azH));
    }
    localStringBuffer.append("]");
    localStringBuffer.append(str);
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.IssuingDistributionPoint
 * JD-Core Version:    0.7.0.1
 */