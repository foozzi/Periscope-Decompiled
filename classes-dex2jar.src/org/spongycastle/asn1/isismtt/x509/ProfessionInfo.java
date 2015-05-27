package org.spongycastle.asn1.isismtt.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class ProfessionInfo
  extends ASN1Object
{
  public static final ASN1ObjectIdentifier amY = new ASN1ObjectIdentifier(NamingAuthority.amR + ".1");
  public static final ASN1ObjectIdentifier amZ = new ASN1ObjectIdentifier(NamingAuthority.amR + ".2");
  public static final ASN1ObjectIdentifier ana = new ASN1ObjectIdentifier(NamingAuthority.amR + ".3");
  public static final ASN1ObjectIdentifier anb = new ASN1ObjectIdentifier(NamingAuthority.amR + ".4");
  public static final ASN1ObjectIdentifier anc = new ASN1ObjectIdentifier(NamingAuthority.amR + ".5");
  public static final ASN1ObjectIdentifier and = new ASN1ObjectIdentifier(NamingAuthority.amR + ".6");
  public static final ASN1ObjectIdentifier ane = new ASN1ObjectIdentifier(NamingAuthority.amR + ".7");
  public static final ASN1ObjectIdentifier anf = new ASN1ObjectIdentifier(NamingAuthority.amR + ".8");
  public static final ASN1ObjectIdentifier ang = new ASN1ObjectIdentifier(NamingAuthority.amR + ".9");
  public static final ASN1ObjectIdentifier anh = new ASN1ObjectIdentifier(NamingAuthority.amR + ".10");
  public static final ASN1ObjectIdentifier ani = new ASN1ObjectIdentifier(NamingAuthority.amR + ".11");
  public static final ASN1ObjectIdentifier anj = new ASN1ObjectIdentifier(NamingAuthority.amR + ".12");
  public static final ASN1ObjectIdentifier ank = new ASN1ObjectIdentifier(NamingAuthority.amR + ".13");
  public static final ASN1ObjectIdentifier anl = new ASN1ObjectIdentifier(NamingAuthority.amR + ".14");
  public static final ASN1ObjectIdentifier anm = new ASN1ObjectIdentifier(NamingAuthority.amR + ".15");
  public static final ASN1ObjectIdentifier ann = new ASN1ObjectIdentifier(NamingAuthority.amR + ".16");
  public static final ASN1ObjectIdentifier ano = new ASN1ObjectIdentifier(NamingAuthority.amR + ".17");
  public static final ASN1ObjectIdentifier anp = new ASN1ObjectIdentifier(NamingAuthority.amR + ".18");
  public static final ASN1ObjectIdentifier anq = new ASN1ObjectIdentifier(NamingAuthority.amR + ".19");
  private NamingAuthority amL;
  private ASN1Sequence anr;
  private ASN1Sequence ans;
  private String ant;
  private ASN1OctetString anu;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.amL != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.amL));
    }
    localASN1EncodableVector.ˊ(this.anr);
    if (this.ans != null) {
      localASN1EncodableVector.ˊ(this.ans);
    }
    if (this.ant != null) {
      localASN1EncodableVector.ˊ(new DERPrintableString(this.ant, true));
    }
    if (this.anu != null) {
      localASN1EncodableVector.ˊ(this.anu);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.isismtt.x509.ProfessionInfo
 * JD-Core Version:    0.7.0.1
 */