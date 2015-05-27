package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;

public class NewSessionTicket
{
  protected long aTO;
  protected byte[] aTP;
  
  public NewSessionTicket(long paramLong, byte[] paramArrayOfByte)
  {
    this.aTO = paramLong;
    this.aTP = paramArrayOfByte;
  }
  
  public static NewSessionTicket ˑ(InputStream paramInputStream)
  {
    return new NewSessionTicket(TlsUtils.י(paramInputStream), TlsUtils.ᴵ(paramInputStream));
  }
  
  public void encode(OutputStream paramOutputStream)
  {
    TlsUtils.ˊ(this.aTO, paramOutputStream);
    TlsUtils.ˎ(this.aTP, paramOutputStream);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.NewSessionTicket
 * JD-Core Version:    0.7.0.1
 */