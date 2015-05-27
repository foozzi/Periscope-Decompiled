package org.spongycastle.jce.provider;

import java.io.OutputStream;
import java.security.KeyStore.LoadStoreParameter;
import java.security.KeyStore.ProtectionParameter;

public class JDKPKCS12StoreParameter
  implements KeyStore.LoadStoreParameter
{
  private KeyStore.ProtectionParameter aYs;
  private OutputStream bbp;
  private boolean bbq;
  
  public OutputStream getOutputStream()
  {
    return this.bbp;
  }
  
  public KeyStore.ProtectionParameter getProtectionParameter()
  {
    return this.aYs;
  }
  
  public boolean oW()
  {
    return this.bbq;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.JDKPKCS12StoreParameter
 * JD-Core Version:    0.7.0.1
 */