package org.spongycastle.crypto.tls;

import org.spongycastle.util.Strings;

public final class ProtocolVersion
{
  public static final ProtocolVersion aTQ = new ProtocolVersion(768, "SSL 3.0");
  public static final ProtocolVersion aTR = new ProtocolVersion(769, "TLS 1.0");
  public static final ProtocolVersion aTS = new ProtocolVersion(770, "TLS 1.1");
  public static final ProtocolVersion aTT = new ProtocolVersion(771, "TLS 1.2");
  public static final ProtocolVersion aTU = new ProtocolVersion(65279, "DTLS 1.0");
  public static final ProtocolVersion aTV = new ProtocolVersion(65277, "DTLS 1.2");
  private String name;
  private int version;
  
  private ProtocolVersion(int paramInt, String paramString)
  {
    this.version = (0xFFFF & paramInt);
    this.name = paramString;
  }
  
  private static ProtocolVersion ˏ(int paramInt1, int paramInt2, String paramString)
  {
    TlsUtils.ᴰ(paramInt1);
    TlsUtils.ᴰ(paramInt2);
    paramInt1 = paramInt1 << 8 | paramInt2;
    String str = Strings.ʟ(Integer.toHexString(0x10000 | paramInt1).substring(1));
    return new ProtocolVersion(paramInt1, paramString + " 0x" + str);
  }
  
  public static ProtocolVersion ᔊ(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      break;
    case 3: 
      switch (paramInt2)
      {
      default: 
        break;
      case 0: 
        return aTQ;
      case 1: 
        return aTR;
      case 2: 
        return aTS;
      case 3: 
        return aTT;
      }
      return ˏ(paramInt1, paramInt2, "TLS");
    case 254: 
      switch (paramInt2)
      {
      default: 
        break;
      case 255: 
        return aTU;
      case 254: 
        throw new TlsFatalAlert((short)47);
      case 253: 
        return aTV;
      }
      return ˏ(paramInt1, paramInt2, "DTLS");
    }
    throw new TlsFatalAlert((short)47);
  }
  
  public boolean equals(Object paramObject)
  {
    return (this == paramObject) || (((paramObject instanceof ProtocolVersion)) && (ᐝ((ProtocolVersion)paramObject)));
  }
  
  public int getMajorVersion()
  {
    return this.version >> 8;
  }
  
  public int getMinorVersion()
  {
    return this.version & 0xFF;
  }
  
  public int hashCode()
  {
    return this.version;
  }
  
  public boolean mo()
  {
    return getMajorVersion() == 254;
  }
  
  public boolean mp()
  {
    return this == aTQ;
  }
  
  public ProtocolVersion mq()
  {
    if (!mo()) {
      return this;
    }
    if (this == aTU) {
      return aTS;
    }
    return aTT;
  }
  
  public String toString()
  {
    return this.name;
  }
  
  public boolean ˏ(ProtocolVersion paramProtocolVersion)
  {
    if (getMajorVersion() != paramProtocolVersion.getMajorVersion()) {
      return false;
    }
    int i = paramProtocolVersion.getMinorVersion() - getMinorVersion();
    if (mo()) {
      return i <= 0;
    }
    return i >= 0;
  }
  
  public boolean ᐝ(ProtocolVersion paramProtocolVersion)
  {
    return (paramProtocolVersion != null) && (this.version == paramProtocolVersion.version);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.ProtocolVersion
 * JD-Core Version:    0.7.0.1
 */