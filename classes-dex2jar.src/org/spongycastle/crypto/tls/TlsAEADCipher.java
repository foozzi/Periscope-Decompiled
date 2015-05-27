package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.modes.AEADBlockCipher;
import org.spongycastle.crypto.params.AEADParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Arrays;

public class TlsAEADCipher
  implements TlsCipher
{
  protected int aNz;
  protected TlsContext aSQ;
  protected int aUJ;
  protected AEADBlockCipher aUK;
  protected AEADBlockCipher aUL;
  protected byte[] aUM;
  protected byte[] aUN;
  
  public TlsAEADCipher(TlsContext paramTlsContext, AEADBlockCipher paramAEADBlockCipher1, AEADBlockCipher paramAEADBlockCipher2, int paramInt1, int paramInt2)
  {
    if (!TlsUtils.ᐝ(paramTlsContext)) {
      throw new TlsFatalAlert((short)80);
    }
    this.aSQ = paramTlsContext;
    this.aNz = paramInt2;
    this.aUJ = 8;
    int i = paramInt1 * 2 + 8;
    byte[] arrayOfByte2 = TlsUtils.ᐝ(paramTlsContext, i);
    Object localObject = new KeyParameter(arrayOfByte2, 0, paramInt1);
    int j = paramInt1 + 0;
    KeyParameter localKeyParameter = new KeyParameter(arrayOfByte2, j, paramInt1);
    paramInt1 = j + paramInt1;
    byte[] arrayOfByte1 = Arrays.copyOfRange(arrayOfByte2, paramInt1, paramInt1 + 4);
    paramInt1 += 4;
    arrayOfByte2 = Arrays.copyOfRange(arrayOfByte2, paramInt1, paramInt1 + 4);
    if (paramInt1 + 4 != i) {
      throw new TlsFatalAlert((short)80);
    }
    if (paramTlsContext.mM())
    {
      this.aUK = paramAEADBlockCipher2;
      this.aUL = paramAEADBlockCipher1;
      this.aUM = arrayOfByte2;
      this.aUN = arrayOfByte1;
      paramTlsContext = (TlsContext)localObject;
      localObject = localKeyParameter;
    }
    else
    {
      this.aUK = paramAEADBlockCipher1;
      this.aUL = paramAEADBlockCipher2;
      this.aUM = arrayOfByte1;
      this.aUN = arrayOfByte2;
      paramTlsContext = localKeyParameter;
    }
    paramAEADBlockCipher1 = new byte[this.aUJ + 4];
    this.aUK.ˊ(true, new AEADParameters((KeyParameter)localObject, paramInt2 * 8, paramAEADBlockCipher1));
    this.aUL.ˊ(false, new AEADParameters(paramTlsContext, paramInt2 * 8, paramAEADBlockCipher1));
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
    Object localObject = new byte[this.aUM.length + this.aUJ];
    System.arraycopy(this.aUM, 0, localObject, 0, this.aUM.length);
    TlsUtils.ᐝ(paramLong, (byte[])localObject, this.aUM.length);
    int i = this.aUK.getOutputSize(paramInt2);
    byte[] arrayOfByte1 = new byte[this.aUJ + i];
    System.arraycopy(localObject, this.aUM.length, arrayOfByte1, 0, this.aUJ);
    i = this.aUJ;
    byte[] arrayOfByte2 = ˊ(paramLong, paramShort, paramInt2);
    localObject = new AEADParameters(null, this.aNz * 8, (byte[])localObject, arrayOfByte2);
    try
    {
      this.aUK.ˊ(true, (CipherParameters)localObject);
      paramInt1 = i + this.aUK.ˋ(paramArrayOfByte, paramInt1, paramInt2, arrayOfByte1, i);
      paramInt2 = this.aUK.doFinal(arrayOfByte1, paramInt1);
    }
    catch (Exception paramArrayOfByte)
    {
      throw new TlsFatalAlert((short)80);
    }
    if (paramInt1 + paramInt2 != arrayOfByte1.length) {
      throw new TlsFatalAlert((short)80);
    }
    return arrayOfByte1;
  }
  
  public byte[] ˋ(long paramLong, short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (ز(paramInt2) < 0) {
      throw new TlsFatalAlert((short)50);
    }
    Object localObject = new byte[this.aUN.length + this.aUJ];
    System.arraycopy(this.aUN, 0, localObject, 0, this.aUN.length);
    System.arraycopy(paramArrayOfByte, paramInt1, localObject, this.aUN.length, this.aUJ);
    int i = this.aUJ;
    paramInt2 -= this.aUJ;
    int j = this.aUL.getOutputSize(paramInt2);
    byte[] arrayOfByte1 = new byte[j];
    byte[] arrayOfByte2 = ˊ(paramLong, paramShort, j);
    localObject = new AEADParameters(null, this.aNz * 8, (byte[])localObject, arrayOfByte2);
    try
    {
      this.aUL.ˊ(false, (CipherParameters)localObject);
      paramInt1 = this.aUL.ˋ(paramArrayOfByte, paramInt1 + i, paramInt2, arrayOfByte1, 0) + 0;
      paramInt2 = this.aUL.doFinal(arrayOfByte1, paramInt1);
    }
    catch (Exception paramArrayOfByte)
    {
      throw new TlsFatalAlert((short)20);
    }
    if (paramInt1 + paramInt2 != arrayOfByte1.length) {
      throw new TlsFatalAlert((short)80);
    }
    return arrayOfByte1;
  }
  
  public int ز(int paramInt)
  {
    return paramInt - this.aNz - this.aUJ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsAEADCipher
 * JD-Core Version:    0.7.0.1
 */