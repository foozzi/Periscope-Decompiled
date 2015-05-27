package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.util.Arrays;

public class TlsClientProtocol
  extends TlsProtocol
{
  protected byte[] aTl;
  protected TlsKeyExchange aTq;
  protected TlsAuthentication aTr;
  protected CertificateStatus aTs;
  protected CertificateRequest aTt;
  protected TlsClient aUU;
  protected TlsClientContextImpl aUV;
  
  protected AbstractTlsContext mN()
  {
    return this.aUV;
  }
  
  protected TlsPeer mO()
  {
    return this.aUU;
  }
  
  protected void mP()
  {
    TlsProtocol.HandshakeMessage localHandshakeMessage = new TlsProtocol.HandshakeMessage(this, (short)16);
    this.aTq.ʽ(localHandshakeMessage);
    localHandshakeMessage.ng();
  }
  
  protected void ˊ(ByteArrayInputStream paramByteArrayInputStream)
  {
    NewSessionTicket localNewSessionTicket = NewSessionTicket.ˑ(paramByteArrayInputStream);
    TlsProtocol.ˏ(paramByteArrayInputStream);
    this.aUU.ˊ(localNewSessionTicket);
  }
  
  protected void ˊ(DigitallySigned paramDigitallySigned)
  {
    TlsProtocol.HandshakeMessage localHandshakeMessage = new TlsProtocol.HandshakeMessage(this, (short)15);
    paramDigitallySigned.encode(localHandshakeMessage);
    localHandshakeMessage.ng();
  }
  
  protected void ˊ(short paramShort, byte[] paramArrayOfByte)
  {
    paramArrayOfByte = new ByteArrayInputStream(paramArrayOfByte);
    if (this.aVM)
    {
      if ((paramShort != 20) || (this.aVL != 2)) {
        throw new TlsFatalAlert((short)10);
      }
      ˎ(paramArrayOfByte);
      this.aVL = 15;
      nf();
      this.aVL = 13;
      this.aVL = 16;
      return;
    }
    switch (paramShort)
    {
    default: 
      break;
    case 11: 
      switch (this.aVL)
      {
      default: 
        break;
      case 2: 
        ˏ(null);
      case 3: 
        this.aUF = Certificate.ˌ(paramArrayOfByte);
        ˏ(paramArrayOfByte);
        if ((this.aUF == null) || (this.aUF.isEmpty())) {
          this.aTo = false;
        }
        this.aTq.ˊ(this.aUF);
        this.aTr = this.aUU.mn();
        this.aTr.ˎ(this.aUF);
        break;
      }
      throw new TlsFatalAlert((short)10);
      this.aVL = 4;
      return;
    case 22: 
      switch (this.aVL)
      {
      default: 
        break;
      case 4: 
        if (!this.aTo) {
          throw new TlsFatalAlert((short)10);
        }
        this.aTs = CertificateStatus.ˍ(paramArrayOfByte);
        ˏ(paramArrayOfByte);
        this.aVL = 5;
        return;
      }
      throw new TlsFatalAlert((short)10);
    case 20: 
      switch (this.aVL)
      {
      default: 
        break;
      case 13: 
        if (this.aTp) {
          throw new TlsFatalAlert((short)10);
        }
        break;
      }
      ˎ(paramArrayOfByte);
      this.aVL = 15;
      this.aVL = 16;
      return;
      throw new TlsFatalAlert((short)10);
    case 2: 
      switch (this.aVL)
      {
      default: 
        break;
      case 1: 
        ˋ(paramArrayOfByte);
        this.aVL = 2;
        if (this.aSM.aTn >= 0)
        {
          paramShort = this.aSM.aTn;
          this.aVG.Ꮮ(1 << paramShort + 8);
        }
        this.aSM.aUw = ˏ(mN(), this.aSM.mB());
        this.aSM.aUx = 12;
        this.aVG.mw();
        if (this.aVM)
        {
          this.aSM.aUy = Arrays.І(this.aTg.mE());
          this.aVG.ˊ(mO().lE(), mO().mj());
          ne();
          return;
        }
        nd();
        if (this.aTl.length <= 0) {
          return;
        }
        this.aTf = new TlsSessionImpl(this.aTl, null);
        return;
      }
      throw new TlsFatalAlert((short)10);
    case 23: 
      switch (this.aVL)
      {
      default: 
        break;
      case 2: 
        ˏ(ʻ(paramArrayOfByte));
        return;
      }
      throw new TlsFatalAlert((short)10);
    case 14: 
      switch (this.aVL)
      {
      default: 
        break;
      case 2: 
        ˏ(null);
      case 3: 
        this.aTq.mQ();
        this.aTr = null;
      case 4: 
      case 5: 
        this.aTq.lM();
      case 6: 
      case 7: 
        ˏ(paramArrayOfByte);
        this.aVL = 8;
        this.aVG.mx().lU();
        paramArrayOfByte = this.aUU.lD();
        if (paramArrayOfByte != null) {
          ᐝ(paramArrayOfByte);
        }
        this.aVL = 9;
        paramArrayOfByte = null;
        if (this.aTt == null)
        {
          this.aTq.lN();
        }
        else
        {
          paramArrayOfByte = this.aTr.ˊ(this.aTt);
          if (paramArrayOfByte == null)
          {
            this.aTq.lN();
            ˏ(Certificate.aSU);
          }
          else
          {
            this.aTq.ˋ(paramArrayOfByte);
            ˏ(paramArrayOfByte.lX());
          }
        }
        this.aVL = 10;
        mP();
        this.aVL = 11;
        ˊ(mN(), this.aTq);
        this.aVG.ˊ(mO().lE(), mO().mj());
        Object localObject = this.aVG.my();
        if ((paramArrayOfByte != null) && ((paramArrayOfByte instanceof TlsSignerCredentials)))
        {
          TlsSignerCredentials localTlsSignerCredentials = (TlsSignerCredentials)paramArrayOfByte;
          if (TlsUtils.ᐝ(mN()))
          {
            paramArrayOfByte = localTlsSignerCredentials.lO();
            if (paramArrayOfByte == null) {
              throw new TlsFatalAlert((short)80);
            }
            localObject = ((TlsHandshakeHash)localObject).ˏ(paramArrayOfByte.mK());
          }
          else
          {
            paramArrayOfByte = null;
            localObject = ˊ(mN(), (TlsHandshakeHash)localObject, null);
          }
          ˊ(new DigitallySigned(paramArrayOfByte, localTlsSignerCredentials.ﯨ((byte[])localObject)));
          this.aVL = 12;
        }
        ne();
        nf();
        this.aVL = 13;
        return;
      }
      throw new TlsFatalAlert((short)40);
    case 12: 
      switch (this.aVL)
      {
      default: 
        break;
      case 2: 
        ˏ(null);
      case 3: 
        this.aTq.mQ();
        this.aTr = null;
      case 4: 
      case 5: 
        this.aTq.ˈ(paramArrayOfByte);
        ˏ(paramArrayOfByte);
        break;
      }
      throw new TlsFatalAlert((short)10);
      this.aVL = 6;
      return;
    case 13: 
      switch (this.aVL)
      {
      default: 
        break;
      case 4: 
      case 5: 
        this.aTq.lM();
      case 6: 
        if (this.aTr == null) {
          throw new TlsFatalAlert((short)40);
        }
        this.aTt = CertificateRequest.ˊ(mN(), paramArrayOfByte);
        ˏ(paramArrayOfByte);
        this.aTq.ˋ(this.aTt);
        TlsUtils.ˊ(this.aVG.mx(), this.aTt.lS());
        break;
      }
      throw new TlsFatalAlert((short)10);
      this.aVL = 7;
      return;
    case 4: 
      switch (this.aVL)
      {
      default: 
        break;
      case 13: 
        if (!this.aTp) {
          throw new TlsFatalAlert((short)10);
        }
        nd();
        ˊ(paramArrayOfByte);
        this.aVL = 14;
        break;
      }
      throw new TlsFatalAlert((short)10);
    case 0: 
      ˏ(paramArrayOfByte);
      if (this.aVL != 16) {
        return;
      }
      if (TlsUtils.ˎ(mN())) {
        throw new TlsFatalAlert((short)40);
      }
      ˊ((short)100, "Renegotiation not supported");
      return;
    }
    throw new TlsFatalAlert((short)10);
  }
  
  protected void ˋ(ByteArrayInputStream paramByteArrayInputStream)
  {
    Object localObject = TlsUtils.ᵔ(paramByteArrayInputStream);
    if (((ProtocolVersion)localObject).mo()) {
      throw new TlsFatalAlert((short)47);
    }
    if (!((ProtocolVersion)localObject).ᐝ(this.aVG.ms())) {
      throw new TlsFatalAlert((short)47);
    }
    if (!((ProtocolVersion)localObject).ˏ(mN().lI())) {
      throw new TlsFatalAlert((short)47);
    }
    this.aVG.ʼ((ProtocolVersion)localObject);
    mN().ˎ((ProtocolVersion)localObject);
    this.aUU.ˊ((ProtocolVersion)localObject);
    this.aSM.aUA = TlsUtils.ᐝ(32, paramByteArrayInputStream);
    this.aTl = TlsUtils.ٴ(paramByteArrayInputStream);
    if (this.aTl.length > 32) {
      throw new TlsFatalAlert((short)47);
    }
    this.aUU.ᵛ(this.aTl);
    boolean bool;
    if ((this.aTl.length > 0) && (this.aTf != null) && (Arrays.ﹺ(this.aTl, this.aTf.nt()))) {
      bool = true;
    } else {
      bool = false;
    }
    this.aVM = bool;
    int i = TlsUtils.ʹ(paramByteArrayInputStream);
    if ((!Arrays.ʾ(this.aTi, i)) || (i == 0) || (i == 255) || (!TlsUtils.ˊ(i, (ProtocolVersion)localObject))) {
      throw new TlsFatalAlert((short)47);
    }
    this.aUU.τ(i);
    short s = TlsUtils.ﾞ(paramByteArrayInputStream);
    if (!Arrays.ˋ(this.aTj, s)) {
      throw new TlsFatalAlert((short)47);
    }
    this.aUU.ˋ(s);
    this.aTz = ᐝ(paramByteArrayInputStream);
    if (this.aTz != null)
    {
      paramByteArrayInputStream = this.aTz.keys();
      while (paramByteArrayInputStream.hasMoreElements())
      {
        localObject = (Integer)paramByteArrayInputStream.nextElement();
        if (!((Integer)localObject).equals(aVB))
        {
          bool = this.aVM;
          if (TlsUtils.ˊ(this.aTk, (Integer)localObject) == null) {
            throw new TlsFatalAlert((short)110);
          }
        }
      }
    }
    paramByteArrayInputStream = TlsUtils.ˊ(this.aTz, aVB);
    if (paramByteArrayInputStream != null)
    {
      this.aTm = true;
      if (!Arrays.ｰ(paramByteArrayInputStream, ˢ(TlsUtils.abo))) {
        throw new TlsFatalAlert((short)40);
      }
    }
    this.aUU.ﹲ(this.aTm);
    paramByteArrayInputStream = this.aTk;
    localObject = this.aTz;
    if (this.aVM)
    {
      if ((i != this.aTg.mB()) || (s != this.aTg.mI())) {
        throw new TlsFatalAlert((short)47);
      }
      paramByteArrayInputStream = null;
      localObject = this.aTg.mJ();
    }
    this.aSM.aUu = i;
    this.aSM.aUv = s;
    if (localObject != null)
    {
      bool = TlsExtensionsUtils.ˍ((Hashtable)localObject);
      if ((bool) && (!TlsUtils.ⅴ(i))) {
        throw new TlsFatalAlert((short)47);
      }
      this.aSM.aUC = bool;
      this.aSM.aTn = ˊ(paramByteArrayInputStream, (Hashtable)localObject, (short)47);
      this.aSM.aUB = TlsExtensionsUtils.ˑ((Hashtable)localObject);
      if ((!this.aVM) && (TlsUtils.ˊ((Hashtable)localObject, TlsExtensionsUtils.aVo, (short)47))) {
        bool = true;
      } else {
        bool = false;
      }
      this.aTo = bool;
      if ((!this.aVM) && (TlsUtils.ˊ((Hashtable)localObject, TlsProtocol.aVC, (short)47))) {
        bool = true;
      } else {
        bool = false;
      }
      this.aTp = bool;
    }
    if (paramByteArrayInputStream != null) {
      this.aUU.ʾ((Hashtable)localObject);
    }
  }
  
  protected void ˏ(Vector paramVector)
  {
    this.aUU.ˎ(paramVector);
    this.aVL = 3;
    this.aTq = this.aUU.mi();
    this.aTq.ˊ(mN());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsClientProtocol
 * JD-Core Version:    0.7.0.1
 */