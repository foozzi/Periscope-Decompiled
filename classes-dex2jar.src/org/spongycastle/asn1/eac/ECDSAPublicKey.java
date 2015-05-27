package org.spongycastle.asn1.eac;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class ECDSAPublicKey
  extends PublicKeyDataObject
{
  private BigInteger ajA;
  private BigInteger ajB;
  private byte[] ajC;
  private BigInteger ajD;
  private byte[] ajE;
  private BigInteger ajF;
  private int ajG;
  private ASN1ObjectIdentifier ajy;
  private BigInteger ajz;
  
  public ASN1Primitive ez()
  {
    return new DERSequence(ˊ(this.ajy, false));
  }
  
  public BigInteger fA()
  {
    if ((this.ajG & 0x4) != 0) {
      return this.ajB;
    }
    return null;
  }
  
  public byte[] fu()
  {
    if ((this.ajG & 0x8) != 0) {
      return this.ajC;
    }
    return null;
  }
  
  public BigInteger fv()
  {
    if ((this.ajG & 0x40) != 0) {
      return this.ajF;
    }
    return null;
  }
  
  public BigInteger fw()
  {
    if ((this.ajG & 0x2) != 0) {
      return this.ajA;
    }
    return null;
  }
  
  public BigInteger fx()
  {
    if ((this.ajG & 0x10) != 0) {
      return this.ajD;
    }
    return null;
  }
  
  public BigInteger fy()
  {
    if ((this.ajG & 0x1) != 0) {
      return this.ajz;
    }
    return null;
  }
  
  public byte[] fz()
  {
    if ((this.ajG & 0x20) != 0) {
      return this.ajE;
    }
    return null;
  }
  
  public ASN1EncodableVector ˊ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, boolean paramBoolean)
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(paramASN1ObjectIdentifier);
    if (!paramBoolean)
    {
      localASN1EncodableVector.ˊ(new UnsignedInteger(1, fy()));
      localASN1EncodableVector.ˊ(new UnsignedInteger(2, fw()));
      localASN1EncodableVector.ˊ(new UnsignedInteger(3, fA()));
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 4, new DEROctetString(fu())));
      localASN1EncodableVector.ˊ(new UnsignedInteger(5, fx()));
    }
    localASN1EncodableVector.ˊ(new DERTaggedObject(false, 6, new DEROctetString(fz())));
    if (!paramBoolean) {
      localASN1EncodableVector.ˊ(new UnsignedInteger(7, fv()));
    }
    return localASN1EncodableVector;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.eac.ECDSAPublicKey
 * JD-Core Version:    0.7.0.1
 */