package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.engines.AESEngine;
import org.spongycastle.crypto.engines.CamelliaEngine;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.RC4Engine;
import org.spongycastle.crypto.engines.SEEDEngine;
import org.spongycastle.crypto.engines.Salsa20Engine;
import org.spongycastle.crypto.modes.AEADBlockCipher;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.CCMBlockCipher;
import org.spongycastle.crypto.modes.GCMBlockCipher;

public class DefaultTlsCipherFactory
  extends AbstractTlsCipherFactory
{
  protected BlockCipher lY()
  {
    return new AESEngine();
  }
  
  protected BlockCipher lZ()
  {
    return new CamelliaEngine();
  }
  
  protected BlockCipher ma()
  {
    return new CBCBlockCipher(lY());
  }
  
  protected AEADBlockCipher mb()
  {
    return new CCMBlockCipher(lY());
  }
  
  protected AEADBlockCipher mc()
  {
    return new GCMBlockCipher(lY());
  }
  
  protected AEADBlockCipher md()
  {
    return new GCMBlockCipher(lZ());
  }
  
  protected BlockCipher me()
  {
    return new CBCBlockCipher(lZ());
  }
  
  protected BlockCipher mf()
  {
    return new CBCBlockCipher(new DESedeEngine());
  }
  
  protected StreamCipher mg()
  {
    return new RC4Engine();
  }
  
  protected BlockCipher mh()
  {
    return new CBCBlockCipher(new SEEDEngine());
  }
  
  protected TlsAEADCipher ʻ(TlsContext paramTlsContext, int paramInt1, int paramInt2)
  {
    return new TlsAEADCipher(paramTlsContext, md(), md(), paramInt1, paramInt2);
  }
  
  protected TlsStreamCipher ʼ(TlsContext paramTlsContext, int paramInt1, int paramInt2)
  {
    return new TlsStreamCipher(paramTlsContext, mg(), mg(), ڔ(paramInt2), ڔ(paramInt2), paramInt1, false);
  }
  
  protected TlsBlockCipher ˊ(TlsContext paramTlsContext, int paramInt)
  {
    return new TlsBlockCipher(paramTlsContext, mf(), mf(), ڔ(paramInt), ڔ(paramInt), 24);
  }
  
  public TlsCipher ˊ(TlsContext paramTlsContext, int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      break;
    case 7: 
      return ˊ(paramTlsContext, paramInt2);
    case 102: 
      return ˋ(paramTlsContext);
    case 8: 
      return ˋ(paramTlsContext, 16, paramInt2);
    case 15: 
      return ˏ(paramTlsContext, 16, 16);
    case 16: 
      return ˏ(paramTlsContext, 16, 8);
    case 17: 
      return ˏ(paramTlsContext, 32, 16);
    case 18: 
      return ˏ(paramTlsContext, 32, 8);
    case 10: 
      return ᐝ(paramTlsContext, 16, 16);
    case 9: 
      return ˋ(paramTlsContext, 32, paramInt2);
    case 11: 
      return ᐝ(paramTlsContext, 32, 16);
    case 12: 
      return ˎ(paramTlsContext, 16, paramInt2);
    case 19: 
      return ʻ(paramTlsContext, 16, 16);
    case 13: 
      return ˎ(paramTlsContext, 32, paramInt2);
    case 20: 
      return ʻ(paramTlsContext, 32, 16);
    case 100: 
      return ˊ(paramTlsContext, 12, 32, paramInt2);
    case 0: 
      return ˋ(paramTlsContext, paramInt2);
    case 2: 
      return ʼ(paramTlsContext, 16, paramInt2);
    case 101: 
      return ˊ(paramTlsContext, 20, 32, paramInt2);
    case 14: 
      return ˎ(paramTlsContext, paramInt2);
    }
    throw new TlsFatalAlert((short)80);
  }
  
  protected TlsStreamCipher ˊ(TlsContext paramTlsContext, int paramInt1, int paramInt2, int paramInt3)
  {
    return new TlsStreamCipher(paramTlsContext, ڐ(paramInt1), ڐ(paramInt1), ڔ(paramInt3), ڔ(paramInt3), paramInt2, true);
  }
  
  protected TlsBlockCipher ˋ(TlsContext paramTlsContext, int paramInt1, int paramInt2)
  {
    return new TlsBlockCipher(paramTlsContext, ma(), ma(), ڔ(paramInt2), ڔ(paramInt2), paramInt1);
  }
  
  protected TlsCipher ˋ(TlsContext paramTlsContext)
  {
    return new Chacha20Poly1305(paramTlsContext);
  }
  
  protected TlsNullCipher ˋ(TlsContext paramTlsContext, int paramInt)
  {
    return new TlsNullCipher(paramTlsContext, ڔ(paramInt), ڔ(paramInt));
  }
  
  protected TlsBlockCipher ˎ(TlsContext paramTlsContext, int paramInt)
  {
    return new TlsBlockCipher(paramTlsContext, mh(), mh(), ڔ(paramInt), ڔ(paramInt), 16);
  }
  
  protected TlsBlockCipher ˎ(TlsContext paramTlsContext, int paramInt1, int paramInt2)
  {
    return new TlsBlockCipher(paramTlsContext, me(), me(), ڔ(paramInt2), ڔ(paramInt2), paramInt1);
  }
  
  protected TlsAEADCipher ˏ(TlsContext paramTlsContext, int paramInt1, int paramInt2)
  {
    return new TlsAEADCipher(paramTlsContext, mb(), mb(), paramInt1, paramInt2);
  }
  
  protected StreamCipher ڐ(int paramInt)
  {
    return new Salsa20Engine(paramInt);
  }
  
  protected Digest ڔ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
      return null;
    case 1: 
      return TlsUtils.ͺ((short)1);
    case 2: 
      return TlsUtils.ͺ((short)2);
    case 3: 
      return TlsUtils.ͺ((short)4);
    case 4: 
      return TlsUtils.ͺ((short)5);
    case 5: 
      return TlsUtils.ͺ((short)6);
    }
    throw new TlsFatalAlert((short)80);
  }
  
  protected TlsAEADCipher ᐝ(TlsContext paramTlsContext, int paramInt1, int paramInt2)
  {
    return new TlsAEADCipher(paramTlsContext, mc(), mc(), paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.DefaultTlsCipherFactory
 * JD-Core Version:    0.7.0.1
 */