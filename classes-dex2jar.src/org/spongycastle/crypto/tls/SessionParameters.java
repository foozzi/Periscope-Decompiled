package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.util.Hashtable;
import org.spongycastle.util.Arrays;

public final class SessionParameters
{
  private byte[] aUE;
  private int aUu;
  private short aUv;
  private byte[] aUy;
  
  public void clear()
  {
    if (this.aUy != null) {
      Arrays.fill(this.aUy, (byte)0);
    }
  }
  
  public int mB()
  {
    return this.aUu;
  }
  
  public byte[] mE()
  {
    return this.aUy;
  }
  
  public short mI()
  {
    return this.aUv;
  }
  
  public Hashtable mJ()
  {
    if (this.aUE == null) {
      return null;
    }
    return TlsProtocol.ᐝ(new ByteArrayInputStream(this.aUE));
  }
  
  public static final class Builder
  {
    private byte[] aUE = null;
    private Certificate aUF = null;
    private int aUu = -1;
    private short aUv = -1;
    private byte[] aUy = null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.SessionParameters
 * JD-Core Version:    0.7.0.1
 */