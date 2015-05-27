package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class Extensions
  extends ASN1Object
{
  private Hashtable azo = new Hashtable();
  private Vector azp = new Vector();
  
  private Extensions(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    while (paramASN1Sequence.hasMoreElements())
    {
      Extension localExtension = Extension.ﹰ(paramASN1Sequence.nextElement());
      this.azo.put(localExtension.hx(), localExtension);
      this.azp.addElement(localExtension.hx());
    }
  }
  
  public static Extensions ﺗ(Object paramObject)
  {
    if ((paramObject instanceof Extensions)) {
      return (Extensions)paramObject;
    }
    if (paramObject != null) {
      return new Extensions(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    Enumeration localEnumeration = this.azp.elements();
    while (localEnumeration.hasMoreElements())
    {
      ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)localEnumeration.nextElement();
      localASN1EncodableVector.ˊ((Extension)this.azo.get(localASN1ObjectIdentifier));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public Enumeration hA()
  {
    return this.azp.elements();
  }
  
  public Extension ʻ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    return (Extension)this.azo.get(paramASN1ObjectIdentifier);
  }
  
  public ASN1Encodable ʼ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    paramASN1ObjectIdentifier = ʻ(paramASN1ObjectIdentifier);
    if (paramASN1ObjectIdentifier != null) {
      return paramASN1ObjectIdentifier.hz();
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.Extensions
 * JD-Core Version:    0.7.0.1
 */