package org.spongycastle.asn1.ua;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.util.Arrays;

public class DSTU4145Params
  extends ASN1Object
{
  private static final byte[] avW = { -87, -42, -21, 69, -15, 60, 112, -126, -128, -60, -106, 123, 35, 31, 94, -83, -10, 88, -21, -92, -64, 55, 41, 29, 56, -39, 107, -16, 37, -54, 78, 23, -8, -23, 114, 13, -58, 21, -76, 58, 40, -105, 95, 11, -63, -34, -93, 100, 56, -75, 100, -22, 44, 23, -97, -48, 18, 62, 109, -72, -6, -59, 121, 4 };
  private ASN1ObjectIdentifier avX;
  private DSTU4145ECBinary avY;
  private byte[] avZ = avW;
  
  public DSTU4145Params(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    this.avX = paramASN1ObjectIdentifier;
  }
  
  public DSTU4145Params(DSTU4145ECBinary paramDSTU4145ECBinary)
  {
    this.avY = paramDSTU4145ECBinary;
  }
  
  public static byte[] gD()
  {
    return avW;
  }
  
  public static DSTU4145Params ײ(Object paramObject)
  {
    if ((paramObject instanceof DSTU4145Params)) {
      return (DSTU4145Params)paramObject;
    }
    if (paramObject != null)
    {
      ASN1Sequence localASN1Sequence = ASN1Sequence.ﹾ(paramObject);
      if ((localASN1Sequence.ϲ(0) instanceof ASN1ObjectIdentifier)) {
        paramObject = new DSTU4145Params(ASN1ObjectIdentifier.ﹴ(localASN1Sequence.ϲ(0)));
      } else {
        paramObject = new DSTU4145Params(DSTU4145ECBinary.Ӏ(localASN1Sequence.ϲ(0)));
      }
      if (localASN1Sequence.size() == 2)
      {
        paramObject.avZ = ASN1OctetString.ﹸ(localASN1Sequence.ϲ(1)).eM();
        if (paramObject.avZ.length != avW.length) {
          throw new IllegalArgumentException("object parse error");
        }
      }
      return paramObject;
    }
    throw new IllegalArgumentException("object parse error");
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.avX != null) {
      localASN1EncodableVector.ˊ(this.avX);
    } else {
      localASN1EncodableVector.ˊ(this.avY);
    }
    if (!Arrays.ﹺ(this.avZ, avW)) {
      localASN1EncodableVector.ˊ(new DEROctetString(this.avZ));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public boolean gA()
  {
    return this.avX != null;
  }
  
  public DSTU4145ECBinary gB()
  {
    return this.avY;
  }
  
  public byte[] gC()
  {
    return this.avZ;
  }
  
  public ASN1ObjectIdentifier gE()
  {
    return this.avX;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ua.DSTU4145Params
 * JD-Core Version:    0.7.0.1
 */