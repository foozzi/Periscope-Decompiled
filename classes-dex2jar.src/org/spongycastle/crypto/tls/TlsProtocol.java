package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.crypto.Digest;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;

public abstract class TlsProtocol
{
  protected static final Integer aVB = Integers.valueOf(65281);
  protected static final Integer aVC = Integers.valueOf(35);
  protected SecurityParameters aSM;
  protected TlsSession aTf;
  protected SessionParameters aTg;
  protected int[] aTi;
  protected short[] aTj;
  protected Hashtable aTk;
  protected boolean aTm;
  protected boolean aTo;
  protected boolean aTp;
  protected Hashtable aTz;
  protected Certificate aUF;
  private ByteQueue aVD;
  private ByteQueue aVE;
  private ByteQueue aVF;
  protected RecordStream aVG;
  private volatile boolean aVH;
  private volatile boolean aVI;
  private volatile boolean aVJ;
  private byte[] aVK;
  protected short aVL;
  protected boolean aVM;
  protected boolean aVN;
  private volatile boolean closed;
  
  private void mY()
  {
    int i;
    do
    {
      int j = 0;
      i = j;
      if (this.aVF.size() >= 4)
      {
        byte[] arrayOfByte = new byte[4];
        this.aVF.ˎ(arrayOfByte, 0, 4, 0);
        Object localObject = new ByteArrayInputStream(arrayOfByte);
        short s = TlsUtils.ﾞ((InputStream)localObject);
        int k = TlsUtils.ՙ((InputStream)localObject);
        i = j;
        if (this.aVF.size() >= k + 4)
        {
          localObject = this.aVF.ᔉ(k, 4);
          switch (s)
          {
          default: 
            break;
          case 0: 
            break;
          case 20: 
            if (this.aVK == null)
            {
              boolean bool;
              if (!mN().mM()) {
                bool = true;
              } else {
                bool = false;
              }
              this.aVK = ﹻ(bool);
            }
            break;
          }
          this.aVG.ʳ(arrayOfByte, 0, 4);
          this.aVG.ʳ((byte[])localObject, 0, k);
          ˊ(s, (byte[])localObject);
          i = 1;
        }
      }
    } while (i != 0);
  }
  
  private void mZ() {}
  
  private void na()
  {
    while (this.aVE.size() >= 2)
    {
      byte[] arrayOfByte = this.aVE.ᔉ(2, 0);
      short s1 = (short)arrayOfByte[0];
      short s2 = (short)arrayOfByte[1];
      mO().ˊ(s1, s2);
      if (s1 == 2)
      {
        nd();
        this.aVH = true;
        this.closed = true;
        this.aVG.mz();
        throw new IOException("Internal TLS error, this could be an attack");
      }
      if (s2 == 0) {
        ﹼ(false);
      }
      ʼ(s2);
    }
  }
  
  private void ʴ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (i < paramInt2)
    {
      if (TlsUtils.ʴ(paramArrayOfByte, paramInt1 + i) != 1) {
        throw new TlsFatalAlert((short)50);
      }
      if ((this.aVN) || (this.aVE.size() > 0) || (this.aVF.size() > 0)) {
        throw new TlsFatalAlert((short)10);
      }
      this.aVG.mu();
      this.aVN = true;
      mX();
      i += 1;
    }
  }
  
  protected static Vector ʻ(ByteArrayInputStream paramByteArrayInputStream)
  {
    Object localObject = TlsUtils.ᵎ(paramByteArrayInputStream);
    ˏ(paramByteArrayInputStream);
    paramByteArrayInputStream = new ByteArrayInputStream((byte[])localObject);
    localObject = new Vector();
    while (paramByteArrayInputStream.available() > 0) {
      ((Vector)localObject).addElement(new SupplementalDataEntry(TlsUtils.ʹ(paramByteArrayInputStream), TlsUtils.ᴵ(paramByteArrayInputStream)));
    }
    return localObject;
  }
  
  protected static void ˊ(OutputStream paramOutputStream, Hashtable paramHashtable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    Enumeration localEnumeration = paramHashtable.keys();
    while (localEnumeration.hasMoreElements())
    {
      Object localObject = (Integer)localEnumeration.nextElement();
      int i = ((Integer)localObject).intValue();
      localObject = (byte[])paramHashtable.get(localObject);
      TlsUtils.ᴻ(i);
      TlsUtils.ʻ(i, localByteArrayOutputStream);
      TlsUtils.ˎ((byte[])localObject, localByteArrayOutputStream);
    }
    TlsUtils.ˎ(localByteArrayOutputStream.toByteArray(), paramOutputStream);
  }
  
  protected static void ˊ(OutputStream paramOutputStream, Vector paramVector)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = 0;
    while (i < paramVector.size())
    {
      SupplementalDataEntry localSupplementalDataEntry = (SupplementalDataEntry)paramVector.elementAt(i);
      int j = localSupplementalDataEntry.getDataType();
      TlsUtils.ᴻ(j);
      TlsUtils.ʻ(j, localByteArrayOutputStream);
      TlsUtils.ˎ(localSupplementalDataEntry.getData(), localByteArrayOutputStream);
      i += 1;
    }
    TlsUtils.ˏ(localByteArrayOutputStream.toByteArray(), paramOutputStream);
  }
  
  protected static void ˊ(TlsContext paramTlsContext, TlsKeyExchange paramTlsKeyExchange)
  {
    paramTlsKeyExchange = paramTlsKeyExchange.mR();
    try
    {
      paramTlsContext.lH().aUy = TlsUtils.ˊ(paramTlsContext, paramTlsKeyExchange);
      return;
    }
    finally
    {
      if (paramTlsKeyExchange != null) {
        Arrays.fill(paramTlsKeyExchange, (byte)0);
      }
    }
  }
  
  protected static byte[] ˊ(TlsContext paramTlsContext, TlsHandshakeHash paramTlsHandshakeHash, byte[] paramArrayOfByte)
  {
    paramTlsHandshakeHash = paramTlsHandshakeHash.lW();
    if ((paramArrayOfByte != null) && (TlsUtils.ˎ(paramTlsContext))) {
      paramTlsHandshakeHash.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    paramTlsContext = new byte[paramTlsHandshakeHash.iJ()];
    paramTlsHandshakeHash.doFinal(paramTlsContext, 0);
    return paramTlsContext;
  }
  
  protected static int ˏ(TlsContext paramTlsContext, int paramInt)
  {
    boolean bool = TlsUtils.ᐝ(paramTlsContext);
    switch (paramInt)
    {
    default: 
      break;
    case 59: 
    case 60: 
    case 61: 
    case 62: 
    case 63: 
    case 64: 
    case 103: 
    case 104: 
    case 105: 
    case 106: 
    case 107: 
    case 156: 
    case 158: 
    case 160: 
    case 162: 
    case 164: 
    case 168: 
    case 170: 
    case 172: 
    case 186: 
    case 187: 
    case 188: 
    case 189: 
    case 190: 
    case 191: 
    case 192: 
    case 193: 
    case 194: 
    case 195: 
    case 196: 
    case 197: 
    case 49187: 
    case 49189: 
    case 49191: 
    case 49193: 
    case 49195: 
    case 49197: 
    case 49199: 
    case 49201: 
    case 49266: 
    case 49268: 
    case 49270: 
    case 49272: 
    case 49274: 
    case 49276: 
    case 49278: 
    case 49280: 
    case 49282: 
    case 49284: 
    case 49286: 
    case 49288: 
    case 49290: 
    case 49292: 
    case 49294: 
    case 49296: 
    case 49298: 
    case 49308: 
    case 49309: 
    case 49310: 
    case 49311: 
    case 49312: 
    case 49313: 
    case 49314: 
    case 49315: 
    case 49316: 
    case 49317: 
    case 49318: 
    case 49319: 
    case 49320: 
    case 49321: 
    case 49322: 
    case 49323: 
    case 52243: 
    case 52244: 
    case 52245: 
      if (bool) {
        return 1;
      }
      throw new TlsFatalAlert((short)47);
    case 157: 
    case 159: 
    case 161: 
    case 163: 
    case 165: 
    case 169: 
    case 171: 
    case 173: 
    case 49188: 
    case 49190: 
    case 49192: 
    case 49194: 
    case 49196: 
    case 49198: 
    case 49200: 
    case 49202: 
    case 49267: 
    case 49269: 
    case 49271: 
    case 49273: 
    case 49275: 
    case 49277: 
    case 49279: 
    case 49281: 
    case 49283: 
    case 49285: 
    case 49287: 
    case 49289: 
    case 49291: 
    case 49293: 
    case 49295: 
    case 49297: 
    case 49299: 
      if (bool) {
        return 2;
      }
      throw new TlsFatalAlert((short)47);
    case 175: 
    case 177: 
    case 179: 
    case 181: 
    case 183: 
    case 185: 
    case 49208: 
    case 49211: 
    case 49301: 
    case 49303: 
    case 49305: 
    case 49307: 
      if (bool) {
        return 2;
      }
      return 0;
    }
    if (bool) {
      return 1;
    }
    return 0;
  }
  
  protected static void ˏ(ByteArrayInputStream paramByteArrayInputStream)
  {
    if (paramByteArrayInputStream.available() > 0) {
      throw new TlsFatalAlert((short)50);
    }
  }
  
  protected static byte[] ˢ(byte[] paramArrayOfByte)
  {
    return TlsUtils.ι(paramArrayOfByte);
  }
  
  protected static Hashtable ᐝ(ByteArrayInputStream paramByteArrayInputStream)
  {
    if (paramByteArrayInputStream.available() < 1) {
      return null;
    }
    Object localObject = TlsUtils.ᴵ(paramByteArrayInputStream);
    ˏ(paramByteArrayInputStream);
    paramByteArrayInputStream = new ByteArrayInputStream((byte[])localObject);
    localObject = new Hashtable();
    while (paramByteArrayInputStream.available() > 0) {
      if (((Hashtable)localObject).put(Integers.valueOf(TlsUtils.ʹ(paramByteArrayInputStream)), TlsUtils.ᴵ(paramByteArrayInputStream)) != null) {
        throw new TlsFatalAlert((short)47);
      }
    }
    return localObject;
  }
  
  public void close()
  {
    ﹼ(true);
  }
  
  protected void flush()
  {
    this.aVG.flush();
  }
  
  protected abstract AbstractTlsContext mN();
  
  protected abstract TlsPeer mO();
  
  protected void mX() {}
  
  protected int nb()
  {
    return this.aVD.size();
  }
  
  protected void nc()
  {
    try
    {
      if (!this.aVG.mv()) {
        throw new EOFException();
      }
      return;
    }
    catch (TlsFatalAlert localTlsFatalAlert)
    {
      if (!this.closed) {
        ˋ((short)2, localTlsFatalAlert.mT(), "Failed to read record", localTlsFatalAlert);
      }
      throw localTlsFatalAlert;
    }
    catch (IOException localIOException)
    {
      if (!this.closed) {
        ˋ((short)2, (short)80, "Failed to read record", localIOException);
      }
      throw localIOException;
    }
    catch (RuntimeException localRuntimeException)
    {
      if (!this.closed) {
        ˋ((short)2, (short)80, "Failed to read record", localRuntimeException);
      }
      throw localRuntimeException;
    }
  }
  
  protected void nd()
  {
    if (this.aTg != null)
    {
      this.aTg.clear();
      this.aTg = null;
    }
    if (this.aTf != null)
    {
      this.aTf.invalidate();
      this.aTf = null;
    }
  }
  
  protected void ne()
  {
    byte[] arrayOfByte = new byte[1];
    byte[] tmp5_4 = arrayOfByte;
    tmp5_4[0] = 1;
    tmp5_4;
    ˎ((short)20, arrayOfByte, 0, arrayOfByte.length);
    this.aVG.mt();
  }
  
  protected void nf()
  {
    byte[] arrayOfByte = ﹻ(mN().mM());
    HandshakeMessage localHandshakeMessage = new HandshakeMessage((short)20, arrayOfByte.length);
    localHandshakeMessage.write(arrayOfByte);
    localHandshakeMessage.ng();
  }
  
  protected void ʼ(short paramShort) {}
  
  protected int ˆ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 1) {
      return 0;
    }
    while (this.aVD.size() == 0)
    {
      if (this.closed)
      {
        if (this.aVH) {
          throw new IOException("Internal TLS error, this could be an attack");
        }
        return -1;
      }
      nc();
    }
    paramInt2 = Math.min(paramInt2, this.aVD.size());
    this.aVD.ˏ(paramArrayOfByte, paramInt1, paramInt2, 0);
    return paramInt2;
  }
  
  protected void ˇ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.closed)
    {
      if (this.aVH) {
        throw new IOException("Internal TLS error, this could be an attack");
      }
      throw new IOException("Sorry, connection has been closed, you cannot write more data");
    }
    while (paramInt2 > 0)
    {
      int j = paramInt1;
      int i = paramInt2;
      if (this.aVJ)
      {
        ˎ((short)23, paramArrayOfByte, paramInt1, 1);
        j = paramInt1 + 1;
        i = paramInt2 - 1;
      }
      paramInt1 = j;
      paramInt2 = i;
      if (i > 0)
      {
        paramInt2 = Math.min(i, this.aVG.mr());
        ˎ((short)23, paramArrayOfByte, j, paramInt2);
        paramInt1 = j + paramInt2;
        paramInt2 = i - paramInt2;
      }
    }
  }
  
  protected short ˊ(Hashtable paramHashtable1, Hashtable paramHashtable2, short paramShort)
  {
    short s = TlsExtensionsUtils.ˌ(paramHashtable2);
    if ((s >= 0) && (!this.aVM) && (s != TlsExtensionsUtils.ˌ(paramHashtable1))) {
      throw new TlsFatalAlert(paramShort);
    }
    return s;
  }
  
  protected void ˊ(short paramShort, String paramString)
  {
    ˎ((short)1, paramShort, paramString, null);
  }
  
  protected abstract void ˊ(short paramShort, byte[] paramArrayOfByte);
  
  protected void ˋ(short paramShort1, short paramShort2, String paramString, Exception paramException)
  {
    if (!this.closed)
    {
      this.closed = true;
      if (paramShort1 == 2)
      {
        nd();
        this.aVH = true;
      }
      ˎ(paramShort1, paramShort2, paramString, paramException);
      this.aVG.mz();
      if (paramShort1 != 2) {
        return;
      }
    }
    throw new IOException("Internal TLS error, this could be an attack");
  }
  
  protected void ˋ(short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    switch (paramShort)
    {
    default: 
      return;
    case 21: 
      this.aVE.ｰ(paramArrayOfByte, paramInt1, paramInt2);
      na();
      return;
    case 23: 
      if (!this.aVI) {
        throw new TlsFatalAlert((short)10);
      }
      this.aVD.ｰ(paramArrayOfByte, paramInt1, paramInt2);
      mZ();
      return;
    case 20: 
      ʴ(paramArrayOfByte, paramInt1, paramInt2);
      return;
    case 22: 
      this.aVF.ｰ(paramArrayOfByte, paramInt1, paramInt2);
      mY();
      return;
    }
    if (!this.aVI) {
      throw new TlsFatalAlert((short)10);
    }
  }
  
  protected void ˎ(ByteArrayInputStream paramByteArrayInputStream)
  {
    byte[] arrayOfByte = TlsUtils.ᐝ(this.aVK.length, paramByteArrayInputStream);
    ˏ(paramByteArrayInputStream);
    if (!Arrays.ｰ(this.aVK, arrayOfByte)) {
      throw new TlsFatalAlert((short)51);
    }
  }
  
  protected void ˎ(short paramShort1, short paramShort2, String paramString, Exception paramException)
  {
    mO().ˊ(paramShort1, paramShort2, paramString, paramException);
    ˎ((short)21, new byte[] { (byte)paramShort1, (byte)paramShort2 }, 0, 2);
  }
  
  protected void ˎ(short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      this.aVG.ˊ(paramShort, paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (TlsFatalAlert paramArrayOfByte)
    {
      if (!this.closed) {
        ˋ((short)2, paramArrayOfByte.mT(), "Failed to write record", paramArrayOfByte);
      }
      throw paramArrayOfByte;
    }
    catch (IOException paramArrayOfByte)
    {
      if (!this.closed) {
        ˋ((short)2, (short)80, "Failed to write record", paramArrayOfByte);
      }
      throw paramArrayOfByte;
    }
    catch (RuntimeException paramArrayOfByte)
    {
      if (!this.closed) {
        ˋ((short)2, (short)80, "Failed to write record", paramArrayOfByte);
      }
      throw paramArrayOfByte;
    }
  }
  
  protected void ˏ(Certificate paramCertificate)
  {
    Certificate localCertificate = paramCertificate;
    if (paramCertificate == null) {
      localCertificate = Certificate.aSU;
    }
    if ((localCertificate.getLength() == 0) && (!mN().mM()))
    {
      paramCertificate = mN().lJ();
      if (paramCertificate.mp())
      {
        ˊ((short)41, paramCertificate.toString() + " client didn't provide credentials");
        return;
      }
    }
    paramCertificate = new HandshakeMessage((short)11);
    localCertificate.encode(paramCertificate);
    paramCertificate.ng();
  }
  
  protected void ˡ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    while (paramInt2 > 0)
    {
      int i = Math.min(paramInt2, this.aVG.mr());
      ˎ((short)22, paramArrayOfByte, paramInt1, i);
      paramInt1 += i;
      paramInt2 -= i;
    }
  }
  
  protected void ᐝ(Vector paramVector)
  {
    HandshakeMessage localHandshakeMessage = new HandshakeMessage((short)23);
    ˊ(localHandshakeMessage, paramVector);
    localHandshakeMessage.ng();
  }
  
  protected byte[] ﹻ(boolean paramBoolean)
  {
    AbstractTlsContext localAbstractTlsContext = mN();
    if (paramBoolean) {
      return TlsUtils.ˊ(localAbstractTlsContext, "server finished", ˊ(mN(), this.aVG.mx(), TlsUtils.aWc));
    }
    return TlsUtils.ˊ(localAbstractTlsContext, "client finished", ˊ(mN(), this.aVG.mx(), TlsUtils.aWb));
  }
  
  protected void ﹼ(boolean paramBoolean)
  {
    if (!this.closed)
    {
      if ((paramBoolean) && (!this.aVI)) {
        ˊ((short)90, "User canceled handshake");
      }
      ˋ((short)1, (short)0, "Connection closed", null);
    }
  }
  
  class HandshakeMessage
    extends ByteArrayOutputStream
  {
    HandshakeMessage(short paramShort)
    {
      this(paramShort, 60);
    }
    
    HandshakeMessage(short paramShort, int paramInt)
    {
      super();
      TlsUtils.ˊ(paramShort, this);
      this.count += 3;
    }
    
    void ng()
    {
      int i = this.count - 4;
      TlsUtils.ᵠ(i);
      TlsUtils.ͺ(i, this.buf, 1);
      TlsProtocol.this.ˡ(this.buf, 0, this.count);
      this.buf = null;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsProtocol
 * JD-Core Version:    0.7.0.1
 */