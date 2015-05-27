package org.spongycastle.jcajce.provider.config;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;

public abstract interface ConfigurableProvider
{
  public abstract void ˊ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, AsymmetricKeyInfoConverter paramAsymmetricKeyInfoConverter);
  
  public abstract void ﹶ(String paramString1, String paramString2);
  
  public abstract boolean ﹺ(String paramString1, String paramString2);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.config.ConfigurableProvider
 * JD-Core Version:    0.7.0.1
 */