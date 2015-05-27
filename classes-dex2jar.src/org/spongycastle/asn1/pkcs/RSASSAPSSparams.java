package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class RSASSAPSSparams
  extends ASN1Object
{
  public static final AlgorithmIdentifier asN = new AlgorithmIdentifier(OIWObjectIdentifiers.apM, DERNull.abj);
  public static final AlgorithmIdentifier asO = new AlgorithmIdentifier(PKCSObjectIdentifiers.aqw, asN);
  public static final ASN1Integer atb = new ASN1Integer(20L);
  public static final ASN1Integer atc = new ASN1Integer(1L);
  private AlgorithmIdentifier akB;
  private AlgorithmIdentifier asL;
  private ASN1Integer asZ;
  private ASN1Integer ata;
  
  public RSASSAPSSparams()
  {
    this.akB = asN;
    this.asL = asO;
    this.asZ = atb;
    this.ata = atc;
  }
  
  private RSASSAPSSparams(ASN1Sequence paramASN1Sequence)
  {
    this.akB = asN;
    this.asL = asO;
    this.asZ = atb;
    this.ata = atc;
    int i = 0;
    while (i != paramASN1Sequence.size())
    {
      ASN1TaggedObject localASN1TaggedObject = (ASN1TaggedObject)paramASN1Sequence.ϲ(i);
      switch (localASN1TaggedObject.eW())
      {
      default: 
        break;
      case 0: 
        this.akB = AlgorithmIdentifier.ʿ(localASN1TaggedObject, true);
        break;
      case 1: 
        this.asL = AlgorithmIdentifier.ʿ(localASN1TaggedObject, true);
        break;
      case 2: 
        this.asZ = ASN1Integer.ˋ(localASN1TaggedObject, true);
        break;
      case 3: 
        this.ata = ASN1Integer.ˋ(localASN1TaggedObject, true);
        break;
      }
      throw new IllegalArgumentException("unknown tag");
      i += 1;
    }
  }
  
  public RSASSAPSSparams(AlgorithmIdentifier paramAlgorithmIdentifier1, AlgorithmIdentifier paramAlgorithmIdentifier2, ASN1Integer paramASN1Integer1, ASN1Integer paramASN1Integer2)
  {
    this.akB = paramAlgorithmIdentifier1;
    this.asL = paramAlgorithmIdentifier2;
    this.asZ = paramASN1Integer1;
    this.ata = paramASN1Integer2;
  }
  
  public static RSASSAPSSparams ʺ(Object paramObject)
  {
    if ((paramObject instanceof RSASSAPSSparams)) {
      return (RSASSAPSSparams)paramObject;
    }
    if (paramObject != null) {
      return new RSASSAPSSparams(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (!this.akB.equals(asN)) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.akB));
    }
    if (!this.asL.equals(asO)) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.asL));
    }
    if (!this.asZ.equals(atb)) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 2, this.asZ));
    }
    if (!this.ata.equals(atc)) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 3, this.ata));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public AlgorithmIdentifier ga()
  {
    return this.akB;
  }
  
  public AlgorithmIdentifier gb()
  {
    return this.asL;
  }
  
  public BigInteger gj()
  {
    return this.asZ.eA();
  }
  
  public BigInteger gk()
  {
    return this.ata.eA();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.RSASSAPSSparams
 * JD-Core Version:    0.7.0.1
 */