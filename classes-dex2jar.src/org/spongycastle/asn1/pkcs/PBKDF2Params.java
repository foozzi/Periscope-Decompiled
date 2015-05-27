package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class PBKDF2Params
  extends ASN1Object
{
  private static final AlgorithmIdentifier aqm = new AlgorithmIdentifier(PKCSObjectIdentifiers.aqU, DERNull.abj);
  private ASN1Integer adl;
  private ASN1Integer anH;
  private ASN1OctetString aqn;
  private AlgorithmIdentifier aqo;
  
  private PBKDF2Params(ASN1Sequence paramASN1Sequence)
  {
    Enumeration localEnumeration = paramASN1Sequence.eT();
    this.aqn = ((ASN1OctetString)localEnumeration.nextElement());
    this.adl = ((ASN1Integer)localEnumeration.nextElement());
    if (localEnumeration.hasMoreElements())
    {
      paramASN1Sequence = localEnumeration.nextElement();
      if ((paramASN1Sequence instanceof ASN1Integer))
      {
        this.anH = ASN1Integer.ﯨ(paramASN1Sequence);
        if (localEnumeration.hasMoreElements()) {
          paramASN1Sequence = localEnumeration.nextElement();
        } else {
          paramASN1Sequence = null;
        }
      }
      else
      {
        this.anH = null;
      }
      if (paramASN1Sequence != null) {
        this.aqo = AlgorithmIdentifier.ᓪ(paramASN1Sequence);
      }
    }
  }
  
  public PBKDF2Params(byte[] paramArrayOfByte, int paramInt)
  {
    this.aqn = new DEROctetString(paramArrayOfByte);
    this.adl = new ASN1Integer(paramInt);
  }
  
  public static PBKDF2Params וּ(Object paramObject)
  {
    if ((paramObject instanceof PBKDF2Params)) {
      return (PBKDF2Params)paramObject;
    }
    if (paramObject != null) {
      return new PBKDF2Params(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aqn);
    localASN1EncodableVector.ˊ(this.adl);
    if (this.anH != null) {
      localASN1EncodableVector.ˊ(this.anH);
    }
    if ((this.aqo != null) && (!this.aqo.equals(aqm))) {
      localASN1EncodableVector.ˊ(this.aqo);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public BigInteger fN()
  {
    return this.adl.eA();
  }
  
  public boolean fR()
  {
    return (this.aqo == null) || (this.aqo.equals(aqm));
  }
  
  public AlgorithmIdentifier fS()
  {
    if (this.aqo != null) {
      return this.aqo;
    }
    return aqm;
  }
  
  public byte[] getSalt()
  {
    return this.aqn.eM();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.PBKDF2Params
 * JD-Core Version:    0.7.0.1
 */