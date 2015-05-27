package org.spongycastle.pqc.jcajce.provider.util;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;

public class KeyUtil
{
  public static byte[] ˊ(AlgorithmIdentifier paramAlgorithmIdentifier, ASN1Encodable paramASN1Encodable)
  {
    try
    {
      paramAlgorithmIdentifier = ᐝ(new SubjectPublicKeyInfo(paramAlgorithmIdentifier, paramASN1Encodable));
      return paramAlgorithmIdentifier;
    }
    catch (Exception paramAlgorithmIdentifier) {}
    return null;
  }
  
  public static byte[] ᐝ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    try
    {
      paramSubjectPublicKeyInfo = paramSubjectPublicKeyInfo.getEncoded("DER");
      return paramSubjectPublicKeyInfo;
    }
    catch (Exception paramSubjectPublicKeyInfo) {}
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.util.KeyUtil
 * JD-Core Version:    0.7.0.1
 */