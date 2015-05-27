package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;

public class X509Extensions
  extends ASN1Object
{
  public static final ASN1ObjectIdentifier aBA = new ASN1ObjectIdentifier("2.5.29.33");
  public static final ASN1ObjectIdentifier aBB = new ASN1ObjectIdentifier("2.5.29.35");
  public static final ASN1ObjectIdentifier aBC = new ASN1ObjectIdentifier("2.5.29.36");
  public static final ASN1ObjectIdentifier aBD = new ASN1ObjectIdentifier("2.5.29.37");
  public static final ASN1ObjectIdentifier aBE = new ASN1ObjectIdentifier("2.5.29.46");
  public static final ASN1ObjectIdentifier aBF = new ASN1ObjectIdentifier("2.5.29.54");
  public static final ASN1ObjectIdentifier aBG = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.1");
  public static final ASN1ObjectIdentifier aBH = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.11");
  public static final ASN1ObjectIdentifier aBI = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.12");
  public static final ASN1ObjectIdentifier aBJ = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.2");
  public static final ASN1ObjectIdentifier aBK = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.3");
  public static final ASN1ObjectIdentifier aBL = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.4");
  public static final ASN1ObjectIdentifier aBM = new ASN1ObjectIdentifier("2.5.29.56");
  public static final ASN1ObjectIdentifier aBN = new ASN1ObjectIdentifier("2.5.29.55");
  public static final ASN1ObjectIdentifier aBj = new ASN1ObjectIdentifier("2.5.29.9");
  public static final ASN1ObjectIdentifier aBk = new ASN1ObjectIdentifier("2.5.29.14");
  public static final ASN1ObjectIdentifier aBl = new ASN1ObjectIdentifier("2.5.29.15");
  public static final ASN1ObjectIdentifier aBm = new ASN1ObjectIdentifier("2.5.29.16");
  public static final ASN1ObjectIdentifier aBn = new ASN1ObjectIdentifier("2.5.29.17");
  public static final ASN1ObjectIdentifier aBo = new ASN1ObjectIdentifier("2.5.29.18");
  public static final ASN1ObjectIdentifier aBp = new ASN1ObjectIdentifier("2.5.29.19");
  public static final ASN1ObjectIdentifier aBq = new ASN1ObjectIdentifier("2.5.29.20");
  public static final ASN1ObjectIdentifier aBr = new ASN1ObjectIdentifier("2.5.29.21");
  public static final ASN1ObjectIdentifier aBs = new ASN1ObjectIdentifier("2.5.29.23");
  public static final ASN1ObjectIdentifier aBt = new ASN1ObjectIdentifier("2.5.29.24");
  public static final ASN1ObjectIdentifier aBu = new ASN1ObjectIdentifier("2.5.29.27");
  public static final ASN1ObjectIdentifier aBv = new ASN1ObjectIdentifier("2.5.29.28");
  public static final ASN1ObjectIdentifier aBw = new ASN1ObjectIdentifier("2.5.29.29");
  public static final ASN1ObjectIdentifier aBx = new ASN1ObjectIdentifier("2.5.29.30");
  public static final ASN1ObjectIdentifier aBy = new ASN1ObjectIdentifier("2.5.29.31");
  public static final ASN1ObjectIdentifier aBz = new ASN1ObjectIdentifier("2.5.29.32");
  private Hashtable azo = new Hashtable();
  private Vector azp = new Vector();
  
  public X509Extensions(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    while (paramASN1Sequence.hasMoreElements())
    {
      ASN1Sequence localASN1Sequence = ASN1Sequence.ﹾ(paramASN1Sequence.nextElement());
      if (localASN1Sequence.size() == 3) {
        this.azo.put(localASN1Sequence.ϲ(0), new X509Extension(ASN1Boolean.ᵙ(localASN1Sequence.ϲ(1)), ASN1OctetString.ﹸ(localASN1Sequence.ϲ(2))));
      } else if (localASN1Sequence.size() == 2) {
        this.azo.put(localASN1Sequence.ϲ(0), new X509Extension(false, ASN1OctetString.ﹸ(localASN1Sequence.ϲ(1))));
      } else {
        throw new IllegalArgumentException("Bad sequence size: " + localASN1Sequence.size());
      }
      this.azp.addElement(localASN1Sequence.ϲ(0));
    }
  }
  
  public static X509Extensions ᕪ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof X509Extensions))) {
      return (X509Extensions)paramObject;
    }
    if ((paramObject instanceof ASN1Sequence)) {
      return new X509Extensions((ASN1Sequence)paramObject);
    }
    if ((paramObject instanceof Extensions)) {
      return new X509Extensions((ASN1Sequence)((Extensions)paramObject).ez());
    }
    if ((paramObject instanceof ASN1TaggedObject)) {
      return ᕪ(((ASN1TaggedObject)paramObject).eY());
    }
    throw new IllegalArgumentException("illegal object in getInstance: " + paramObject.getClass().getName());
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    Enumeration localEnumeration = this.azp.elements();
    while (localEnumeration.hasMoreElements())
    {
      ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)localEnumeration.nextElement();
      X509Extension localX509Extension = (X509Extension)this.azo.get(localASN1ObjectIdentifier);
      ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
      localASN1EncodableVector2.ˊ(localASN1ObjectIdentifier);
      if (localX509Extension.isCritical()) {
        localASN1EncodableVector2.ˊ(ASN1Boolean.aai);
      }
      localASN1EncodableVector2.ˊ(localX509Extension.ii());
      localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    }
    return new DERSequence(localASN1EncodableVector1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.X509Extensions
 * JD-Core Version:    0.7.0.1
 */