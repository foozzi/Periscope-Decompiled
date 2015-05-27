package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class BasicConstraints
  extends ASN1Object
{
  ASN1Boolean ayo = ASN1Boolean.ᕑ(false);
  ASN1Integer ayp = null;
  
  private BasicConstraints(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() == 0)
    {
      this.ayo = null;
      this.ayp = null;
      return;
    }
    if ((paramASN1Sequence.ϲ(0) instanceof ASN1Boolean))
    {
      this.ayo = ASN1Boolean.ᵙ(paramASN1Sequence.ϲ(0));
    }
    else
    {
      this.ayo = null;
      this.ayp = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(0));
    }
    if (paramASN1Sequence.size() > 1)
    {
      if (this.ayo != null)
      {
        this.ayp = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(1));
        return;
      }
      throw new IllegalArgumentException("wrong sequence in constructor");
    }
  }
  
  public static BasicConstraints ᵤ(Object paramObject)
  {
    if ((paramObject instanceof BasicConstraints)) {
      return (BasicConstraints)paramObject;
    }
    if ((paramObject instanceof X509Extension)) {
      return ᵤ(X509Extension.ˊ((X509Extension)paramObject));
    }
    if (paramObject != null) {
      return new BasicConstraints(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.ayo != null) {
      localASN1EncodableVector.ˊ(this.ayo);
    }
    if (this.ayp != null) {
      localASN1EncodableVector.ˊ(this.ayp);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public boolean gZ()
  {
    return (this.ayo != null) && (this.ayo.ew());
  }
  
  public BigInteger ha()
  {
    if (this.ayp != null) {
      return this.ayp.eA();
    }
    return null;
  }
  
  public String toString()
  {
    if (this.ayp == null)
    {
      if (this.ayo == null) {
        return "BasicConstraints: isCa(false)";
      }
      return "BasicConstraints: isCa(" + gZ() + ")";
    }
    return "BasicConstraints: isCa(" + gZ() + "), pathLenConstraint = " + this.ayp.eA();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.BasicConstraints
 * JD-Core Version:    0.7.0.1
 */