package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1String;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class RoleSyntax
  extends ASN1Object
{
  private GeneralNames aAw;
  private GeneralName aAx;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.aAw != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.aAw));
    }
    localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.aAx));
    return new DERSequence(localASN1EncodableVector);
  }
  
  public String hS()
  {
    return ((ASN1String)this.aAx.hw()).getString();
  }
  
  public String[] hT()
  {
    if (this.aAw == null) {
      return new String[0];
    }
    GeneralName[] arrayOfGeneralName = this.aAw.hB();
    String[] arrayOfString = new String[arrayOfGeneralName.length];
    int i = 0;
    while (i < arrayOfGeneralName.length)
    {
      ASN1Encodable localASN1Encodable = arrayOfGeneralName[i].hw();
      if ((localASN1Encodable instanceof ASN1String)) {
        arrayOfString[i] = ((ASN1String)localASN1Encodable).getString();
      } else {
        arrayOfString[i] = localASN1Encodable.toString();
      }
      i += 1;
    }
    return arrayOfString;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer("Name: " + hS() + " - Auth: ");
    if ((this.aAw == null) || (this.aAw.hB().length == 0))
    {
      localStringBuffer.append("N/A");
    }
    else
    {
      String[] arrayOfString = hT();
      localStringBuffer.append('[').append(arrayOfString[0]);
      int i = 1;
      while (i < arrayOfString.length)
      {
        localStringBuffer.append(", ").append(arrayOfString[i]);
        i += 1;
      }
      localStringBuffer.append(']');
    }
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.RoleSyntax
 * JD-Core Version:    0.7.0.1
 */