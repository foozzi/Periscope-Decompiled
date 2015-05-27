package org.spongycastle.asn1.x509;

import java.io.IOException;
import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class Extension
  extends ASN1Object
{
  public static final ASN1ObjectIdentifier ayH = new ASN1ObjectIdentifier("2.5.29.9");
  public static final ASN1ObjectIdentifier ayI = new ASN1ObjectIdentifier("2.5.29.14");
  public static final ASN1ObjectIdentifier ayJ = new ASN1ObjectIdentifier("2.5.29.15");
  public static final ASN1ObjectIdentifier ayK = new ASN1ObjectIdentifier("2.5.29.16");
  public static final ASN1ObjectIdentifier ayL = new ASN1ObjectIdentifier("2.5.29.17");
  public static final ASN1ObjectIdentifier ayM = new ASN1ObjectIdentifier("2.5.29.18");
  public static final ASN1ObjectIdentifier ayN = new ASN1ObjectIdentifier("2.5.29.19");
  public static final ASN1ObjectIdentifier ayO = new ASN1ObjectIdentifier("2.5.29.20");
  public static final ASN1ObjectIdentifier ayP = new ASN1ObjectIdentifier("2.5.29.21");
  public static final ASN1ObjectIdentifier ayQ = new ASN1ObjectIdentifier("2.5.29.23");
  public static final ASN1ObjectIdentifier ayR = new ASN1ObjectIdentifier("2.5.29.24");
  public static final ASN1ObjectIdentifier ayS = new ASN1ObjectIdentifier("2.5.29.27");
  public static final ASN1ObjectIdentifier ayT = new ASN1ObjectIdentifier("2.5.29.28");
  public static final ASN1ObjectIdentifier ayU = new ASN1ObjectIdentifier("2.5.29.29");
  public static final ASN1ObjectIdentifier ayV = new ASN1ObjectIdentifier("2.5.29.30");
  public static final ASN1ObjectIdentifier ayW = new ASN1ObjectIdentifier("2.5.29.31");
  public static final ASN1ObjectIdentifier ayX = new ASN1ObjectIdentifier("2.5.29.32");
  public static final ASN1ObjectIdentifier ayY = new ASN1ObjectIdentifier("2.5.29.33");
  public static final ASN1ObjectIdentifier ayZ = new ASN1ObjectIdentifier("2.5.29.35");
  public static final ASN1ObjectIdentifier aza = new ASN1ObjectIdentifier("2.5.29.36");
  public static final ASN1ObjectIdentifier azb = new ASN1ObjectIdentifier("2.5.29.37");
  public static final ASN1ObjectIdentifier azc = new ASN1ObjectIdentifier("2.5.29.46");
  public static final ASN1ObjectIdentifier azd = new ASN1ObjectIdentifier("2.5.29.54");
  public static final ASN1ObjectIdentifier aze = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.1");
  public static final ASN1ObjectIdentifier azf = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.11");
  public static final ASN1ObjectIdentifier azg = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.12");
  public static final ASN1ObjectIdentifier azh = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.2");
  public static final ASN1ObjectIdentifier azi = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.3");
  public static final ASN1ObjectIdentifier azj = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.4");
  public static final ASN1ObjectIdentifier azk = new ASN1ObjectIdentifier("2.5.29.56");
  public static final ASN1ObjectIdentifier azl = new ASN1ObjectIdentifier("2.5.29.55");
  private ASN1OctetString akY;
  private ASN1ObjectIdentifier azm;
  private boolean azn;
  
  private Extension(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() == 2)
    {
      this.azm = ASN1ObjectIdentifier.ﹴ(paramASN1Sequence.ϲ(0));
      this.azn = false;
      this.akY = ASN1OctetString.ﹸ(paramASN1Sequence.ϲ(1));
      return;
    }
    if (paramASN1Sequence.size() == 3)
    {
      this.azm = ASN1ObjectIdentifier.ﹴ(paramASN1Sequence.ϲ(0));
      this.azn = ASN1Boolean.ᵙ(paramASN1Sequence.ϲ(1)).ew();
      this.akY = ASN1OctetString.ﹸ(paramASN1Sequence.ϲ(2));
      return;
    }
    throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
  }
  
  private static ASN1Primitive ˊ(Extension paramExtension)
  {
    try
    {
      paramExtension = ASN1Primitive.ՙ(paramExtension.hy().eM());
      return paramExtension;
    }
    catch (IOException paramExtension)
    {
      throw new IllegalArgumentException("can't convert extension: " + paramExtension);
    }
  }
  
  public static Extension ﹰ(Object paramObject)
  {
    if ((paramObject instanceof Extension)) {
      return (Extension)paramObject;
    }
    if (paramObject != null) {
      return new Extension(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Extension)) {
      return false;
    }
    paramObject = (Extension)paramObject;
    return (paramObject.hx().equals(hx())) && (paramObject.hy().equals(hy())) && (paramObject.isCritical() == isCritical());
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.azm);
    if (this.azn) {
      localASN1EncodableVector.ˊ(ASN1Boolean.ᕑ(true));
    }
    localASN1EncodableVector.ˊ(this.akY);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public int hashCode()
  {
    if (isCritical()) {
      return hy().hashCode() ^ hx().hashCode();
    }
    return hy().hashCode() ^ hx().hashCode() ^ 0xFFFFFFFF;
  }
  
  public ASN1ObjectIdentifier hx()
  {
    return this.azm;
  }
  
  public ASN1OctetString hy()
  {
    return this.akY;
  }
  
  public ASN1Encodable hz()
  {
    return ˊ(this);
  }
  
  public boolean isCritical()
  {
    return this.azn;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.Extension
 * JD-Core Version:    0.7.0.1
 */