package org.spongycastle.crypto.modes;

import java.io.ByteArrayOutputStream;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.macs.CBCBlockCipherMac;
import org.spongycastle.crypto.params.AEADParameters;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;

public class CCMBlockCipher
  implements AEADBlockCipher
{
  private boolean aEW;
  private BlockCipher aEX;
  private int aNz;
  private byte[] aOF;
  private CipherParameters aOG;
  private byte[] aOH;
  private ExposedByteArrayOutputStream aOI = new ExposedByteArrayOutputStream();
  private ExposedByteArrayOutputStream aOJ = new ExposedByteArrayOutputStream();
  private byte[] aeu;
  private int fU;
  
  public CCMBlockCipher(BlockCipher paramBlockCipher)
  {
    this.aEX = paramBlockCipher;
    this.fU = paramBlockCipher.getBlockSize();
    this.aOH = new byte[this.fU];
    if (this.fU != 16) {
      throw new IllegalArgumentException("cipher required with a block size of 16.");
    }
  }
  
  private int kc()
  {
    int j = this.aOI.size();
    int i;
    if (this.aOF == null) {
      i = 0;
    } else {
      i = this.aOF.length;
    }
    return j + i;
  }
  
  private boolean kd()
  {
    return kc() > 0;
  }
  
  private int ˊ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2)
  {
    CBCBlockCipherMac localCBCBlockCipherMac = new CBCBlockCipherMac(this.aEX, this.aNz * 8);
    localCBCBlockCipherMac.ˊ(this.aOG);
    byte[] arrayOfByte = new byte[16];
    if (kd()) {
      arrayOfByte[0] = ((byte)(arrayOfByte[0] | 0x40));
    }
    arrayOfByte[0] = ((byte)(arrayOfByte[0] | ((localCBCBlockCipherMac.iO() - 2) / 2 & 0x7) << 3));
    arrayOfByte[0] = ((byte)(arrayOfByte[0] | 15 - this.aeu.length - 1 & 0x7));
    System.arraycopy(this.aeu, 0, arrayOfByte, 1, this.aeu.length);
    int j = paramInt2;
    int i = 1;
    while (j > 0)
    {
      arrayOfByte[(arrayOfByte.length - i)] = ((byte)(j & 0xFF));
      j >>>= 8;
      i += 1;
    }
    localCBCBlockCipherMac.update(arrayOfByte, 0, arrayOfByte.length);
    if (kd())
    {
      j = kc();
      if (j < 65280)
      {
        localCBCBlockCipherMac.update((byte)(j >> 8));
        localCBCBlockCipherMac.update((byte)j);
        i = 2;
      }
      else
      {
        localCBCBlockCipherMac.update((byte)-1);
        localCBCBlockCipherMac.update((byte)-2);
        localCBCBlockCipherMac.update((byte)(j >> 24));
        localCBCBlockCipherMac.update((byte)(j >> 16));
        localCBCBlockCipherMac.update((byte)(j >> 8));
        localCBCBlockCipherMac.update((byte)j);
        i = 6;
      }
      if (this.aOF != null) {
        localCBCBlockCipherMac.update(this.aOF, 0, this.aOF.length);
      }
      if (this.aOI.size() > 0) {
        localCBCBlockCipherMac.update(this.aOI.ke(), 0, this.aOI.size());
      }
      i = (i + j) % 16;
      if (i != 0) {
        while (i != 16)
        {
          localCBCBlockCipherMac.update((byte)0);
          i += 1;
        }
      }
    }
    localCBCBlockCipherMac.update(paramArrayOfByte1, paramInt1, paramInt2);
    return localCBCBlockCipherMac.doFinal(paramArrayOfByte2, 0);
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    paramInt = ˎ(this.aOJ.ke(), 0, this.aOJ.size(), paramArrayOfByte, paramInt);
    reset();
    return paramInt;
  }
  
  public int getOutputSize(int paramInt)
  {
    paramInt += this.aOJ.size();
    if (this.aEW) {
      return this.aNz + paramInt;
    }
    if (paramInt < this.aNz) {
      return 0;
    }
    return paramInt - this.aNz;
  }
  
  public BlockCipher iH()
  {
    return this.aEX;
  }
  
  public void reset()
  {
    this.aEX.reset();
    this.aOI.reset();
    this.aOJ.reset();
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aEW = paramBoolean;
    if ((paramCipherParameters instanceof AEADParameters))
    {
      paramCipherParameters = (AEADParameters)paramCipherParameters;
      this.aeu = paramCipherParameters.fn();
      this.aOF = paramCipherParameters.kp();
      this.aNz = (paramCipherParameters.iO() / 8);
      paramCipherParameters = paramCipherParameters.ko();
    }
    else if ((paramCipherParameters instanceof ParametersWithIV))
    {
      paramCipherParameters = (ParametersWithIV)paramCipherParameters;
      this.aeu = paramCipherParameters.getIV();
      this.aOF = null;
      this.aNz = (this.aOH.length / 2);
      paramCipherParameters = paramCipherParameters.lh();
    }
    else
    {
      throw new IllegalArgumentException("invalid parameters passed to CCM");
    }
    if (paramCipherParameters != null) {
      this.aOG = paramCipherParameters;
    }
    if ((this.aeu == null) || (this.aeu.length < 7) || (this.aeu.length > 13)) {
      throw new IllegalArgumentException("nonce must have length from 7 to 13 octets");
    }
    reset();
  }
  
  public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramArrayOfByte1.length < paramInt1 + paramInt2) {
      throw new DataLengthException("Input buffer too short");
    }
    this.aOJ.write(paramArrayOfByte1, paramInt1, paramInt2);
    return 0;
  }
  
  public int ˎ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (this.aOG == null) {
      throw new IllegalStateException("CCM cipher unitialized.");
    }
    int i = 15 - this.aeu.length;
    if ((i < 4) && (paramInt2 >= 1 << i * 8)) {
      throw new IllegalStateException("CCM packet too large for choice of q.");
    }
    byte[] arrayOfByte = new byte[this.fU];
    arrayOfByte[0] = ((byte)(i - 1 & 0x7));
    System.arraycopy(this.aeu, 0, arrayOfByte, 1, this.aeu.length);
    SICBlockCipher localSICBlockCipher = new SICBlockCipher(this.aEX);
    localSICBlockCipher.ˊ(this.aEW, new ParametersWithIV(this.aOG, arrayOfByte));
    i = paramInt1;
    int j = paramInt3;
    if (this.aEW)
    {
      k = paramInt2 + this.aNz;
      if (paramArrayOfByte2.length < k + paramInt3) {
        throw new OutputLengthException("Output buffer too short.");
      }
      ˊ(paramArrayOfByte1, paramInt1, paramInt2, this.aOH);
      localSICBlockCipher.ˊ(this.aOH, 0, this.aOH, 0);
      while (i < paramInt1 + paramInt2 - this.fU)
      {
        localSICBlockCipher.ˊ(paramArrayOfByte1, i, paramArrayOfByte2, j);
        j += this.fU;
        i += this.fU;
      }
      arrayOfByte = new byte[this.fU];
      System.arraycopy(paramArrayOfByte1, i, arrayOfByte, 0, paramInt2 + paramInt1 - i);
      localSICBlockCipher.ˊ(arrayOfByte, 0, arrayOfByte, 0);
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte2, j, paramInt2 + paramInt1 - i);
      System.arraycopy(this.aOH, 0, paramArrayOfByte2, paramInt3 + paramInt2, this.aNz);
      return k;
    }
    if (paramInt2 < this.aNz) {
      throw new InvalidCipherTextException("data too short");
    }
    int n = paramInt2 - this.aNz;
    if (paramArrayOfByte2.length < n + paramInt3) {
      throw new OutputLengthException("Output buffer too short.");
    }
    System.arraycopy(paramArrayOfByte1, paramInt1 + n, this.aOH, 0, this.aNz);
    localSICBlockCipher.ˊ(this.aOH, 0, this.aOH, 0);
    int k = this.aNz;
    int m;
    for (;;)
    {
      paramInt2 = i;
      m = j;
      if (k == this.aOH.length) {
        break;
      }
      this.aOH[k] = 0;
      k += 1;
    }
    while (paramInt2 < paramInt1 + n - this.fU)
    {
      localSICBlockCipher.ˊ(paramArrayOfByte1, paramInt2, paramArrayOfByte2, m);
      m += this.fU;
      paramInt2 += this.fU;
    }
    arrayOfByte = new byte[this.fU];
    System.arraycopy(paramArrayOfByte1, paramInt2, arrayOfByte, 0, n - (paramInt2 - paramInt1));
    localSICBlockCipher.ˊ(arrayOfByte, 0, arrayOfByte, 0);
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte2, m, n - (paramInt2 - paramInt1));
    paramArrayOfByte1 = new byte[this.fU];
    ˊ(paramArrayOfByte2, paramInt3, n, paramArrayOfByte1);
    if (!Arrays.ｰ(this.aOH, paramArrayOfByte1)) {
      throw new InvalidCipherTextException("mac check in CCM failed");
    }
    return n;
  }
  
  public int ء(int paramInt)
  {
    return 0;
  }
  
  public void ᵔ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aOI.write(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  class ExposedByteArrayOutputStream
    extends ByteArrayOutputStream
  {
    public ExposedByteArrayOutputStream() {}
    
    public byte[] ke()
    {
      return this.buf;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.CCMBlockCipher
 * JD-Core Version:    0.7.0.1
 */