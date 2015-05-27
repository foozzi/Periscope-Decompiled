package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.util.Hashtable;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.util.PublicKeyFactory;
import org.spongycastle.util.Arrays;

public class TlsServerProtocol
  extends TlsProtocol
{
  protected TlsCredentials aTA;
  protected short aTB;
  protected TlsKeyExchange aTq;
  protected CertificateRequest aTt;
  protected TlsServer aVT;
  protected TlsServerContextImpl aVU;
  protected TlsHandshakeHash aVV;
  
  protected AbstractTlsContext mN()
  {
    return this.aVU;
  }
  
  protected TlsPeer mO()
  {
    return this.aVT;
  }
  
  protected void nq()
  {
    TlsProtocol.HandshakeMessage localHandshakeMessage = new TlsProtocol.HandshakeMessage(this, (short)2);
    ProtocolVersion localProtocolVersion = this.aVT.lJ();
    if (!localProtocolVersion.ˏ(mN().lI())) {
      throw new TlsFatalAlert((short)80);
    }
    this.aVG.ʻ(localProtocolVersion);
    this.aVG.ʼ(localProtocolVersion);
    this.aVG.ﹷ(true);
    mN().ˎ(localProtocolVersion);
    TlsUtils.ˊ(localProtocolVersion, localHandshakeMessage);
    localHandshakeMessage.write(this.aSM.aUA);
    TlsUtils.ˋ(TlsUtils.abo, localHandshakeMessage);
    int i = this.aVT.ni();
    if ((!Arrays.ʾ(this.aTi, i)) || (i == 0) || (i == 255) || (!TlsUtils.ˊ(i, localProtocolVersion))) {
      throw new TlsFatalAlert((short)80);
    }
    this.aSM.aUu = i;
    short s = this.aVT.nj();
    if (!Arrays.ˋ(this.aTj, s)) {
      throw new TlsFatalAlert((short)80);
    }
    this.aSM.aUv = s;
    TlsUtils.ʻ(i, localHandshakeMessage);
    TlsUtils.ˊ(s, localHandshakeMessage);
    this.aTz = this.aVT.nk();
    if (this.aTm)
    {
      if (TlsUtils.ˊ(this.aTz, aVB) == null) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0)
      {
        this.aTz = TlsExtensionsUtils.ˉ(this.aTz);
        this.aTz.put(aVB, ˢ(TlsUtils.abo));
      }
    }
    if (this.aTz != null)
    {
      this.aSM.aUC = TlsExtensionsUtils.ˍ(this.aTz);
      this.aSM.aTn = ˊ(this.aTk, this.aTz, (short)80);
      this.aSM.aUB = TlsExtensionsUtils.ˑ(this.aTz);
      boolean bool;
      if ((!this.aVM) && (TlsUtils.ˊ(this.aTz, TlsExtensionsUtils.aVo, (short)80))) {
        bool = true;
      } else {
        bool = false;
      }
      this.aTo = bool;
      if ((!this.aVM) && (TlsUtils.ˊ(this.aTz, TlsProtocol.aVC, (short)80))) {
        bool = true;
      } else {
        bool = false;
      }
      this.aTp = bool;
      ˊ(localHandshakeMessage, this.aTz);
    }
    if (this.aSM.aTn >= 0)
    {
      i = this.aSM.aTn;
      this.aVG.Ꮮ(1 << i + 8);
    }
    this.aSM.aUw = ˏ(mN(), this.aSM.mB());
    this.aSM.aUx = 12;
    localHandshakeMessage.ng();
    this.aVG.mw();
  }
  
  protected void nr()
  {
    byte[] arrayOfByte = new byte[4];
    TlsUtils.ˊ((short)14, arrayOfByte, 0);
    TlsUtils.ͺ(0, arrayOfByte, 1);
    ˡ(arrayOfByte, 0, arrayOfByte.length);
  }
  
  protected boolean ns()
  {
    return (this.aTB >= 0) && (TlsUtils.ʾ(this.aTB));
  }
  
  protected void ʼ(ByteArrayInputStream paramByteArrayInputStream)
  {
    Certificate localCertificate = Certificate.ˌ(paramByteArrayInputStream);
    ˏ(paramByteArrayInputStream);
    ᐝ(localCertificate);
  }
  
  protected void ʼ(short paramShort)
  {
    switch (paramShort)
    {
    default: 
      break;
    case 41: 
      if ((!TlsUtils.ˎ(mN())) || (this.aTt == null)) {
        return;
      }
      ᐝ(Certificate.aSU);
      return;
    }
    super.ʼ(paramShort);
  }
  
  protected void ʽ(ByteArrayInputStream paramByteArrayInputStream)
  {
    DigitallySigned localDigitallySigned = DigitallySigned.ˋ(mN(), paramByteArrayInputStream);
    ˏ(paramByteArrayInputStream);
    int i = 0;
    try
    {
      if (TlsUtils.ᐝ(mN())) {
        paramByteArrayInputStream = this.aVV.ˏ(localDigitallySigned.mm().mK());
      } else {
        paramByteArrayInputStream = TlsProtocol.ˊ(mN(), this.aVV, null);
      }
      AsymmetricKeyParameter localAsymmetricKeyParameter = PublicKeyFactory.ˊ(this.aUF.ץ(0).hj());
      TlsSigner localTlsSigner = TlsUtils.ʿ(this.aTB);
      localTlsSigner.ˊ(mN());
      boolean bool = localTlsSigner.ˊ(localDigitallySigned.mm(), localDigitallySigned.getSignature(), localAsymmetricKeyParameter, paramByteArrayInputStream);
      i = bool;
    }
    catch (Exception paramByteArrayInputStream) {}
    if (i == 0) {
      throw new TlsFatalAlert((short)51);
    }
  }
  
  protected void ˊ(CertificateStatus paramCertificateStatus)
  {
    TlsProtocol.HandshakeMessage localHandshakeMessage = new TlsProtocol.HandshakeMessage(this, (short)22);
    paramCertificateStatus.encode(localHandshakeMessage);
    localHandshakeMessage.ng();
  }
  
  protected void ˊ(short paramShort, byte[] paramArrayOfByte)
  {
    paramArrayOfByte = new ByteArrayInputStream(paramArrayOfByte);
    switch (paramShort)
    {
    default: 
      break;
    case 1: 
      switch (this.aVL)
      {
      default: 
        break;
      case 0: 
        ͺ(paramArrayOfByte);
        this.aVL = 1;
        nq();
        this.aVL = 2;
        paramArrayOfByte = this.aVT.nl();
        if (paramArrayOfByte != null) {
          ᐝ(paramArrayOfByte);
        }
        this.aVL = 3;
        this.aTq = this.aVT.mi();
        this.aTq.ˊ(mN());
        this.aTA = this.aVT.nm();
        paramArrayOfByte = null;
        if (this.aTA == null)
        {
          this.aTq.mQ();
        }
        else
        {
          this.aTq.ˊ(this.aTA);
          paramArrayOfByte = this.aTA.lX();
          ˏ(paramArrayOfByte);
        }
        this.aVL = 4;
        if ((paramArrayOfByte == null) || (paramArrayOfByte.isEmpty())) {
          this.aTo = false;
        }
        if (this.aTo)
        {
          paramArrayOfByte = this.aVT.nn();
          if (paramArrayOfByte != null) {
            ˊ(paramArrayOfByte);
          }
        }
        this.aVL = 5;
        paramArrayOfByte = this.aTq.lL();
        if (paramArrayOfByte != null) {
          ˤ(paramArrayOfByte);
        }
        this.aVL = 6;
        if (this.aTA != null)
        {
          this.aTt = this.aVT.no();
          if (this.aTt != null)
          {
            this.aTq.ˋ(this.aTt);
            ˎ(this.aTt);
            TlsUtils.ˊ(this.aVG.mx(), this.aTt.lS());
          }
        }
        this.aVL = 7;
        nr();
        this.aVL = 8;
        this.aVG.mx().lU();
        return;
      }
      throw new TlsFatalAlert((short)10);
    case 23: 
      switch (this.aVL)
      {
      default: 
        break;
      case 8: 
        this.aVT.ʻ(ʻ(paramArrayOfByte));
        this.aVL = 9;
        return;
      }
      throw new TlsFatalAlert((short)10);
    case 11: 
      switch (this.aVL)
      {
      default: 
        break;
      case 8: 
        this.aVT.ʻ(null);
      case 9: 
        if (this.aTt == null) {
          throw new TlsFatalAlert((short)10);
        }
        ʼ(paramArrayOfByte);
        this.aVL = 10;
        return;
      }
      throw new TlsFatalAlert((short)10);
    case 16: 
      switch (this.aVL)
      {
      default: 
        break;
      case 8: 
        this.aVT.ʻ(null);
      case 9: 
        if (this.aTt == null)
        {
          this.aTq.lN();
        }
        else
        {
          if (TlsUtils.ᐝ(mN())) {
            throw new TlsFatalAlert((short)10);
          }
          if (TlsUtils.ˎ(mN()))
          {
            if (this.aUF == null) {
              throw new TlsFatalAlert((short)10);
            }
          }
          else {
            ᐝ(Certificate.aSU);
          }
        }
        break;
      }
      ι(paramArrayOfByte);
      this.aVL = 11;
      return;
      throw new TlsFatalAlert((short)10);
    case 15: 
      switch (this.aVL)
      {
      default: 
        break;
      case 11: 
        if (!ns()) {
          throw new TlsFatalAlert((short)10);
        }
        ʽ(paramArrayOfByte);
        this.aVL = 12;
        return;
      }
      throw new TlsFatalAlert((short)10);
    case 20: 
      switch (this.aVL)
      {
      default: 
        break;
      case 11: 
        if (ns()) {
          throw new TlsFatalAlert((short)10);
        }
        break;
      }
      ˎ(paramArrayOfByte);
      this.aVL = 13;
      if (this.aTp)
      {
        ˋ(this.aVT.np());
        ne();
      }
      this.aVL = 14;
      nf();
      this.aVL = 15;
      this.aVL = 16;
      return;
      throw new TlsFatalAlert((short)10);
    }
    throw new TlsFatalAlert((short)10);
  }
  
  protected void ˋ(NewSessionTicket paramNewSessionTicket)
  {
    if (paramNewSessionTicket == null) {
      throw new TlsFatalAlert((short)80);
    }
    TlsProtocol.HandshakeMessage localHandshakeMessage = new TlsProtocol.HandshakeMessage(this, (short)4);
    paramNewSessionTicket.encode(localHandshakeMessage);
    localHandshakeMessage.ng();
  }
  
  protected void ˎ(CertificateRequest paramCertificateRequest)
  {
    TlsProtocol.HandshakeMessage localHandshakeMessage = new TlsProtocol.HandshakeMessage(this, (short)13);
    paramCertificateRequest.encode(localHandshakeMessage);
    localHandshakeMessage.ng();
  }
  
  protected void ˤ(byte[] paramArrayOfByte)
  {
    TlsProtocol.HandshakeMessage localHandshakeMessage = new TlsProtocol.HandshakeMessage(this, (short)12, paramArrayOfByte.length);
    localHandshakeMessage.write(paramArrayOfByte);
    localHandshakeMessage.ng();
  }
  
  protected void ͺ(ByteArrayInputStream paramByteArrayInputStream)
  {
    ProtocolVersion localProtocolVersion = TlsUtils.ᵔ(paramByteArrayInputStream);
    if (localProtocolVersion.mo()) {
      throw new TlsFatalAlert((short)47);
    }
    byte[] arrayOfByte = TlsUtils.ᐝ(32, paramByteArrayInputStream);
    if (TlsUtils.ٴ(paramByteArrayInputStream).length > 32) {
      throw new TlsFatalAlert((short)47);
    }
    int i = TlsUtils.ʹ(paramByteArrayInputStream);
    if ((i < 2) || ((i & 0x1) != 0)) {
      throw new TlsFatalAlert((short)50);
    }
    this.aTi = TlsUtils.ʼ(i / 2, paramByteArrayInputStream);
    i = TlsUtils.ﾞ(paramByteArrayInputStream);
    if (i < 1) {
      throw new TlsFatalAlert((short)47);
    }
    this.aTj = TlsUtils.ʻ(i, paramByteArrayInputStream);
    this.aTk = ᐝ(paramByteArrayInputStream);
    mN().ˋ(localProtocolVersion);
    this.aVT.ʽ(localProtocolVersion);
    this.aSM.aUz = arrayOfByte;
    this.aVT.ͺ(this.aTi);
    this.aVT.ˊ(this.aTj);
    if (Arrays.ʾ(this.aTi, 255)) {
      this.aTm = true;
    }
    paramByteArrayInputStream = TlsUtils.ˊ(this.aTk, aVB);
    if (paramByteArrayInputStream != null)
    {
      this.aTm = true;
      if (!Arrays.ｰ(paramByteArrayInputStream, ˢ(TlsUtils.abo))) {
        throw new TlsFatalAlert((short)40);
      }
    }
    this.aVT.ﹲ(this.aTm);
    if (this.aTk != null) {
      this.aVT.ـ(this.aTk);
    }
  }
  
  protected void ᐝ(Certificate paramCertificate)
  {
    if (this.aTt == null) {
      throw new IllegalStateException();
    }
    if (this.aUF != null) {
      throw new TlsFatalAlert((short)10);
    }
    this.aUF = paramCertificate;
    if (paramCertificate.isEmpty())
    {
      this.aTq.lN();
    }
    else
    {
      this.aTB = TlsUtils.ˊ(paramCertificate, this.aTA.lX());
      this.aTq.ˋ(paramCertificate);
    }
    this.aVT.ᐝ(paramCertificate);
  }
  
  protected void ι(ByteArrayInputStream paramByteArrayInputStream)
  {
    this.aTq.ˉ(paramByteArrayInputStream);
    ˏ(paramByteArrayInputStream);
    ˊ(mN(), this.aTq);
    this.aVG.ˊ(mO().lE(), mO().mj());
    this.aVV = this.aVG.my();
    if (!this.aTp) {
      ne();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsServerProtocol
 * JD-Core Version:    0.7.0.1
 */