package org.spongycastle.jcajce.provider.util;

import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.ntt.NTTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.util.Integers;

public class SecretKeyUtil
{
  private static Map aZF = new HashMap();
  
  static
  {
    aZF.put(PKCSObjectIdentifiers.aqO.getId(), Integers.valueOf(192));
    aZF.put(NISTObjectIdentifiers.aoj, Integers.valueOf(128));
    aZF.put(NISTObjectIdentifiers.aoq, Integers.valueOf(192));
    aZF.put(NISTObjectIdentifiers.aox, Integers.valueOf(256));
    aZF.put(NTTObjectIdentifiers.aoI, Integers.valueOf(128));
    aZF.put(NTTObjectIdentifiers.aoJ, Integers.valueOf(192));
    aZF.put(NTTObjectIdentifiers.aoK, Integers.valueOf(256));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.util.SecretKeyUtil
 * JD-Core Version:    0.7.0.1
 */