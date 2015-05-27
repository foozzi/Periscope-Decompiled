package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.engines.DESEngine;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.paddings.BlockCipherPadding;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class ISO9797Alg3Mac
  implements Mac
{
  private int aEU;
  private BlockCipher aEX;
  private BlockCipherPadding aNA;
  private KeyParameter aNP;
  private KeyParameter aNQ;
  private byte[] aNy;
  private int aNz;
  private byte[] buf;
  
  public ISO9797Alg3Mac(BlockCipher paramBlockCipher)
  {
    this(paramBlockCipher, paramBlockCipher.getBlockSize() * 8, null);
  }
  
  public ISO9797Alg3Mac(BlockCipher paramBlockCipher, int paramInt, BlockCipherPadding paramBlockCipherPadding)
  {
    if (paramInt % 8 != 0) {
      throw new IllegalArgumentException("MAC size must be multiple of 8");
    }
    if (!(paramBlockCipher instanceof DESEngine)) {
      throw new IllegalArgumentException("cipher must be instance of DESEngine");
    }
    this.aEX = new CBCBlockCipher(paramBlockCipher);
    this.aNA = paramBlockCipherPadding;
    this.aNz = (paramInt / 8);
    this.aNy = new byte[paramBlockCipher.getBlockSize()];
    this.buf = new byte[paramBlockCipher.getBlockSize()];
    this.aEU = 0;
  }
  
  public ISO9797Alg3Mac(BlockCipher paramBlockCipher, BlockCipherPadding paramBlockCipherPadding)
  {
    this(paramBlockCipher, paramBlockCipher.getBlockSize() * 8, paramBlockCipherPadding);
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    int i = this.aEX.getBlockSize();
    if (this.aNA == null) {
      while (this.aEU < i)
      {
        this.buf[this.aEU] = 0;
        this.aEU += 1;
      }
    }
    if (this.aEU == i)
    {
      this.aEX.ˊ(this.buf, 0, this.aNy, 0);
      this.aEU = 0;
    }
    this.aNA.ᵢ(this.buf, this.aEU);
    this.aEX.ˊ(this.buf, 0, this.aNy, 0);
    DESEngine localDESEngine = new DESEngine();
    localDESEngine.ˊ(false, this.aNP);
    localDESEngine.ˊ(this.aNy, 0, this.aNy, 0);
    localDESEngine.ˊ(true, this.aNQ);
    localDESEngine.ˊ(this.aNy, 0, this.aNy, 0);
    System.arraycopy(this.aNy, 0, paramArrayOfByte, paramInt, this.aNz);
    reset();
    return this.aNz;
  }
  
  public String iG()
  {
    return "ISO9797Alg3";
  }
  
  public int iO()
  {
    return this.aNz;
  }
  
  public void reset()
  {
    int i = 0;
    while (i < this.buf.length)
    {
      this.buf[i] = 0;
      i += 1;
    }
    this.aEU = 0;
    this.aEX.reset();
  }
  
  public void update(byte paramByte)
  {
    if (this.aEU == this.buf.length)
    {
      this.aEX.ˊ(this.buf, 0, this.aNy, 0);
      this.aEU = 0;
    }
    byte[] arrayOfByte = this.buf;
    int i = this.aEU;
    this.aEU = (i + 1);
    arrayOfByte[i] = paramByte;
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 0) {
      throw new IllegalArgumentException("Can't have a negative input length!");
    }
    int m = this.aEX.getBlockSize();
    int n = m - this.aEU;
    int i = paramInt1;
    int j = paramInt2;
    if (paramInt2 > n)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, this.buf, this.aEU, n);
      int k = this.aEX.ˊ(this.buf, 0, this.aNy, 0) + 0;
      this.aEU = 0;
      paramInt2 -= n;
      paramInt1 += n;
      for (;;)
      {
        i = paramInt1;
        j = paramInt2;
        if (paramInt2 <= m) {
          break;
        }
        k += this.aEX.ˊ(paramArrayOfByte, paramInt1, this.aNy, 0);
        paramInt2 -= m;
        paramInt1 += m;
      }
    }
    System.arraycopy(paramArrayOfByte, i, this.buf, this.aEU, j);
    this.aEU += j;
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    reset();
    if ((!(paramCipherParameters instanceof KeyParameter)) && (!(paramCipherParameters instanceof ParametersWithIV))) {
      throw new IllegalArgumentException("params must be an instance of KeyParameter or ParametersWithIV");
    }
    KeyParameter localKeyParameter;
    if ((paramCipherParameters instanceof KeyParameter)) {
      localKeyParameter = (KeyParameter)paramCipherParameters;
    } else {
      localKeyParameter = (KeyParameter)((ParametersWithIV)paramCipherParameters).lh();
    }
    byte[] arrayOfByte = localKeyParameter.getKey();
    if (arrayOfByte.length == 16)
    {
      localKeyParameter = new KeyParameter(arrayOfByte, 0, 8);
      this.aNP = new KeyParameter(arrayOfByte, 8, 8);
      this.aNQ = localKeyParameter;
    }
    else if (arrayOfByte.length == 24)
    {
      localKeyParameter = new KeyParameter(arrayOfByte, 0, 8);
      this.aNP = new KeyParameter(arrayOfByte, 8, 8);
      this.aNQ = new KeyParameter(arrayOfByte, 16, 8);
    }
    else
    {
      throw new IllegalArgumentException("Key must be either 112 or 168 bit long");
    }
    if ((paramCipherParameters instanceof ParametersWithIV))
    {
      this.aEX.ˊ(true, new ParametersWithIV(localKeyParameter, ((ParametersWithIV)paramCipherParameters).getIV()));
      return;
    }
    this.aEX.ˊ(true, localKeyParameter);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.ISO9797Alg3Mac
 * JD-Core Version:    0.7.0.1
 */