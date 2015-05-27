package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.engines.ChaChaEngine;
import org.spongycastle.crypto.generators.Poly1305KeyGenerator;
import org.spongycastle.crypto.macs.Poly1305;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;

public class Chacha20Poly1305
  implements TlsCipher
{
  protected TlsContext aSQ;
  protected ChaChaEngine aTa;
  protected ChaChaEngine aTb;
  
  public Chacha20Poly1305(TlsContext paramTlsContext)
  {
    if (!TlsUtils.ᐝ(paramTlsContext)) {
      throw new TlsFatalAlert((short)80);
    }
    this.aSQ = paramTlsContext;
    Object localObject2 = TlsUtils.ᐝ(paramTlsContext, 64);
    Object localObject1 = new KeyParameter((byte[])localObject2, 0, 32);
    localObject2 = new KeyParameter((byte[])localObject2, 32, 32);
    this.aTa = new ChaChaEngine(20);
    this.aTb = new ChaChaEngine(20);
    if (paramTlsContext.mM())
    {
      paramTlsContext = (TlsContext)localObject1;
      localObject1 = localObject2;
    }
    else
    {
      paramTlsContext = (TlsContext)localObject2;
    }
    localObject2 = new byte[8];
    this.aTa.ˊ(true, new ParametersWithIV((CipherParameters)localObject1, (byte[])localObject2));
    this.aTb.ˊ(false, new ParametersWithIV(paramTlsContext, (byte[])localObject2));
  }
  
  protected KeyParameter ˊ(ChaChaEngine paramChaChaEngine, boolean paramBoolean, long paramLong)
  {
    byte[] arrayOfByte = new byte[8];
    TlsUtils.ᐝ(paramLong, arrayOfByte, 0);
    paramChaChaEngine.ˊ(paramBoolean, new ParametersWithIV(null, arrayOfByte));
    arrayOfByte = new byte[64];
    paramChaChaEngine.ˋ(arrayOfByte, 0, arrayOfByte.length, arrayOfByte, 0);
    System.arraycopy(arrayOfByte, 0, arrayOfByte, 32, 16);
    paramChaChaEngine = new KeyParameter(arrayOfByte, 16, 32);
    Poly1305KeyGenerator.יּ(paramChaChaEngine.getKey());
    return paramChaChaEngine;
  }
  
  protected void ˊ(Mac paramMac, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramMac.update(paramArrayOfByte, paramInt1, paramInt2);
    paramArrayOfByte = Pack.ﹴ(paramInt2 & 0xFFFFFFFF);
    paramMac.update(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  protected byte[] ˊ(long paramLong, short paramShort, int paramInt)
  {
    byte[] arrayOfByte = new byte[13];
    TlsUtils.ᐝ(paramLong, arrayOfByte, 0);
    TlsUtils.ˊ(paramShort, arrayOfByte, 8);
    TlsUtils.ˊ(this.aSQ.lJ(), arrayOfByte, 9);
    TlsUtils.ʽ(paramInt, arrayOfByte, 11);
    return arrayOfByte;
  }
  
  public byte[] ˊ(long paramLong, short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    KeyParameter localKeyParameter = ˊ(this.aTa, true, paramLong);
    byte[] arrayOfByte = new byte[paramInt2 + 16];
    this.aTa.ˋ(paramArrayOfByte, paramInt1, paramInt2, arrayOfByte, 0);
    paramArrayOfByte = ˊ(localKeyParameter, ˊ(paramLong, paramShort, paramInt2), arrayOfByte, 0, paramInt2);
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, paramInt2, paramArrayOfByte.length);
    return arrayOfByte;
  }
  
  protected byte[] ˊ(KeyParameter paramKeyParameter, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2)
  {
    Poly1305 localPoly1305 = new Poly1305();
    localPoly1305.ˊ(paramKeyParameter);
    ˊ(localPoly1305, paramArrayOfByte1, 0, paramArrayOfByte1.length);
    ˊ(localPoly1305, paramArrayOfByte2, paramInt1, paramInt2);
    paramKeyParameter = new byte[localPoly1305.iO()];
    localPoly1305.doFinal(paramKeyParameter, 0);
    return paramKeyParameter;
  }
  
  public byte[] ˋ(long paramLong, short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (ز(paramInt2) < 0) {
      throw new TlsFatalAlert((short)50);
    }
    int i = paramInt2 - 16;
    byte[] arrayOfByte = Arrays.copyOfRange(paramArrayOfByte, paramInt1 + i, paramInt1 + paramInt2);
    if (!Arrays.ｰ(ˊ(ˊ(this.aTb, false, paramLong), ˊ(paramLong, paramShort, i), paramArrayOfByte, paramInt1, i), arrayOfByte)) {
      throw new TlsFatalAlert((short)20);
    }
    arrayOfByte = new byte[i];
    this.aTb.ˋ(paramArrayOfByte, paramInt1, i, arrayOfByte, 0);
    return arrayOfByte;
  }
  
  public int ز(int paramInt)
  {
    return paramInt - 16;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.Chacha20Poly1305
 * JD-Core Version:    0.7.0.1
 */