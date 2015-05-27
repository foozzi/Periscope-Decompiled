package org.spongycastle.crypto.modes;

import java.util.Vector;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.AEADParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;

public class OCBBlockCipher
  implements AEADBlockCipher
{
  private boolean aEW;
  private byte[] aFU;
  private int aNz;
  private byte[] aOF;
  private byte[] aOH;
  private BlockCipher aPj;
  private BlockCipher aPk;
  private Vector aPl;
  private byte[] aPm;
  private byte[] aPn;
  private byte[] aPo = null;
  private byte[] aPp = new byte[24];
  private byte[] aPq = new byte[16];
  private byte[] aPr;
  private byte[] aPs;
  private int aPt;
  private int aPu;
  private long aPv;
  private long aPw;
  private byte[] aPx;
  private byte[] aPy = new byte[16];
  private byte[] aPz;
  
  public OCBBlockCipher(BlockCipher paramBlockCipher1, BlockCipher paramBlockCipher2)
  {
    if (paramBlockCipher1 == null) {
      throw new IllegalArgumentException("'hashCipher' cannot be null");
    }
    if (paramBlockCipher1.getBlockSize() != 16) {
      throw new IllegalArgumentException("'hashCipher' must have a block size of 16");
    }
    if (paramBlockCipher2 == null) {
      throw new IllegalArgumentException("'mainCipher' cannot be null");
    }
    if (paramBlockCipher2.getBlockSize() != 16) {
      throw new IllegalArgumentException("'mainCipher' must have a block size of 16");
    }
    if (!paramBlockCipher1.iG().equals(paramBlockCipher2.iG())) {
      throw new IllegalArgumentException("'hashCipher' and 'mainCipher' must be the same algorithm");
    }
    this.aPj = paramBlockCipher1;
    this.aPk = paramBlockCipher2;
  }
  
  protected static int ʽ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int j = 16;
    int k;
    for (int i = 0;; i = k >>> 7 & 0x1)
    {
      j -= 1;
      if (j < 0) {
        break;
      }
      k = paramArrayOfByte1[j] & 0xFF;
      paramArrayOfByte2[j] = ((byte)(k << 1 | i));
    }
    return i;
  }
  
  protected static void ʾ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 15;
    while (i >= 0)
    {
      paramArrayOfByte1[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[i]));
      i -= 1;
    }
  }
  
  protected static byte[] ᴸ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[16];
    int i = ʽ(paramArrayOfByte, arrayOfByte);
    arrayOfByte[15] = ((byte)(arrayOfByte[15] ^ 135 >>> (1 - i << 3)));
    return arrayOfByte;
  }
  
  protected static void ᵔ(byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[paramInt] = -128;
    for (;;)
    {
      paramInt += 1;
      if (paramInt >= 16) {
        break;
      }
      paramArrayOfByte[paramInt] = 0;
    }
  }
  
  protected static int ᵙ(long paramLong)
  {
    if (paramLong == 0L) {
      return 64;
    }
    int i = 0;
    while ((1L & paramLong) == 0L)
    {
      i += 1;
      paramLong >>>= 1;
    }
    return i;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte1 = null;
    if (!this.aEW)
    {
      if (this.aPu < this.aNz) {
        throw new InvalidCipherTextException("data too short");
      }
      this.aPu -= this.aNz;
      arrayOfByte1 = new byte[this.aNz];
      System.arraycopy(this.aPs, this.aPu, arrayOfByte1, 0, this.aNz);
    }
    if (this.aPt > 0)
    {
      ᵔ(this.aPr, this.aPt);
      ᴶ(this.aPm);
    }
    if (this.aPu > 0)
    {
      if (this.aEW)
      {
        ᵔ(this.aPs, this.aPu);
        ʾ(this.aPz, this.aPs);
      }
      ʾ(this.aPy, this.aPm);
      byte[] arrayOfByte2 = new byte[16];
      this.aPj.ˊ(this.aPy, 0, arrayOfByte2, 0);
      ʾ(this.aPs, arrayOfByte2);
      if (paramArrayOfByte.length < this.aPu + paramInt) {
        throw new OutputLengthException("Output buffer too short");
      }
      System.arraycopy(this.aPs, 0, paramArrayOfByte, paramInt, this.aPu);
      if (!this.aEW)
      {
        ᵔ(this.aPs, this.aPu);
        ʾ(this.aPz, this.aPs);
      }
    }
    ʾ(this.aPz, this.aPy);
    ʾ(this.aPz, this.aPn);
    this.aPj.ˊ(this.aPz, 0, this.aPz, 0);
    ʾ(this.aPz, this.aFU);
    this.aOH = new byte[this.aNz];
    System.arraycopy(this.aPz, 0, this.aOH, 0, this.aNz);
    int i = this.aPu;
    if (this.aEW)
    {
      if (paramArrayOfByte.length < paramInt + i + this.aNz) {
        throw new OutputLengthException("Output buffer too short");
      }
      System.arraycopy(this.aOH, 0, paramArrayOfByte, paramInt + i, this.aNz);
      paramInt = i + this.aNz;
    }
    else
    {
      paramInt = i;
      if (!Arrays.ｰ(this.aOH, arrayOfByte1)) {
        throw new InvalidCipherTextException("mac check in OCB failed");
      }
    }
    וֹ(false);
    return paramInt;
  }
  
  public int getOutputSize(int paramInt)
  {
    paramInt += this.aPu;
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
    return this.aPk;
  }
  
  protected void kj()
  {
    long l = this.aPv + 1L;
    this.aPv = l;
    ᴶ(ʖ(ᵙ(l)));
    this.aPt = 0;
  }
  
  protected byte[] ʖ(int paramInt)
  {
    while (paramInt >= this.aPl.size()) {
      this.aPl.addElement(ᴸ((byte[])this.aPl.lastElement()));
    }
    return (byte[])this.aPl.elementAt(paramInt);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    boolean bool = this.aEW;
    this.aEW = paramBoolean;
    this.aOH = null;
    Object localObject1;
    if ((paramCipherParameters instanceof AEADParameters))
    {
      localObject1 = (AEADParameters)paramCipherParameters;
      paramCipherParameters = ((AEADParameters)localObject1).fn();
      this.aOF = ((AEADParameters)localObject1).kp();
      i = ((AEADParameters)localObject1).iO();
      if ((i < 64) || (i > 128) || (i % 8 != 0)) {
        throw new IllegalArgumentException("Invalid value for MAC size: " + i);
      }
      this.aNz = (i / 8);
      localObject1 = ((AEADParameters)localObject1).ko();
    }
    else if ((paramCipherParameters instanceof ParametersWithIV))
    {
      localObject1 = (ParametersWithIV)paramCipherParameters;
      paramCipherParameters = ((ParametersWithIV)localObject1).getIV();
      this.aOF = null;
      this.aNz = 16;
      localObject1 = (KeyParameter)((ParametersWithIV)localObject1).lh();
    }
    else
    {
      throw new IllegalArgumentException("invalid parameters passed to OCB");
    }
    this.aPr = new byte[16];
    if (paramBoolean) {
      i = 16;
    } else {
      i = this.aNz + 16;
    }
    this.aPs = new byte[i];
    Object localObject2 = paramCipherParameters;
    if (paramCipherParameters == null) {
      localObject2 = new byte[0];
    }
    if (localObject2.length > 15) {
      throw new IllegalArgumentException("IV must be no more than 15 bytes");
    }
    if (localObject1 != null)
    {
      this.aPj.ˊ(true, (CipherParameters)localObject1);
      this.aPk.ˊ(paramBoolean, (CipherParameters)localObject1);
      this.aPo = null;
    }
    else if (bool != paramBoolean)
    {
      throw new IllegalArgumentException("cannot change encrypting state without providing key.");
    }
    this.aPm = new byte[16];
    this.aPj.ˊ(this.aPm, 0, this.aPm, 0);
    this.aPn = ᴸ(this.aPm);
    this.aPl = new Vector();
    this.aPl.addElement(ᴸ(this.aPn));
    int i = ᔈ((byte[])localObject2);
    int k = i % 8;
    int j = i / 8;
    if (k == 0)
    {
      System.arraycopy(this.aPp, j, this.aPq, 0, 16);
    }
    else
    {
      i = 0;
      while (i < 16)
      {
        int m = this.aPp[j];
        paramCipherParameters = this.aPp;
        j += 1;
        int n = paramCipherParameters[j];
        this.aPq[i] = ((byte)((m & 0xFF) << k | (n & 0xFF) >>> 8 - k));
        i += 1;
      }
    }
    this.aPt = 0;
    this.aPu = 0;
    this.aPv = 0L;
    this.aPw = 0L;
    this.aPx = new byte[16];
    this.aFU = new byte[16];
    System.arraycopy(this.aPq, 0, this.aPy, 0, 16);
    this.aPz = new byte[16];
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
      this.aPs[this.aPu] = paramArrayOfByte1[(paramInt1 + i)];
      int m = this.aPu + 1;
      this.aPu = m;
      int k = j;
      if (m == this.aPs.length)
      {
        ᵎ(paramArrayOfByte2, paramInt3 + j);
        k = j + 16;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  public int ء(int paramInt)
  {
    int i = paramInt + this.aPu;
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
  
  protected int ᔈ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[16];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, arrayOfByte.length - paramArrayOfByte.length, paramArrayOfByte.length);
    arrayOfByte[0] = ((byte)(this.aNz << 4));
    int i = 15 - paramArrayOfByte.length;
    arrayOfByte[i] = ((byte)(arrayOfByte[i] | 0x1));
    int j = arrayOfByte[15];
    arrayOfByte[15] = ((byte)(arrayOfByte[15] & 0xC0));
    if ((this.aPo == null) || (!Arrays.ﹺ(arrayOfByte, this.aPo)))
    {
      paramArrayOfByte = new byte[16];
      this.aPo = arrayOfByte;
      this.aPj.ˊ(this.aPo, 0, paramArrayOfByte, 0);
      System.arraycopy(paramArrayOfByte, 0, this.aPp, 0, 16);
      i = 0;
      while (i < 8)
      {
        this.aPp[(i + 16)] = ((byte)(paramArrayOfByte[i] ^ paramArrayOfByte[(i + 1)]));
        i += 1;
      }
    }
    return j & 0x3F;
  }
  
  protected void ᗮ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      Arrays.fill(paramArrayOfByte, (byte)0);
    }
  }
  
  protected void ᴶ(byte[] paramArrayOfByte)
  {
    ʾ(this.aPx, paramArrayOfByte);
    ʾ(this.aPr, this.aPx);
    this.aPj.ˊ(this.aPr, 0, this.aPr, 0);
    ʾ(this.aFU, this.aPr);
  }
  
  protected void ᵎ(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte.length < paramInt + 16) {
      throw new OutputLengthException("Output buffer too short");
    }
    if (this.aEW)
    {
      ʾ(this.aPz, this.aPs);
      this.aPu = 0;
    }
    byte[] arrayOfByte = this.aPy;
    long l = this.aPw + 1L;
    this.aPw = l;
    ʾ(arrayOfByte, ʖ(ᵙ(l)));
    ʾ(this.aPs, this.aPy);
    this.aPk.ˊ(this.aPs, 0, this.aPs, 0);
    ʾ(this.aPs, this.aPy);
    System.arraycopy(this.aPs, 0, paramArrayOfByte, paramInt, 16);
    if (!this.aEW)
    {
      ʾ(this.aPz, this.aPs);
      System.arraycopy(this.aPs, 16, this.aPs, 0, this.aNz);
      this.aPu = this.aNz;
    }
  }
  
  public void ᵔ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (i < paramInt2)
    {
      this.aPr[this.aPt] = paramArrayOfByte[(paramInt1 + i)];
      int j = this.aPt + 1;
      this.aPt = j;
      if (j == this.aPr.length) {
        kj();
      }
      i += 1;
    }
  }
  
  protected void וֹ(boolean paramBoolean)
  {
    this.aPj.reset();
    this.aPk.reset();
    ᗮ(this.aPr);
    ᗮ(this.aPs);
    this.aPt = 0;
    this.aPu = 0;
    this.aPv = 0L;
    this.aPw = 0L;
    ᗮ(this.aPx);
    ᗮ(this.aFU);
    System.arraycopy(this.aPq, 0, this.aPy, 0, 16);
    ᗮ(this.aPz);
    if (paramBoolean) {
      this.aOH = null;
    }
    if (this.aOF != null) {
      ᵔ(this.aOF, 0, this.aOF.length);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.OCBBlockCipher
 * JD-Core Version:    0.7.0.1
 */