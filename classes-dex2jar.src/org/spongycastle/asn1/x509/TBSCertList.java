package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.ASN1UTCTime;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x500.X500Name;

public class TBSCertList
  extends ASN1Object
{
  Time aAB;
  Time aAC;
  ASN1Sequence aAD;
  Extensions aAE;
  ASN1Integer aek;
  X500Name aps;
  AlgorithmIdentifier ayg;
  
  public TBSCertList(ASN1Sequence paramASN1Sequence)
  {
    if ((paramASN1Sequence.size() < 3) || (paramASN1Sequence.size() > 7)) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    int i = 0;
    if ((paramASN1Sequence.ϲ(0) instanceof ASN1Integer))
    {
      i = 0 + 1;
      this.aek = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(0));
    }
    else
    {
      this.aek = null;
    }
    int j = i + 1;
    this.ayg = AlgorithmIdentifier.ᓪ(paramASN1Sequence.ϲ(i));
    i = j + 1;
    this.aps = X500Name.ᒾ(paramASN1Sequence.ϲ(j));
    j = i + 1;
    this.aAB = Time.ᒃ(paramASN1Sequence.ϲ(i));
    i = j;
    if (j < paramASN1Sequence.size()) {
      if ((!(paramASN1Sequence.ϲ(j) instanceof ASN1UTCTime)) && (!(paramASN1Sequence.ϲ(j) instanceof ASN1GeneralizedTime)))
      {
        i = j;
        if (!(paramASN1Sequence.ϲ(j) instanceof Time)) {}
      }
      else
      {
        i = j + 1;
        this.aAC = Time.ᒃ(paramASN1Sequence.ϲ(j));
      }
    }
    j = i;
    if (i < paramASN1Sequence.size())
    {
      j = i;
      if (!(paramASN1Sequence.ϲ(i) instanceof DERTaggedObject))
      {
        j = i + 1;
        this.aAD = ASN1Sequence.ﹾ(paramASN1Sequence.ϲ(i));
      }
    }
    if ((j < paramASN1Sequence.size()) && ((paramASN1Sequence.ϲ(j) instanceof DERTaggedObject))) {
      this.aAE = Extensions.ﺗ(ASN1Sequence.ᐝ((ASN1TaggedObject)paramASN1Sequence.ϲ(j), true));
    }
  }
  
  public static TBSCertList נ(Object paramObject)
  {
    if ((paramObject instanceof TBSCertList)) {
      return (TBSCertList)paramObject;
    }
    if (paramObject != null) {
      return new TBSCertList(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.aek != null) {
      localASN1EncodableVector.ˊ(this.aek);
    }
    localASN1EncodableVector.ˊ(this.ayg);
    localASN1EncodableVector.ˊ(this.aps);
    localASN1EncodableVector.ˊ(this.aAB);
    if (this.aAC != null) {
      localASN1EncodableVector.ˊ(this.aAC);
    }
    if (this.aAD != null) {
      localASN1EncodableVector.ˊ(this.aAD);
    }
    if (this.aAE != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(0, this.aAE));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public Extensions gX()
  {
    return this.aAE;
  }
  
  public AlgorithmIdentifier hX()
  {
    return this.ayg;
  }
  
  public int he()
  {
    if (this.aek == null) {
      return 1;
    }
    return this.aek.eA().intValue() + 1;
  }
  
  public X500Name hf()
  {
    return this.aps;
  }
  
  public Enumeration hn()
  {
    if (this.aAD == null) {
      return new EmptyEnumeration(null);
    }
    return new RevokedCertificatesEnumeration(this.aAD.eT());
  }
  
  public Time ho()
  {
    return this.aAB;
  }
  
  public Time hp()
  {
    return this.aAC;
  }
  
  public static class CRLEntry
    extends ASN1Object
  {
    Extensions aAF;
    ASN1Sequence agu;
    
    private CRLEntry(ASN1Sequence paramASN1Sequence)
    {
      if ((paramASN1Sequence.size() < 2) || (paramASN1Sequence.size() > 3)) {
        throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
      }
      this.agu = paramASN1Sequence;
    }
    
    public static CRLEntry ר(Object paramObject)
    {
      if ((paramObject instanceof CRLEntry)) {
        return (CRLEntry)paramObject;
      }
      if (paramObject != null) {
        return new CRLEntry(ASN1Sequence.ﹾ(paramObject));
      }
      return null;
    }
    
    public ASN1Primitive ez()
    {
      return this.agu;
    }
    
    public Extensions gX()
    {
      if ((this.aAF == null) && (this.agu.size() == 3)) {
        this.aAF = Extensions.ﺗ(this.agu.ϲ(2));
      }
      return this.aAF;
    }
    
    public ASN1Integer hY()
    {
      return ASN1Integer.ﯨ(this.agu.ϲ(0));
    }
    
    public Time hZ()
    {
      return Time.ᒃ(this.agu.ϲ(1));
    }
    
    public boolean hasExtensions()
    {
      return this.agu.size() == 3;
    }
  }
  
  class EmptyEnumeration
    implements Enumeration
  {
    private EmptyEnumeration() {}
    
    public boolean hasMoreElements()
    {
      return false;
    }
    
    public Object nextElement()
    {
      return null;
    }
  }
  
  class RevokedCertificatesEnumeration
    implements Enumeration
  {
    private final Enumeration aAH;
    
    RevokedCertificatesEnumeration(Enumeration paramEnumeration)
    {
      this.aAH = paramEnumeration;
    }
    
    public boolean hasMoreElements()
    {
      return this.aAH.hasMoreElements();
    }
    
    public Object nextElement()
    {
      return TBSCertList.CRLEntry.ר(this.aAH.nextElement());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.TBSCertList
 * JD-Core Version:    0.7.0.1
 */