package org.spongycastle.crypto.tls;

import java.util.Hashtable;

public class DTLSServerProtocol
  extends DTLSProtocol
{
  public static class ServerHandshakeState
  {
    int aSI = -1;
    short aSJ = -1;
    TlsCredentials aTA = null;
    short aTB = -1;
    Certificate aTC = null;
    boolean aTm = false;
    short aTn = -1;
    boolean aTo = false;
    boolean aTp = false;
    TlsKeyExchange aTq = null;
    CertificateRequest aTt = null;
    TlsServer aTx = null;
    TlsServerContextImpl aTy = null;
    Hashtable aTz = null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.DTLSServerProtocol
 * JD-Core Version:    0.7.0.1
 */