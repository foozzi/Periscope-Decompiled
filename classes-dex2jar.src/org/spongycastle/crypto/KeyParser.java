package org.spongycastle.crypto;

import java.io.InputStream;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;

public abstract interface KeyParser
{
  public abstract AsymmetricKeyParameter ʿ(InputStream paramInputStream);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.KeyParser
 * JD-Core Version:    0.7.0.1
 */