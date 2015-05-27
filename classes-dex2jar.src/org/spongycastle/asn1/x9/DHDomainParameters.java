package org.spongycastle.asn1.x9;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class DHDomainParameters
  extends ASN1Object
{
  private ASN1Integer aCP;
  private DHValidationParms aCQ;
  private ASN1Integer ahx;
  private ASN1Integer ahy;
  private ASN1Integer apD;
  
  private DHDomainParameters(ASN1Sequence paramASN1Sequence)
  {
    if ((paramASN1Sequence.size() < 3) || (paramASN1Sequence.size() > 5)) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    Enumeration localEnumeration = paramASN1Sequence.eT();
    this.ahx = ASN1Integer.ﯨ(localEnumeration.nextElement());
    this.apD = ASN1Integer.ﯨ(localEnumeration.nextElement());
    this.ahy = ASN1Integer.ﯨ(localEnumeration.nextElement());
    ASN1Encodable localASN1Encodable = ˊ(localEnumeration);
    paramASN1Sequence = localASN1Encodable;
    if (localASN1Encodable != null)
    {
      paramASN1Sequence = localASN1Encodable;
      if ((localASN1Encodable instanceof ASN1Integer))
      {
        this.aCP = ASN1Integer.ﯨ(localASN1Encodable);
        paramASN1Sequence = ˊ(localEnumeration);
      }
    }
    if (paramASN1Sequence != null) {
      this.aCQ = DHValidationParms.ᵏ(paramASN1Sequence.ez());
    }
  }
  
  private static ASN1Encodable ˊ(Enumeration paramEnumeration)
  {
    if (paramEnumeration.hasMoreElements()) {
      return (ASN1Encodable)paramEnumeration.nextElement();
    }
    return null;
  }
  
  public static DHDomainParameters ᴊ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof DHDomainParameters))) {
      return (DHDomainParameters)paramObject;
    }
    if ((paramObject instanceof ASN1Sequence)) {
      return new DHDomainParameters((ASN1Sequence)paramObject);
    }
    throw new IllegalArgumentException("Invalid DHDomainParameters: " + paramObject.getClass().getName());
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ahx);
    localASN1EncodableVector.ˊ(this.apD);
    localASN1EncodableVector.ˊ(this.ahy);
    if (this.aCP != null) {
      localASN1EncodableVector.ˊ(this.aCP);
    }
    if (this.aCQ != null) {
      localASN1EncodableVector.ˊ(this.aCQ);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1Integer ij()
  {
    return this.ahx;
  }
  
  public ASN1Integer ik()
  {
    return this.apD;
  }
  
  public ASN1Integer il()
  {
    return this.ahy;
  }
  
  public ASN1Integer im()
  {
    return this.aCP;
  }
  
  public DHValidationParms io()
  {
    return this.aCQ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.DHDomainParameters
 * JD-Core Version:    0.7.0.1
 */