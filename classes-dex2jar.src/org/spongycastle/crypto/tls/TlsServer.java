package org.spongycastle.crypto.tls;

import java.util.Hashtable;
import java.util.Vector;

public abstract interface TlsServer
  extends TlsPeer
{
  public abstract ProtocolVersion lJ();
  
  public abstract TlsKeyExchange mi();
  
  public abstract int ni();
  
  public abstract short nj();
  
  public abstract Hashtable nk();
  
  public abstract Vector nl();
  
  public abstract TlsCredentials nm();
  
  public abstract CertificateStatus nn();
  
  public abstract CertificateRequest no();
  
  public abstract NewSessionTicket np();
  
  public abstract void ʻ(Vector paramVector);
  
  public abstract void ʽ(ProtocolVersion paramProtocolVersion);
  
  public abstract void ˊ(short[] paramArrayOfShort);
  
  public abstract void ͺ(int[] paramArrayOfInt);
  
  public abstract void ـ(Hashtable paramHashtable);
  
  public abstract void ᐝ(Certificate paramCertificate);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsServer
 * JD-Core Version:    0.7.0.1
 */