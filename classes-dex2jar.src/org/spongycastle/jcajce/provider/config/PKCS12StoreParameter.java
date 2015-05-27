package org.spongycastle.jcajce.provider.config;

import java.io.OutputStream;
import java.security.KeyStore.LoadStoreParameter;
import java.security.KeyStore.ProtectionParameter;

public class PKCS12StoreParameter
  implements KeyStore.LoadStoreParameter
{
  private final KeyStore.ProtectionParameter aYs;
  private final boolean aYt;
  private final OutputStream out;
  
  public PKCS12StoreParameter(OutputStream paramOutputStream, KeyStore.ProtectionParameter paramProtectionParameter, boolean paramBoolean)
  {
    this.out = paramOutputStream;
    this.aYs = paramProtectionParameter;
    this.aYt = paramBoolean;
  }
  
  public OutputStream getOutputStream()
  {
    return this.out;
  }
  
  public KeyStore.ProtectionParameter getProtectionParameter()
  {
    return this.aYs;
  }
  
  public boolean nM()
  {
    return this.aYt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.config.PKCS12StoreParameter
 * JD-Core Version:    0.7.0.1
 */