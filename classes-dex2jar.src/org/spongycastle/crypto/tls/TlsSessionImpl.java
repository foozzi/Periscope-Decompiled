package org.spongycastle.crypto.tls;

import org.spongycastle.util.Arrays;

class TlsSessionImpl
  implements TlsSession
{
  SessionParameters aTg;
  final byte[] aVW;
  
  TlsSessionImpl(byte[] paramArrayOfByte, SessionParameters paramSessionParameters)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("'sessionID' cannot be null");
    }
    if ((paramArrayOfByte.length < 1) || (paramArrayOfByte.length > 32)) {
      throw new IllegalArgumentException("'sessionID' must have length between 1 and 32 bytes, inclusive");
    }
    this.aVW = Arrays.І(paramArrayOfByte);
    this.aTg = paramSessionParameters;
  }
  
  public void invalidate()
  {
    try
    {
      if (this.aTg != null)
      {
        this.aTg.clear();
        this.aTg = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public byte[] nt()
  {
    try
    {
      byte[] arrayOfByte = this.aVW;
      return arrayOfByte;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsSessionImpl
 * JD-Core Version:    0.7.0.1
 */