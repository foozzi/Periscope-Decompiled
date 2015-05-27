package org.spongycastle.asn1.nist;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.sec.SECNamedCurves;
import org.spongycastle.asn1.sec.SECObjectIdentifiers;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.util.Strings;

public class NISTNamedCurves
{
  static final Hashtable ahv = new Hashtable();
  static final Hashtable ahw = new Hashtable();
  
  static
  {
    ˊ("B-571", SECObjectIdentifiers.auu);
    ˊ("B-409", SECObjectIdentifiers.aus);
    ˊ("B-283", SECObjectIdentifiers.auc);
    ˊ("B-233", SECObjectIdentifiers.aui);
    ˊ("B-163", SECObjectIdentifiers.aua);
    ˊ("K-571", SECObjectIdentifiers.aut);
    ˊ("K-409", SECObjectIdentifiers.aur);
    ˊ("K-283", SECObjectIdentifiers.aub);
    ˊ("K-233", SECObjectIdentifiers.auh);
    ˊ("K-163", SECObjectIdentifiers.atQ);
    ˊ("P-521", SECObjectIdentifiers.auq);
    ˊ("P-384", SECObjectIdentifiers.aup);
    ˊ("P-256", SECObjectIdentifiers.auw);
    ˊ("P-224", SECObjectIdentifiers.auo);
    ˊ("P-192", SECObjectIdentifiers.auv);
  }
  
  static void ˊ(String paramString, ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    ahv.put(paramString, paramASN1ObjectIdentifier);
    ahw.put(paramASN1ObjectIdentifier, paramString);
  }
  
  public static String ˎ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    return (String)ahw.get(paramASN1ObjectIdentifier);
  }
  
  public static ASN1ObjectIdentifier ϊ(String paramString)
  {
    return (ASN1ObjectIdentifier)ahv.get(Strings.ʟ(paramString));
  }
  
  public static X9ECParameters ג(String paramString)
  {
    paramString = (ASN1ObjectIdentifier)ahv.get(Strings.ʟ(paramString));
    if (paramString != null) {
      return ᐝ(paramString);
    }
    return null;
  }
  
  public static X9ECParameters ᐝ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    return SECNamedCurves.ᐝ(paramASN1ObjectIdentifier);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.nist.NISTNamedCurves
 * JD-Core Version:    0.7.0.1
 */