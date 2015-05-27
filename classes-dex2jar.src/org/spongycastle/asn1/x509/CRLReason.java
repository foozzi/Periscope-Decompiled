package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.util.Integers;

public class CRLReason
  extends ASN1Object
{
  private static final String[] ayr = { "unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise" };
  private static final Hashtable ays = new Hashtable();
  private ASN1Enumerated aiA;
  
  private CRLReason(int paramInt)
  {
    this.aiA = new ASN1Enumerated(paramInt);
  }
  
  public static CRLReason ך(int paramInt)
  {
    Integer localInteger = Integers.valueOf(paramInt);
    if (!ays.containsKey(localInteger)) {
      ays.put(localInteger, new CRLReason(paramInt));
    }
    return (CRLReason)ays.get(localInteger);
  }
  
  public static CRLReason Ⅰ(Object paramObject)
  {
    if ((paramObject instanceof CRLReason)) {
      return (CRLReason)paramObject;
    }
    if (paramObject != null) {
      return ך(ASN1Enumerated.ᵛ(paramObject).eA().intValue());
    }
    return null;
  }
  
  public BigInteger eA()
  {
    return this.aiA.eA();
  }
  
  public ASN1Primitive ez()
  {
    return this.aiA;
  }
  
  public String toString()
  {
    int i = eA().intValue();
    String str;
    if ((i < 0) || (i > 10)) {
      str = "invalid";
    } else {
      str = ayr[i];
    }
    return "CRLReason: " + str;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.CRLReason
 * JD-Core Version:    0.7.0.1
 */