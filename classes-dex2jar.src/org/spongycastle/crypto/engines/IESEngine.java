package org.spongycastle.crypto.engines;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.BasicAgreement;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.EphemeralKeyPair;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.KeyParser;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.IESParameters;
import org.spongycastle.crypto.params.IESWithCipherParameters;
import org.spongycastle.crypto.params.KDFParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;
import org.spongycastle.util.Pack;

public class IESEngine
{
  boolean aEW;
  byte[] aGf;
  CipherParameters aKA;
  CipherParameters aKB;
  IESParameters aKC;
  private EphemeralKeyPairGenerator aKD;
  private KeyParser aKE;
  private byte[] aKF;
  BasicAgreement aKv;
  DerivationFunction aKw;
  Mac aKx;
  BufferedBlockCipher aKy;
  byte[] aKz;
  
  public IESEngine(BasicAgreement paramBasicAgreement, DerivationFunction paramDerivationFunction, Mac paramMac)
  {
    this.aKv = paramBasicAgreement;
    this.aKw = paramDerivationFunction;
    this.aKx = paramMac;
    this.aKz = new byte[paramMac.iO()];
    this.aKy = null;
  }
  
  public IESEngine(BasicAgreement paramBasicAgreement, DerivationFunction paramDerivationFunction, Mac paramMac, BufferedBlockCipher paramBufferedBlockCipher)
  {
    this.aKv = paramBasicAgreement;
    this.aKw = paramDerivationFunction;
    this.aKx = paramMac;
    this.aKz = new byte[paramMac.iO()];
    this.aKy = paramBufferedBlockCipher;
  }
  
  private void ˎ(CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof ParametersWithIV))
    {
      this.aKF = ((ParametersWithIV)paramCipherParameters).getIV();
      this.aKC = ((IESParameters)((ParametersWithIV)paramCipherParameters).lh());
      return;
    }
    this.aKF = null;
    this.aKC = ((IESParameters)paramCipherParameters);
  }
  
  private byte[] י(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aKy == null)
    {
      arrayOfByte3 = new byte[paramInt2];
      arrayOfByte1 = new byte[this.aKC.kP() / 8];
      arrayOfByte2 = new byte[arrayOfByte3.length + arrayOfByte1.length];
      this.aKw.ᐧ(arrayOfByte2, 0, arrayOfByte2.length);
      if (this.aGf.length != 0)
      {
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, arrayOfByte1.length);
        System.arraycopy(arrayOfByte2, arrayOfByte1.length, arrayOfByte3, 0, arrayOfByte3.length);
      }
      else
      {
        System.arraycopy(arrayOfByte2, 0, arrayOfByte3, 0, arrayOfByte3.length);
        System.arraycopy(arrayOfByte2, paramInt2, arrayOfByte1, 0, arrayOfByte1.length);
      }
      arrayOfByte2 = new byte[paramInt2];
      int i = 0;
      while (i != paramInt2)
      {
        arrayOfByte2[i] = ((byte)(paramArrayOfByte[(paramInt1 + i)] ^ arrayOfByte3[i]));
        i += 1;
      }
      paramArrayOfByte = arrayOfByte2;
    }
    else
    {
      arrayOfByte2 = new byte[((IESWithCipherParameters)this.aKC).kQ() / 8];
      arrayOfByte1 = new byte[this.aKC.kP() / 8];
      arrayOfByte3 = new byte[arrayOfByte2.length + arrayOfByte1.length];
      this.aKw.ᐧ(arrayOfByte3, 0, arrayOfByte3.length);
      System.arraycopy(arrayOfByte3, 0, arrayOfByte2, 0, arrayOfByte2.length);
      System.arraycopy(arrayOfByte3, arrayOfByte2.length, arrayOfByte1, 0, arrayOfByte1.length);
      if (this.aKF != null) {
        this.aKy.ˊ(true, new ParametersWithIV(new KeyParameter(arrayOfByte2), this.aKF));
      } else {
        this.aKy.ˊ(true, new KeyParameter(arrayOfByte2));
      }
      arrayOfByte2 = new byte[this.aKy.getOutputSize(paramInt2)];
      paramInt1 = this.aKy.ˋ(paramArrayOfByte, paramInt1, paramInt2, arrayOfByte2, 0);
      paramInt2 = paramInt1 + this.aKy.doFinal(arrayOfByte2, paramInt1);
      paramArrayOfByte = arrayOfByte2;
    }
    byte[] arrayOfByte3 = this.aKC.kO();
    byte[] arrayOfByte4 = new byte[4];
    if ((this.aGf.length != 0) && (arrayOfByte3 != null)) {
      Pack.ʾ(arrayOfByte3.length * 8, arrayOfByte4, 0);
    }
    byte[] arrayOfByte2 = new byte[this.aKx.iO()];
    this.aKx.ˊ(new KeyParameter(arrayOfByte1));
    this.aKx.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    if (arrayOfByte3 != null) {
      this.aKx.update(arrayOfByte3, 0, arrayOfByte3.length);
    }
    if (this.aGf.length != 0) {
      this.aKx.update(arrayOfByte4, 0, arrayOfByte4.length);
    }
    this.aKx.doFinal(arrayOfByte2, 0);
    byte[] arrayOfByte1 = new byte[this.aGf.length + paramInt2 + arrayOfByte2.length];
    System.arraycopy(this.aGf, 0, arrayOfByte1, 0, this.aGf.length);
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, this.aGf.length, paramInt2);
    System.arraycopy(arrayOfByte2, 0, arrayOfByte1, this.aGf.length + paramInt2, arrayOfByte2.length);
    return arrayOfByte1;
  }
  
  private byte[] ٴ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 <= this.aKC.kP() / 8) {
      throw new InvalidCipherTextException("Length of input must be greater than the MAC");
    }
    byte[] arrayOfByte2;
    byte[] arrayOfByte1;
    int i;
    if (this.aKy == null)
    {
      arrayOfByte3 = new byte[paramInt2 - this.aGf.length - this.aKx.iO()];
      arrayOfByte2 = new byte[this.aKC.kP() / 8];
      arrayOfByte1 = new byte[arrayOfByte3.length + arrayOfByte2.length];
      this.aKw.ᐧ(arrayOfByte1, 0, arrayOfByte1.length);
      if (this.aGf.length != 0)
      {
        System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, arrayOfByte2.length);
        System.arraycopy(arrayOfByte1, arrayOfByte2.length, arrayOfByte3, 0, arrayOfByte3.length);
      }
      else
      {
        System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 0, arrayOfByte3.length);
        System.arraycopy(arrayOfByte1, arrayOfByte3.length, arrayOfByte2, 0, arrayOfByte2.length);
      }
      arrayOfByte1 = new byte[arrayOfByte3.length];
      i = 0;
      while (i != arrayOfByte3.length)
      {
        arrayOfByte1[i] = ((byte)(paramArrayOfByte[(this.aGf.length + paramInt1 + i)] ^ arrayOfByte3[i]));
        i += 1;
      }
      i = arrayOfByte3.length;
    }
    else
    {
      arrayOfByte1 = new byte[((IESWithCipherParameters)this.aKC).kQ() / 8];
      arrayOfByte2 = new byte[this.aKC.kP() / 8];
      arrayOfByte3 = new byte[arrayOfByte1.length + arrayOfByte2.length];
      this.aKw.ᐧ(arrayOfByte3, 0, arrayOfByte3.length);
      System.arraycopy(arrayOfByte3, 0, arrayOfByte1, 0, arrayOfByte1.length);
      System.arraycopy(arrayOfByte3, arrayOfByte1.length, arrayOfByte2, 0, arrayOfByte2.length);
      if (this.aKF != null) {
        this.aKy.ˊ(false, new ParametersWithIV(new KeyParameter(arrayOfByte1), this.aKF));
      } else {
        this.aKy.ˊ(false, new KeyParameter(arrayOfByte1));
      }
      arrayOfByte1 = new byte[this.aKy.getOutputSize(paramInt2 - this.aGf.length - this.aKx.iO())];
      i = this.aKy.ˋ(paramArrayOfByte, this.aGf.length + paramInt1, paramInt2 - this.aGf.length - this.aKx.iO(), arrayOfByte1, 0);
      i += this.aKy.doFinal(arrayOfByte1, i);
    }
    byte[] arrayOfByte3 = this.aKC.kO();
    byte[] arrayOfByte4 = new byte[4];
    if ((this.aGf.length != 0) && (arrayOfByte3 != null)) {
      Pack.ʾ(arrayOfByte3.length * 8, arrayOfByte4, 0);
    }
    int j = paramInt1 + paramInt2;
    byte[] arrayOfByte5 = Arrays.copyOfRange(paramArrayOfByte, j - this.aKx.iO(), j);
    byte[] arrayOfByte6 = new byte[arrayOfByte5.length];
    this.aKx.ˊ(new KeyParameter(arrayOfByte2));
    this.aKx.update(paramArrayOfByte, this.aGf.length + paramInt1, paramInt2 - this.aGf.length - arrayOfByte6.length);
    if (arrayOfByte3 != null) {
      this.aKx.update(arrayOfByte3, 0, arrayOfByte3.length);
    }
    if (this.aGf.length != 0) {
      this.aKx.update(arrayOfByte4, 0, arrayOfByte4.length);
    }
    this.aKx.doFinal(arrayOfByte6, 0);
    if (!Arrays.ｰ(arrayOfByte5, arrayOfByte6)) {
      throw new InvalidCipherTextException("Invalid MAC.");
    }
    return Arrays.copyOfRange(arrayOfByte1, 0, i);
  }
  
  public BufferedBlockCipher jA()
  {
    return this.aKy;
  }
  
  public Mac jB()
  {
    return this.aKx;
  }
  
  public void ˊ(AsymmetricKeyParameter paramAsymmetricKeyParameter, CipherParameters paramCipherParameters, KeyParser paramKeyParser)
  {
    this.aEW = false;
    this.aKA = paramAsymmetricKeyParameter;
    this.aKE = paramKeyParser;
    ˎ(paramCipherParameters);
  }
  
  public void ˊ(AsymmetricKeyParameter paramAsymmetricKeyParameter, CipherParameters paramCipherParameters, EphemeralKeyPairGenerator paramEphemeralKeyPairGenerator)
  {
    this.aEW = true;
    this.aKB = paramAsymmetricKeyParameter;
    this.aKD = paramEphemeralKeyPairGenerator;
    ˎ(paramCipherParameters);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters1, CipherParameters paramCipherParameters2, CipherParameters paramCipherParameters3)
  {
    this.aEW = paramBoolean;
    this.aKA = paramCipherParameters1;
    this.aKB = paramCipherParameters2;
    this.aGf = new byte[0];
    ˎ(paramCipherParameters3);
  }
  
  public byte[] ˑ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aEW)
    {
      if (this.aKD != null)
      {
        localObject = this.aKD.jU();
        this.aKA = ((EphemeralKeyPair)localObject).iK().iE();
        this.aGf = ((EphemeralKeyPair)localObject).iL();
      }
    }
    else if (this.aKE != null)
    {
      localObject = new ByteArrayInputStream(paramArrayOfByte, paramInt1, paramInt2);
      try
      {
        this.aKB = this.aKE.ʿ((InputStream)localObject);
      }
      catch (IOException paramArrayOfByte)
      {
        throw new InvalidCipherTextException("unable to recover ephemeral public key: " + paramArrayOfByte.getMessage(), paramArrayOfByte);
      }
      this.aGf = Arrays.copyOfRange(paramArrayOfByte, paramInt1, paramInt1 + (paramInt2 - ((ByteArrayInputStream)localObject).available()));
    }
    this.aKv.ˊ(this.aKA);
    Object localObject = this.aKv.ˋ(this.aKB);
    localObject = BigIntegers.ʻ(this.aKv.getFieldSize(), (BigInteger)localObject);
    if (this.aGf.length != 0)
    {
      byte[] arrayOfByte = new byte[this.aGf.length + localObject.length];
      System.arraycopy(this.aGf, 0, arrayOfByte, 0, this.aGf.length);
      System.arraycopy(localObject, 0, arrayOfByte, this.aGf.length, localObject.length);
      localObject = arrayOfByte;
    }
    localObject = new KDFParameters((byte[])localObject, this.aKC.kN());
    this.aKw.ˊ((DerivationParameters)localObject);
    if (this.aEW) {
      return י(paramArrayOfByte, paramInt1, paramInt2);
    }
    return ٴ(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.IESEngine
 * JD-Core Version:    0.7.0.1
 */