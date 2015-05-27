package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;

public class GeneralNames
  extends ASN1Object
{
  private final GeneralName[] azr;
  
  private GeneralNames(ASN1Sequence paramASN1Sequence)
  {
    this.azr = new GeneralName[paramASN1Sequence.size()];
    int i = 0;
    while (i != paramASN1Sequence.size())
    {
      this.azr[i] = GeneralName.ﻳ(paramASN1Sequence.ϲ(i));
      i += 1;
    }
  }
  
  public GeneralNames(GeneralName paramGeneralName)
  {
    this.azr = new GeneralName[] { paramGeneralName };
  }
  
  public static GeneralNames ˍ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    return ＿(ASN1Sequence.ᐝ(paramASN1TaggedObject, paramBoolean));
  }
  
  public static GeneralNames ＿(Object paramObject)
  {
    if ((paramObject instanceof GeneralNames)) {
      return (GeneralNames)paramObject;
    }
    if (paramObject != null) {
      return new GeneralNames(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    return new DERSequence(this.azr);
  }
  
  public GeneralName[] hB()
  {
    GeneralName[] arrayOfGeneralName = new GeneralName[this.azr.length];
    System.arraycopy(this.azr, 0, arrayOfGeneralName, 0, this.azr.length);
    return arrayOfGeneralName;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = System.getProperty("line.separator");
    localStringBuffer.append("GeneralNames:");
    localStringBuffer.append(str);
    int i = 0;
    while (i != this.azr.length)
    {
      localStringBuffer.append("    ");
      localStringBuffer.append(this.azr[i]);
      localStringBuffer.append(str);
      i += 1;
    }
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.GeneralNames
 * JD-Core Version:    0.7.0.1
 */