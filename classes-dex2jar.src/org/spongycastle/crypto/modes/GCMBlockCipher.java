package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.modes.gcm.GCMExponentiator;
import org.spongycastle.crypto.modes.gcm.GCMMultiplier;
import org.spongycastle.crypto.modes.gcm.Tables1kGCMExponentiator;
import org.spongycastle.crypto.modes.gcm.Tables8kGCMMultiplier;
import org.spongycastle.crypto.params.AEADParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;

public class GCMBlockCipher
  implements AEADBlockCipher
{
  private int aEU;
  private boolean aEW;
  private BlockCipher aEX;
  private byte[] aFR;
  private byte[] aGd;
  private int aNz;
  private byte[] aOF;
  private byte[] aOH;
  private byte[] aOP;
  private GCMMultiplier aOU;
  private GCMExponentiator aOV;
  private byte[] aOW;
  private byte[] aOX;
  private byte[] aOY;
  private byte[] aOZ;
  private long aPa;
  private byte[] aPb;
  private int aPc;
  private long aPd;
  private long aPe;
  private byte[] aeu;
  
  public GCMBlockCipher(BlockCipher paramBlockCipher)
  {
    this(paramBlockCipher, null);
  }
  
  public GCMBlockCipher(BlockCipher paramBlockCipher, GCMMultiplier paramGCMMultiplier)
  {
    if (paramBlockCipher.getBlockSize() != 16) {
      throw new IllegalArgumentException("cipher required with a block size of 16.");
    }
    Object localObject = paramGCMMultiplier;
    if (paramGCMMultiplier == null) {
      localObject = new Tables8kGCMMultiplier();
    }
    this.aEX = paramBlockCipher;
    this.aOU = ((GCMMultiplier)localObject);
  }
  
  private void kg()
  {
    if (this.aPd > 0L)
    {
      System.arraycopy(this.aOX, 0, this.aOY, 0, 16);
      this.aPe = this.aPd;
    }
    if (this.aPc > 0)
    {
      ˊ(this.aOY, this.aPb, 0, this.aPc);
      this.aPe += this.aPc;
    }
    if (this.aPe > 0L) {
      System.arraycopy(this.aOY, 0, this.aGd, 0, 16);
    }
  }
  
  private byte[] ki()
  {
    int j = 15;
    while (j >= 12)
    {
      int i = (byte)(this.aOZ[j] + 1 & 0xFF);
      this.aOZ[j] = i;
      if (i != 0) {
        break;
      }
      j -= 1;
    }
    byte[] arrayOfByte = new byte[16];
    this.aEX.ˊ(this.aOZ, 0, arrayOfByte, 0);
    return arrayOfByte;
  }
  
  private void ʻ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      ˊ(paramArrayOfByte1, paramArrayOfByte2, i, Math.min(paramInt - i, 16));
      i += 16;
    }
  }
  
  private static void ʾ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 15;
    while (i >= 0)
    {
      paramArrayOfByte1[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[i]));
      i -= 1;
    }
  }
  
  private void ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2)
  {
    ˋ(paramArrayOfByte1, paramArrayOfByte2, paramInt1, paramInt2);
    this.aOU.ᵀ(paramArrayOfByte1);
  }
  
  private static void ˋ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2)
  {
    for (;;)
    {
      int i = paramInt2 - 1;
      if (paramInt2 <= 0) {
        break;
      }
      paramArrayOfByte1[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[(paramInt1 + i)]));
      paramInt2 = i;
    }
  }
  
  private void ˏ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    byte[] arrayOfByte = ki();
    ˋ(arrayOfByte, paramArrayOfByte1, paramInt1, paramInt2);
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte2, paramInt3, paramInt2);
    paramArrayOfByte2 = this.aGd;
    if (this.aEW) {
      paramArrayOfByte1 = arrayOfByte;
    }
    ˊ(paramArrayOfByte2, paramArrayOfByte1, 0, paramInt2);
    this.aPa += paramInt2;
  }
  
  private void ͺ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    ʾ(paramArrayOfByte1, paramArrayOfByte2);
    this.aOU.ᵀ(paramArrayOfByte1);
  }
  
  private void ᐝ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    byte[] arrayOfByte = ki();
    ʾ(arrayOfByte, paramArrayOfByte1);
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte2, paramInt, 16);
    paramArrayOfByte2 = this.aGd;
    if (this.aEW) {
      paramArrayOfByte1 = arrayOfByte;
    }
    ͺ(paramArrayOfByte2, paramArrayOfByte1);
    this.aPa += 16L;
  }
  
  private static void ᔇ(byte[] paramArrayOfByte)
  {
    int i = 0;
    int k;
    for (int j = 0;; j = (k & 0x1) << 7)
    {
      k = paramArrayOfByte[i] & 0xFF;
      paramArrayOfByte[i] = ((byte)(k >>> 1 | j));
      i += 1;
      if (i == 16) {
        return;
      }
    }
  }
  
  private void ᴵ(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte.length < paramInt + 16) {
      throw new OutputLengthException("Output buffer too short");
    }
    if (this.aPa == 0L) {
      kg();
    }
    ᐝ(this.aOP, paramArrayOfByte, paramInt);
    if (this.aEW)
    {
      this.aEU = 0;
      return;
    }
    System.arraycopy(this.aOP, 16, this.aOP, 0, this.aNz);
    this.aEU = this.aNz;
  }
  
  private static void ι(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte1 = Arrays.І(paramArrayOfByte1);
    byte[] arrayOfByte2 = new byte[16];
    int i = 0;
    while (i < 16)
    {
      int m = paramArrayOfByte2[i];
      int j = 7;
      while (j >= 0)
      {
        if ((1 << j & m) != 0) {
          ʾ(arrayOfByte2, arrayOfByte1);
        }
        int k;
        if ((arrayOfByte1[15] & 0x1) != 0) {
          k = 1;
        } else {
          k = 0;
        }
        ᔇ(arrayOfByte1);
        if (k != 0) {
          arrayOfByte1[0] = ((byte)(arrayOfByte1[0] ^ 0xFFFFFFE1));
        }
        j -= 1;
      }
      i += 1;
    }
    System.arraycopy(arrayOfByte2, 0, paramArrayOfByte1, 0, 16);
  }
  
  private void וֹ(boolean paramBoolean)
  {
    this.aEX.reset();
    this.aGd = new byte[16];
    this.aOX = new byte[16];
    this.aOY = new byte[16];
    this.aPb = new byte[16];
    this.aPc = 0;
    this.aPd = 0L;
    this.aPe = 0L;
    this.aOZ = Arrays.І(this.aOW);
    this.aEU = 0;
    this.aPa = 0L;
    if (this.aOP != null) {
      Arrays.fill(this.aOP, (byte)0);
    }
    if (paramBoolean) {
      this.aOH = null;
    }
    if (this.aOF != null) {
      ᵔ(this.aOF, 0, this.aOF.length);
    }
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    if (this.aPa == 0L) {
      kg();
    }
    int j = this.aEU;
    int i = j;
    if (!this.aEW)
    {
      if (j < this.aNz) {
        throw new InvalidCipherTextException("data too short");
      }
      i = j - this.aNz;
    }
    if (i > 0)
    {
      if (paramArrayOfByte.length < paramInt + i) {
        throw new OutputLengthException("Output buffer too short");
      }
      ˏ(this.aOP, 0, i, paramArrayOfByte, paramInt);
    }
    this.aPd += this.aPc;
    if (this.aPd > this.aPe)
    {
      if (this.aPc > 0) {
        ˊ(this.aOX, this.aPb, 0, this.aPc);
      }
      if (this.aPe > 0L) {
        ʾ(this.aOX, this.aOY);
      }
      long l = this.aPa;
      arrayOfByte = new byte[16];
      if (this.aOV == null)
      {
        this.aOV = new Tables1kGCMExponentiator();
        this.aOV.init(this.aFR);
      }
      this.aOV.ˋ(l * 8L + 127L >>> 7, arrayOfByte);
      ι(this.aOX, arrayOfByte);
      ʾ(this.aGd, this.aOX);
    }
    byte[] arrayOfByte = new byte[16];
    Pack.ʻ(this.aPd * 8L, arrayOfByte, 0);
    Pack.ʻ(this.aPa * 8L, arrayOfByte, 8);
    ͺ(this.aGd, arrayOfByte);
    arrayOfByte = new byte[16];
    this.aEX.ˊ(this.aOW, 0, arrayOfByte, 0);
    ʾ(arrayOfByte, this.aGd);
    j = i;
    this.aOH = new byte[this.aNz];
    System.arraycopy(arrayOfByte, 0, this.aOH, 0, this.aNz);
    if (this.aEW)
    {
      if (paramArrayOfByte.length < paramInt + i + this.aNz) {
        throw new OutputLengthException("Output buffer too short");
      }
      System.arraycopy(this.aOH, 0, paramArrayOfByte, this.aEU + paramInt, this.aNz);
      j += this.aNz;
    }
    else
    {
      paramArrayOfByte = new byte[this.aNz];
      System.arraycopy(this.aOP, i, paramArrayOfByte, 0, this.aNz);
      if (!Arrays.ｰ(this.aOH, paramArrayOfByte)) {
        throw new InvalidCipherTextException("mac check in GCM failed");
      }
    }
    וֹ(false);
    return j;
  }
  
  public int getOutputSize(int paramInt)
  {
    paramInt += this.aEU;
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
    וֹ(true);
  }
  
  public void ʿ(byte paramByte)
  {
    this.aPb[this.aPc] = paramByte;
    int i = this.aPc + 1;
    this.aPc = i;
    if (i == 16)
    {
      ͺ(this.aOX, this.aPb);
      this.aPc = 0;
      this.aPd += 16L;
    }
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aEW = paramBoolean;
    this.aOH = null;
    int i;
    if ((paramCipherParameters instanceof AEADParameters))
    {
      paramCipherParameters = (AEADParameters)paramCipherParameters;
      this.aeu = paramCipherParameters.fn();
      this.aOF = paramCipherParameters.kp();
      i = paramCipherParameters.iO();
      if ((i < 32) || (i > 128) || (i % 8 != 0)) {
        throw new IllegalArgumentException("Invalid value for MAC size: " + i);
      }
      this.aNz = (i / 8);
      paramCipherParameters = paramCipherParameters.ko();
    }
    else if ((paramCipherParameters instanceof ParametersWithIV))
    {
      paramCipherParameters = (ParametersWithIV)paramCipherParameters;
      this.aeu = paramCipherParameters.getIV();
      this.aOF = null;
      this.aNz = 16;
      paramCipherParameters = (KeyParameter)paramCipherParameters.lh();
    }
    else
    {
      throw new IllegalArgumentException("invalid parameters passed to GCM");
    }
    if (paramBoolean) {
      i = 16;
    } else {
      i = this.aNz + 16;
    }
    this.aOP = new byte[i];
    if ((this.aeu == null) || (this.aeu.length < 1)) {
      throw new IllegalArgumentException("IV must be at least 1 byte");
    }
    if (paramCipherParameters != null)
    {
      this.aEX.ˊ(true, paramCipherParameters);
      this.aFR = new byte[16];
      this.aEX.ˊ(this.aFR, 0, this.aFR, 0);
      this.aOU.init(this.aFR);
      this.aOV = null;
    }
    else if (this.aFR == null)
    {
      throw new IllegalArgumentException("Key must be specified in initial init");
    }
    this.aOW = new byte[16];
    if (this.aeu.length == 12)
    {
      System.arraycopy(this.aeu, 0, this.aOW, 0, this.aeu.length);
      this.aOW[15] = 1;
    }
    else
    {
      ʻ(this.aOW, this.aeu, this.aeu.length);
      paramCipherParameters = new byte[16];
      Pack.ʻ(this.aeu.length * 8L, paramCipherParameters, 8);
      ͺ(this.aOW, paramCipherParameters);
    }
    this.aGd = new byte[16];
    this.aOX = new byte[16];
    this.aOY = new byte[16];
    this.aPb = new byte[16];
    this.aPc = 0;
    this.aPd = 0L;
    this.aPe = 0L;
    this.aOZ = Arrays.І(this.aOW);
    this.aEU = 0;
    this.aPa = 0L;
    if (this.aOF != null) {
      ᵔ(this.aOF, 0, this.aOF.length);
    }
  }
  
  public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramArrayOfByte1.length < paramInt1 + paramInt2) {
      throw new DataLengthException("Input buffer too short");
    }
    int j = 0;
    int i = 0;
    while (i < paramInt2)
    {
      this.aOP[this.aEU] = paramArrayOfByte1[(paramInt1 + i)];
      int m = this.aEU + 1;
      this.aEU = m;
      int k = j;
      if (m == this.aOP.length)
      {
        ᴵ(paramArrayOfByte2, paramInt3 + j);
        k = j + 16;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  public int ء(int paramInt)
  {
    int i = paramInt + this.aEU;
    paramInt = i;
    if (!this.aEW)
    {
      if (i < this.aNz) {
        return 0;
      }
      paramInt = i - this.aNz;
    }
    return paramInt - paramInt % 16;
  }
  
  public void ᵔ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (i < paramInt2)
    {
      this.aPb[this.aPc] = paramArrayOfByte[(paramInt1 + i)];
      int j = this.aPc + 1;
      this.aPc = j;
      if (j == 16)
      {
        ͺ(this.aOX, this.aPb);
        this.aPc = 0;
        this.aPd += 16L;
      }
      i += 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.GCMBlockCipher
 * JD-Core Version:    0.7.0.1
 */