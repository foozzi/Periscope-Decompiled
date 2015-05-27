package org.spongycastle.crypto.encodings;

import java.security.PrivilegedAction;

class PKCS1Encoding$1
  implements PrivilegedAction
{
  PKCS1Encoding$1(PKCS1Encoding paramPKCS1Encoding) {}
  
  public Object run()
  {
    return System.getProperty("org.spongycastle.pkcs1.strict");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.encodings.PKCS1Encoding.1
 * JD-Core Version:    0.7.0.1
 */