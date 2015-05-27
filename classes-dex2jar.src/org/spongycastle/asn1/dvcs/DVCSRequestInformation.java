package org.spongycastle.asn1.dvcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.PolicyInformation;

public class DVCSRequestInformation
  extends ASN1Object
{
  private Extensions ahV;
  private ServiceType aig;
  private BigInteger aih;
  private DVCSTime aii;
  private GeneralNames aij;
  private PolicyInformation aik;
  private GeneralNames ail;
  private GeneralNames aim;
  private int version;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.version != 1) {
      localASN1EncodableVector.ˊ(new ASN1Integer(this.version));
    }
    localASN1EncodableVector.ˊ(this.aig);
    if (this.aih != null) {
      localASN1EncodableVector.ˊ(new ASN1Integer(this.aih));
    }
    if (this.aii != null) {
      localASN1EncodableVector.ˊ(this.aii);
    }
    int[] arrayOfInt = new int[5];
    int[] tmp84_82 = arrayOfInt;
    tmp84_82[0] = 0;
    int[] tmp88_84 = tmp84_82;
    tmp88_84[1] = 1;
    int[] tmp92_88 = tmp88_84;
    tmp92_88[2] = 2;
    int[] tmp96_92 = tmp92_88;
    tmp96_92[3] = 3;
    int[] tmp100_96 = tmp96_92;
    tmp100_96[4] = 4;
    tmp100_96;
    GeneralNames localGeneralNames1 = this.aij;
    PolicyInformation localPolicyInformation = this.aik;
    GeneralNames localGeneralNames2 = this.ail;
    GeneralNames localGeneralNames3 = this.aim;
    Extensions localExtensions = this.ahV;
    int i = 0;
    while (i < arrayOfInt.length)
    {
      int j = arrayOfInt[i];
      ASN1Encodable localASN1Encodable = new ASN1Encodable[] { localGeneralNames1, localPolicyInformation, localGeneralNames2, localGeneralNames3, localExtensions }[i];
      if (localASN1Encodable != null) {
        localASN1EncodableVector.ˊ(new DERTaggedObject(false, j, localASN1Encodable));
      }
      i += 1;
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("DVCSRequestInformation {\n");
    if (this.version != 1) {
      localStringBuffer.append("version: " + this.version + "\n");
    }
    localStringBuffer.append("service: " + this.aig + "\n");
    if (this.aih != null) {
      localStringBuffer.append("nonce: " + this.aih + "\n");
    }
    if (this.aii != null) {
      localStringBuffer.append("requestTime: " + this.aii + "\n");
    }
    if (this.aij != null) {
      localStringBuffer.append("requester: " + this.aij + "\n");
    }
    if (this.aik != null) {
      localStringBuffer.append("requestPolicy: " + this.aik + "\n");
    }
    if (this.ail != null) {
      localStringBuffer.append("dvcs: " + this.ail + "\n");
    }
    if (this.aim != null) {
      localStringBuffer.append("dataLocations: " + this.aim + "\n");
    }
    if (this.ahV != null) {
      localStringBuffer.append("extensions: " + this.ahV + "\n");
    }
    localStringBuffer.append("}\n");
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.dvcs.DVCSRequestInformation
 * JD-Core Version:    0.7.0.1
 */