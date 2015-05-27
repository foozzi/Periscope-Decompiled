package org.spongycastle.asn1.ua;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.util.Arrays;

public class DSTU4145ECBinary
  extends ASN1Object
{
  ASN1Integer ahz;
  BigInteger asQ = BigInteger.valueOf(0L);
  DSTU4145BinaryField avP;
  ASN1OctetString avQ;
  ASN1Integer avR;
  ASN1OctetString avS;
  
  private DSTU4145ECBinary(ASN1Sequence paramASN1Sequence)
  {
    int i = 0;
    if ((paramASN1Sequence.ϲ(0) instanceof ASN1TaggedObject))
    {
      ASN1TaggedObject localASN1TaggedObject = (ASN1TaggedObject)paramASN1Sequence.ϲ(0);
      if ((localASN1TaggedObject.eX()) && (localASN1TaggedObject.eW() == 0))
      {
        this.asQ = ASN1Integer.ﯨ(localASN1TaggedObject.eN()).eA();
        i = 0 + 1;
      }
      else
      {
        throw new IllegalArgumentException("object parse error");
      }
    }
    this.avP = DSTU4145BinaryField.ї(paramASN1Sequence.ϲ(i));
    i += 1;
    this.ahz = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(i));
    i += 1;
    this.avQ = ASN1OctetString.ﹸ(paramASN1Sequence.ϲ(i));
    i += 1;
    this.avR = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(i));
    this.avS = ASN1OctetString.ﹸ(paramASN1Sequence.ϲ(i + 1));
  }
  
  public static DSTU4145ECBinary Ӏ(Object paramObject)
  {
    if ((paramObject instanceof DSTU4145ECBinary)) {
      return (DSTU4145ECBinary)paramObject;
    }
    if (paramObject != null) {
      return new DSTU4145ECBinary(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.asQ.compareTo(BigInteger.valueOf(0L)) != 0) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, new ASN1Integer(this.asQ)));
    }
    localASN1EncodableVector.ˊ(this.avP);
    localASN1EncodableVector.ˊ(this.ahz);
    localASN1EncodableVector.ˊ(this.avQ);
    localASN1EncodableVector.ˊ(this.avR);
    localASN1EncodableVector.ˊ(this.avS);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public BigInteger getA()
  {
    return this.ahz.eA();
  }
  
  public DSTU4145BinaryField gw()
  {
    return this.avP;
  }
  
  public byte[] gx()
  {
    return Arrays.І(this.avQ.eM());
  }
  
  public BigInteger gy()
  {
    return this.avR.eA();
  }
  
  public byte[] gz()
  {
    return Arrays.І(this.avS.eM());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ua.DSTU4145ECBinary
 * JD-Core Version:    0.7.0.1
 */