package org.spongycastle.crypto.tls;

import java.util.Hashtable;

public class DTLSClientProtocol
  extends DTLSProtocol
{
  public static class ClientHandshakeState
  {
    int aSI = -1;
    short aSJ = -1;
    TlsClient aTd = null;
    TlsClientContextImpl aTe = null;
    TlsSession aTf = null;
    SessionParameters aTg = null;
    SessionParameters.Builder aTh = null;
    int[] aTi = null;
    short[] aTj = null;
    Hashtable aTk = null;
    byte[] aTl = null;
    boolean aTm = false;
    short aTn = -1;
    boolean aTo = false;
    boolean aTp = false;
    TlsKeyExchange aTq = null;
    TlsAuthentication aTr = null;
    CertificateStatus aTs = null;
    CertificateRequest aTt = null;
    TlsCredentials aTu = null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.DTLSClientProtocol
 * JD-Core Version:    0.7.0.1
 */