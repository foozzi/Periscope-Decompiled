package org.spongycastle.jcajce.provider.util;

import java.security.PrivateKey;
import java.security.PublicKey;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;

public abstract interface AsymmetricKeyInfoConverter
{
  public abstract PrivateKey ˊ(PrivateKeyInfo paramPrivateKeyInfo);
  
  public abstract PublicKey ˋ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
 * JD-Core Version:    0.7.0.1
 */