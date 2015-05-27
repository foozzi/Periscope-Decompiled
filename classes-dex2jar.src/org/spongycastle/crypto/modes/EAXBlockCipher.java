package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.macs.CMac;
import org.spongycastle.crypto.params.AEADParameters;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;

public class EAXBlockCipher
  implements AEADBlockCipher
{
  private int aEU;
  private boolean aEW;
  private Mac aKx;
  private int aNz;
  private byte[] aOF;
  private byte[] aOH;
  private SICBlockCipher aOM;
  private byte[] aON;
  private byte[] aOO;
  private byte[] aOP;
  private boolean aOQ;
  private int fU;
  
  public EAXBlockCipher(BlockCipher paramBlockCipher)
  {
    this.fU = paramBlockCipher.getBlockSize();
    this.aKx = new CMac(paramBlockCipher);
    this.aOH = new byte[this.fU];
    this.aOO = new byte[this.aKx.iO()];
    this.aON = new byte[this.aKx.iO()];
    this.aOM = new SICBlockCipher(paramBlockCipher);
  }
  
  private void kg()
  {
    if (this.aOQ) {
      return;
    }
    this.aOQ = true;
    this.aKx.doFinal(this.aOO, 0);
    byte[] arrayOfByte = new byte[this.fU];
    arrayOfByte[(this.fU - 1)] = 2;
    this.aKx.update(arrayOfByte, 0, this.fU);
  }
  
  private void kh()
  {
    byte[] arrayOfByte = new byte[this.fU];
    this.aKx.doFinal(arrayOfByte, 0);
    int i = 0;
    while (i < this.aOH.length)
    {
      this.aOH[i] = ((byte)(this.aON[i] ^ this.aOO[i] ^ arrayOfByte[i]));
      i += 1;
    }
  }
  
  private int ˊ(byte paramByte, byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = this.aOP;
    int i = this.aEU;
    this.aEU = (i + 1);
    arrayOfByte[i] = paramByte;
    if (this.aEU == this.aOP.length)
    {
      if (paramArrayOfByte.length < this.fU + paramInt) {
        throw new OutputLengthException("Output buffer is too short");
      }
      if (this.aEW)
      {
        i = this.aOM.ˊ(this.aOP, 0, paramArrayOfByte, paramInt);
        this.aKx.update(paramArrayOfByte, paramInt, this.fU);
        paramInt = i;
      }
      else
      {
        this.aKx.update(this.aOP, 0, this.fU);
        paramInt = this.aOM.ˊ(this.aOP, 0, paramArrayOfByte, paramInt);
      }
      this.aEU = 0;
      if (!this.aEW)
      {
        System.arraycopy(this.aOP, this.fU, this.aOP, 0, this.aNz);
        this.aEU = this.aNz;
      }
      return paramInt;
    }
    return 0;
  }
  
  private boolean ٴ(byte[] paramArrayOfByte, int paramInt)
  {
    int j = 0;
    int i = 0;
    while (i < this.aNz)
    {
      j |= this.aOH[i] ^ paramArrayOfByte[(paramInt + i)];
      i += 1;
    }
    return j == 0;
  }
  
  private void וֹ(boolean paramBoolean)
  {
    this.aOM.reset();
    this.aKx.reset();
    this.aEU = 0;
    Arrays.fill(this.aOP, (byte)0);
    if (paramBoolean) {
      Arrays.fill(this.aOH, (byte)0);
    }
    byte[] arrayOfByte = new byte[this.fU];
    arrayOfByte[(this.fU - 1)] = 1;
    this.aKx.update(arrayOfByte, 0, this.fU);
    this.aOQ = false;
    if (this.aOF != null) {
      ᵔ(this.aOF, 0, this.aOF.length);
    }
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    kg();
    int i = this.aEU;
    byte[] arrayOfByte = new byte[this.aOP.length];
    this.aEU = 0;
    if (this.aEW)
    {
      if (paramArrayOfByte.length < paramInt + i + this.aNz) {
        throw new OutputLengthException("Output buffer too short");
      }
      this.aOM.ˊ(this.aOP, 0, arrayOfByte, 0);
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt, i);
      this.aKx.update(arrayOfByte, 0, i);
      kh();
      System.arraycopy(this.aOH, 0, paramArrayOfByte, paramInt + i, this.aNz);
      וֹ(false);
      return this.aNz + i;
    }
    if (paramArrayOfByte.length < paramInt + i - this.aNz) {
      throw new OutputLengthException("Output buffer too short");
    }
    if (i < this.aNz) {
      throw new InvalidCipherTextException("data too short");
    }
    if (i > this.aNz)
    {
      this.aKx.update(this.aOP, 0, i - this.aNz);
      this.aOM.ˊ(this.aOP, 0, arrayOfByte, 0);
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt, i - this.aNz);
    }
    kh();
    if (!ٴ(this.aOP, i - this.aNz)) {
      throw new InvalidCipherTextException("mac check in EAX failed");
    }
    וֹ(false);
    return i - this.aNz;
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
    return this.aOM.iH();
  }
  
  public void reset()
  {
    וֹ(true);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aEW = paramBoolean;
    Object localObject;
    if ((paramCipherParameters instanceof AEADParameters))
    {
      localObject = (AEADParameters)paramCipherParameters;
      paramCipherParameters = ((AEADParameters)localObject).fn();
      this.aOF = ((AEADParameters)localObject).kp();
      this.aNz = (((AEADParameters)localObject).iO() / 8);
      localObject = ((AEADParameters)localObject).ko();
    }
    else if ((paramCipherParameters instanceof ParametersWithIV))
    {
      localObject = (ParametersWithIV)paramCipherParameters;
      paramCipherParameters = ((ParametersWithIV)localObject).getIV();
      this.aOF = null;
      this.aNz = (this.aKx.iO() / 2);
      localObject = ((ParametersWithIV)localObject).lh();
    }
    else
    {
      throw new IllegalArgumentException("invalid parameters passed to EAX");
    }
    int i;
    if (paramBoolean) {
      i = this.fU;
    } else {
      i = this.fU + this.aNz;
    }
    this.aOP = new byte[i];
    byte[] arrayOfByte = new byte[this.fU];
    this.aKx.ˊ((CipherParameters)localObject);
    arrayOfByte[(this.fU - 1)] = 0;
    this.aKx.update(arrayOfByte, 0, this.fU);
    this.aKx.update(paramCipherParameters, 0, paramCipherParameters.length);
    this.aKx.doFinal(this.aON, 0);
    this.aOM.ˊ(true, new ParametersWithIV(null, this.aON));
    reset();
  }
  
  public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    kg();
    if (paramArrayOfByte1.length < paramInt1 + paramInt2) {
      throw new DataLengthException("Input buffer too short");
    }
    int j = 0;
    int i = 0;
    while (i != paramInt2)
    {
      j += ˊ(paramArrayOfByte1[(paramInt1 + i)], paramArrayOfByte2, paramInt3 + j);
      i += 1;
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
    return paramInt - paramInt % this.fU;
  }
  
  public void ᵔ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aOQ) {
      throw new IllegalStateException("AAD data cannot be added after encryption/decryption processing has begun.");
    }
    this.aKx.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.EAXBlockCipher
 * JD-Core Version:    0.7.0.1
 */