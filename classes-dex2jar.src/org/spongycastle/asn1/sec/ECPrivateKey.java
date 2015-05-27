package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.util.BigIntegers;

public class ECPrivateKey
  extends ASN1Object
{
  private ASN1Sequence agu;
  
  public ECPrivateKey(BigInteger paramBigInteger, ASN1Encodable paramASN1Encodable)
  {
    this(paramBigInteger, null, paramASN1Encodable);
  }
  
  public ECPrivateKey(BigInteger paramBigInteger, DERBitString paramDERBitString, ASN1Encodable paramASN1Encodable)
  {
    paramBigInteger = BigIntegers.ᵎ(paramBigInteger);
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new ASN1Integer(1L));
    localASN1EncodableVector.ˊ(new DEROctetString(paramBigInteger));
    if (paramASN1Encodable != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, paramASN1Encodable));
    }
    if (paramDERBitString != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, paramDERBitString));
    }
    this.agu = new DERSequence(localASN1EncodableVector);
  }
  
  private ECPrivateKey(ASN1Sequence paramASN1Sequence)
  {
    this.agu = paramASN1Sequence;
  }
  
  public static ECPrivateKey і(Object paramObject)
  {
    if ((paramObject instanceof ECPrivateKey)) {
      return (ECPrivateKey)paramObject;
    }
    if (paramObject != null) {
      return new ECPrivateKey(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  private ASN1Primitive ґ(int paramInt)
  {
    Enumeration localEnumeration = this.agu.eT();
    while (localEnumeration.hasMoreElements())
    {
      Object localObject = (ASN1Encodable)localEnumeration.nextElement();
      if ((localObject instanceof ASN1TaggedObject))
      {
        localObject = (ASN1TaggedObject)localObject;
        if (((ASN1TaggedObject)localObject).eW() == paramInt) {
          return ((ASN1TaggedObject)localObject).eY().ez();
        }
      }
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    return this.agu;
  }
  
  public BigInteger gq()
  {
    return new BigInteger(1, ((ASN1OctetString)this.agu.ϲ(1)).eM());
  }
  
  public DERBitString gr()
  {
    return (DERBitString)ґ(1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.ECPrivateKey
 * JD-Core Version:    0.7.0.1
 */