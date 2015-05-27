package org.spongycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class RecordStream
{
  private static int aTW = 16384;
  private TlsProtocol aTX;
  private InputStream aTY;
  private TlsCompression aTZ;
  private TlsCompression aUa;
  private TlsCompression aUb;
  private TlsCipher aUc;
  private TlsCipher aUd;
  private TlsCipher aUe;
  private long aUf;
  private long aUg;
  private ByteArrayOutputStream aUh;
  private TlsHandshakeHash aUi;
  private ProtocolVersion aUj;
  private ProtocolVersion aUk;
  private boolean aUl;
  private int aUm;
  private int aUn;
  private int compressedLimit;
  private OutputStream nx;
  
  private byte[] mA()
  {
    byte[] arrayOfByte = this.aUh.toByteArray();
    this.aUh.reset();
    return arrayOfByte;
  }
  
  private static void ˊ(int paramInt1, int paramInt2, short paramShort)
  {
    if (paramInt1 > paramInt2) {
      throw new TlsFatalAlert(paramShort);
    }
  }
  
  private static void ˋ(short paramShort1, short paramShort2)
  {
    switch (paramShort1)
    {
    default: 
      break;
    case 20: 
    case 21: 
    case 22: 
    case 23: 
    case 24: 
      return;
    }
    throw new TlsFatalAlert(paramShort2);
  }
  
  protected void flush()
  {
    this.nx.flush();
  }
  
  int mr()
  {
    return this.aUm;
  }
  
  ProtocolVersion ms()
  {
    return this.aUj;
  }
  
  void mt()
  {
    if ((this.aTZ == null) || (this.aUc == null)) {
      throw new TlsFatalAlert((short)40);
    }
    this.aUb = this.aTZ;
    this.aUe = this.aUc;
    this.aUg = 0L;
  }
  
  void mu()
  {
    if ((this.aTZ == null) || (this.aUc == null)) {
      throw new TlsFatalAlert((short)40);
    }
    this.aUa = this.aTZ;
    this.aUd = this.aUc;
    this.aUf = 0L;
  }
  
  public boolean mv()
  {
    byte[] arrayOfByte = TlsUtils.ˏ(5, this.aTY);
    if (arrayOfByte == null) {
      return false;
    }
    short s = TlsUtils.ʴ(arrayOfByte, 0);
    ˋ(s, (short)10);
    if (!this.aUl)
    {
      if ((TlsUtils.ˡ(arrayOfByte, 1) & 0xFFFFFF00) != 768) {
        throw new TlsFatalAlert((short)47);
      }
    }
    else
    {
      ProtocolVersion localProtocolVersion = TlsUtils.ˇ(arrayOfByte, 1);
      if (this.aUj == null) {
        this.aUj = localProtocolVersion;
      } else if (!localProtocolVersion.ᐝ(this.aUj)) {
        throw new TlsFatalAlert((short)47);
      }
    }
    int i = TlsUtils.ˆ(arrayOfByte, 3);
    arrayOfByte = ˊ(s, this.aTY, i);
    this.aTX.ˋ(s, arrayOfByte, 0, arrayOfByte.length);
    return true;
  }
  
  void mw()
  {
    this.aUi = this.aUi.lT();
  }
  
  TlsHandshakeHash mx()
  {
    return this.aUi;
  }
  
  TlsHandshakeHash my()
  {
    TlsHandshakeHash localTlsHandshakeHash = this.aUi;
    this.aUi = this.aUi.lV();
    return localTlsHandshakeHash;
  }
  
  protected void mz()
  {
    try
    {
      this.aTY.close();
    }
    catch (IOException localIOException1) {}
    try
    {
      this.nx.close();
      return;
    }
    catch (IOException localIOException2) {}
  }
  
  void ʳ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aUi.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  void ʻ(ProtocolVersion paramProtocolVersion)
  {
    this.aUj = paramProtocolVersion;
  }
  
  void ʼ(ProtocolVersion paramProtocolVersion)
  {
    this.aUk = paramProtocolVersion;
  }
  
  void ˊ(TlsCompression paramTlsCompression, TlsCipher paramTlsCipher)
  {
    this.aTZ = paramTlsCompression;
    this.aUc = paramTlsCipher;
  }
  
  protected void ˊ(short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aUk == null) {
      return;
    }
    ˋ(paramShort, (short)80);
    ˊ(paramInt2, this.aUm, (short)80);
    if ((paramInt2 < 1) && (paramShort != 23)) {
      throw new TlsFatalAlert((short)80);
    }
    if (paramShort == 22) {
      ʳ(paramArrayOfByte, paramInt1, paramInt2);
    }
    Object localObject = this.aUb.ʻ(this.aUh);
    long l;
    if (localObject == this.aUh)
    {
      localObject = this.aUe;
      l = this.aUg;
      this.aUg = (1L + l);
      paramArrayOfByte = ((TlsCipher)localObject).ˊ(l, paramShort, paramArrayOfByte, paramInt1, paramInt2);
    }
    else
    {
      ((OutputStream)localObject).write(paramArrayOfByte, paramInt1, paramInt2);
      ((OutputStream)localObject).flush();
      paramArrayOfByte = mA();
      ˊ(paramArrayOfByte.length, paramInt2 + 1024, (short)80);
      localObject = this.aUe;
      l = this.aUg;
      this.aUg = (1L + l);
      paramArrayOfByte = ((TlsCipher)localObject).ˊ(l, paramShort, paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    ˊ(paramArrayOfByte.length, this.aUn, (short)80);
    localObject = new byte[paramArrayOfByte.length + 5];
    TlsUtils.ˊ(paramShort, (byte[])localObject, 0);
    TlsUtils.ˊ(this.aUk, (byte[])localObject, 1);
    TlsUtils.ʽ(paramArrayOfByte.length, (byte[])localObject, 3);
    System.arraycopy(paramArrayOfByte, 0, localObject, 5, paramArrayOfByte.length);
    this.nx.write((byte[])localObject);
    this.nx.flush();
  }
  
  protected byte[] ˊ(short paramShort, InputStream paramInputStream, int paramInt)
  {
    ˊ(paramInt, this.aUn, (short)22);
    paramInputStream = TlsUtils.ᐝ(paramInt, paramInputStream);
    Object localObject = this.aUd;
    long l = this.aUf;
    this.aUf = (1L + l);
    localObject = ((TlsCipher)localObject).ˋ(l, paramShort, paramInputStream, 0, paramInputStream.length);
    ˊ(localObject.length, this.compressedLimit, (short)22);
    OutputStream localOutputStream = this.aUa.ʼ(this.aUh);
    paramInputStream = (InputStream)localObject;
    if (localOutputStream != this.aUh)
    {
      localOutputStream.write((byte[])localObject, 0, localObject.length);
      localOutputStream.flush();
      paramInputStream = mA();
    }
    ˊ(paramInputStream.length, this.aUm, (short)30);
    if ((paramInputStream.length < 1) && (paramShort != 23)) {
      throw new TlsFatalAlert((short)47);
    }
    return paramInputStream;
  }
  
  void Ꮮ(int paramInt)
  {
    this.aUm = paramInt;
    this.compressedLimit = (this.aUm + 1024);
    this.aUn = (this.compressedLimit + 1024);
  }
  
  void ﹷ(boolean paramBoolean)
  {
    this.aUl = paramBoolean;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.RecordStream
 * JD-Core Version:    0.7.0.1
 */