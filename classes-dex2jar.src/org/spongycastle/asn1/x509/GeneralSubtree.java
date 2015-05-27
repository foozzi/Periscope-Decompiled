package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class GeneralSubtree
  extends ASN1Object
{
  private static final BigInteger ZERO = BigInteger.valueOf(0L);
  private GeneralName azt;
  private ASN1Integer azu;
  private ASN1Integer azv;
  
  private GeneralSubtree(ASN1Sequence paramASN1Sequence)
  {
    this.azt = GeneralName.ﻳ(paramASN1Sequence.ϲ(0));
    switch (paramASN1Sequence.size())
    {
    default: 
      break;
    case 1: 
      return;
    case 2: 
      paramASN1Sequence = ASN1TaggedObject.ʵ(paramASN1Sequence.ϲ(1));
      switch (paramASN1Sequence.eW())
      {
      default: 
        break;
      case 0: 
        this.azu = ASN1Integer.ˋ(paramASN1Sequence, false);
        return;
      case 1: 
        this.azv = ASN1Integer.ˋ(paramASN1Sequence, false);
        return;
      }
      throw new IllegalArgumentException("Bad tag number: " + paramASN1Sequence.eW());
    case 3: 
      ASN1TaggedObject localASN1TaggedObject = ASN1TaggedObject.ʵ(paramASN1Sequence.ϲ(1));
      if (localASN1TaggedObject.eW() != 0) {
        throw new IllegalArgumentException("Bad tag number for 'minimum': " + localASN1TaggedObject.eW());
      }
      this.azu = ASN1Integer.ˋ(localASN1TaggedObject, false);
      paramASN1Sequence = ASN1TaggedObject.ʵ(paramASN1Sequence.ϲ(2));
      if (paramASN1Sequence.eW() != 1) {
        throw new IllegalArgumentException("Bad tag number for 'maximum': " + paramASN1Sequence.eW());
      }
      this.azv = ASN1Integer.ˋ(paramASN1Sequence, false);
      return;
    }
    throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
  }
  
  public static GeneralSubtree ﾆ(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if ((paramObject instanceof GeneralSubtree)) {
      return (GeneralSubtree)paramObject;
    }
    return new GeneralSubtree(ASN1Sequence.ﹾ(paramObject));
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.azt);
    if ((this.azu != null) && (!this.azu.eA().equals(ZERO))) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.azu));
    }
    if (this.azv != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.azv));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public GeneralName hC()
  {
    return this.azt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.GeneralSubtree
 * JD-Core Version:    0.7.0.1
 */