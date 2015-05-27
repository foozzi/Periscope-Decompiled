package org.spongycastle.crypto.tls;

import java.util.Hashtable;
import java.util.Vector;

public abstract interface TlsClient
  extends TlsPeer
{
  public abstract Vector lD();
  
  public abstract TlsKeyExchange mi();
  
  public abstract TlsAuthentication mn();
  
  public abstract void ʾ(Hashtable paramHashtable);
  
  public abstract void ˊ(NewSessionTicket paramNewSessionTicket);
  
  public abstract void ˊ(ProtocolVersion paramProtocolVersion);
  
  public abstract void ˋ(short paramShort);
  
  public abstract void ˎ(Vector paramVector);
  
  public abstract void τ(int paramInt);
  
  public abstract void ᵛ(byte[] paramArrayOfByte);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsClient
 * JD-Core Version:    0.7.0.1
 */