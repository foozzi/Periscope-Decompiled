package org.spongycastle.asn1.x500;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x500.style.BCStyle;

public class X500Name
  extends ASN1Object
  implements ASN1Choice
{
  private static X500NameStyle awg = BCStyle.awn;
  private boolean awh;
  private int awi;
  private X500NameStyle awj;
  private RDN[] awk;
  
  public X500Name(String paramString)
  {
    this(awg, paramString);
  }
  
  private X500Name(ASN1Sequence paramASN1Sequence)
  {
    this(awg, paramASN1Sequence);
  }
  
  public X500Name(X500NameStyle paramX500NameStyle, String paramString)
  {
    this(paramX500NameStyle.ר(paramString));
    this.awj = paramX500NameStyle;
  }
  
  private X500Name(X500NameStyle paramX500NameStyle, ASN1Sequence paramASN1Sequence)
  {
    this.awj = paramX500NameStyle;
    this.awk = new RDN[paramASN1Sequence.size()];
    int i = 0;
    paramX500NameStyle = paramASN1Sequence.eT();
    while (paramX500NameStyle.hasMoreElements())
    {
      paramASN1Sequence = this.awk;
      int j = i + 1;
      paramASN1Sequence[i] = RDN.ᑦ(paramX500NameStyle.nextElement());
      i = j;
    }
  }
  
  public X500Name(X500NameStyle paramX500NameStyle, RDN[] paramArrayOfRDN)
  {
    this.awk = paramArrayOfRDN;
    this.awj = paramX500NameStyle;
  }
  
  public X500Name(RDN[] paramArrayOfRDN)
  {
    this(awg, paramArrayOfRDN);
  }
  
  public static X500Name ʾ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    return ᒾ(ASN1Sequence.ᐝ(paramASN1TaggedObject, true));
  }
  
  public static X500Name ˊ(X500NameStyle paramX500NameStyle, Object paramObject)
  {
    if ((paramObject instanceof X500Name)) {
      return ˊ(paramX500NameStyle, ((X500Name)paramObject).ez());
    }
    if (paramObject != null) {
      return new X500Name(paramX500NameStyle, ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public static X500Name ᒾ(Object paramObject)
  {
    if ((paramObject instanceof X500Name)) {
      return (X500Name)paramObject;
    }
    if (paramObject != null) {
      return new X500Name(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((!(paramObject instanceof X500Name)) && (!(paramObject instanceof ASN1Sequence))) {
      return false;
    }
    ASN1Primitive localASN1Primitive = ((ASN1Encodable)paramObject).ez();
    if (ez().equals(localASN1Primitive)) {
      return true;
    }
    try
    {
      boolean bool = this.awj.ˊ(this, new X500Name(ASN1Sequence.ﹾ(((ASN1Encodable)paramObject).ez())));
      return bool;
    }
    catch (Exception paramObject) {}
    return false;
  }
  
  public ASN1Primitive ez()
  {
    return new DERSequence(this.awk);
  }
  
  public RDN[] gK()
  {
    RDN[] arrayOfRDN = new RDN[this.awk.length];
    System.arraycopy(this.awk, 0, arrayOfRDN, 0, arrayOfRDN.length);
    return arrayOfRDN;
  }
  
  public int hashCode()
  {
    if (this.awh) {
      return this.awi;
    }
    this.awh = true;
    this.awi = this.awj.ˊ(this);
    return this.awi;
  }
  
  public String toString()
  {
    return this.awj.ˋ(this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.X500Name
 * JD-Core Version:    0.7.0.1
 */