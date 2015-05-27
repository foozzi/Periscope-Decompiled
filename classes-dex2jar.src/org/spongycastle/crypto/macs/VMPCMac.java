package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class VMPCMac
  implements Mac
{
  private byte[] aIZ;
  private byte[] aKm;
  private byte aMs = 0;
  private byte[] aMt = null;
  private byte aMu = 0;
  private byte aOA;
  private byte aOB;
  private byte aOC;
  private byte aOx;
  private byte[] aOy;
  private byte aOz;
  
  private void ʻ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.aMu = 0;
    this.aMt = new byte[256];
    int j = 0;
    while (j < 256)
    {
      this.aMt[j] = ((byte)j);
      j += 1;
    }
    j = 0;
    int i;
    while (j < 768)
    {
      this.aMu = this.aMt[(this.aMu + this.aMt[(j & 0xFF)] + paramArrayOfByte1[(j % paramArrayOfByte1.length)] & 0xFF)];
      i = this.aMt[(j & 0xFF)];
      this.aMt[(j & 0xFF)] = this.aMt[(this.aMu & 0xFF)];
      this.aMt[(this.aMu & 0xFF)] = i;
      j += 1;
    }
    j = 0;
    while (j < 768)
    {
      this.aMu = this.aMt[(this.aMu + this.aMt[(j & 0xFF)] + paramArrayOfByte2[(j % paramArrayOfByte2.length)] & 0xFF)];
      i = this.aMt[(j & 0xFF)];
      this.aMt[(j & 0xFF)] = this.aMt[(this.aMu & 0xFF)];
      this.aMt[(this.aMu & 0xFF)] = i;
      j += 1;
    }
    this.aMs = 0;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    int j = 1;
    int i;
    while (j < 25)
    {
      this.aMu = this.aMt[(this.aMu + this.aMt[(this.aMs & 0xFF)] & 0xFF)];
      this.aOC = this.aMt[(this.aOC + this.aOB + j & 0xFF)];
      this.aOB = this.aMt[(this.aOB + this.aOA + j & 0xFF)];
      this.aOA = this.aMt[(this.aOA + this.aOz + j & 0xFF)];
      this.aOz = this.aMt[(this.aOz + this.aMu + j & 0xFF)];
      this.aOy[(this.aOx & 0x1F)] = ((byte)(this.aOy[(this.aOx & 0x1F)] ^ this.aOz));
      this.aOy[(this.aOx + 1 & 0x1F)] = ((byte)(this.aOy[(this.aOx + 1 & 0x1F)] ^ this.aOA));
      this.aOy[(this.aOx + 2 & 0x1F)] = ((byte)(this.aOy[(this.aOx + 2 & 0x1F)] ^ this.aOB));
      this.aOy[(this.aOx + 3 & 0x1F)] = ((byte)(this.aOy[(this.aOx + 3 & 0x1F)] ^ this.aOC));
      this.aOx = ((byte)(this.aOx + 4 & 0x1F));
      i = this.aMt[(this.aMs & 0xFF)];
      this.aMt[(this.aMs & 0xFF)] = this.aMt[(this.aMu & 0xFF)];
      this.aMt[(this.aMu & 0xFF)] = i;
      this.aMs = ((byte)(this.aMs + 1 & 0xFF));
      j += 1;
    }
    j = 0;
    while (j < 768)
    {
      this.aMu = this.aMt[(this.aMu + this.aMt[(j & 0xFF)] + this.aOy[(j & 0x1F)] & 0xFF)];
      i = this.aMt[(j & 0xFF)];
      this.aMt[(j & 0xFF)] = this.aMt[(this.aMu & 0xFF)];
      this.aMt[(this.aMu & 0xFF)] = i;
      j += 1;
    }
    byte[] arrayOfByte = new byte[20];
    j = 0;
    while (j < 20)
    {
      this.aMu = this.aMt[(this.aMu + this.aMt[(j & 0xFF)] & 0xFF)];
      arrayOfByte[j] = this.aMt[(this.aMt[(this.aMt[(this.aMu & 0xFF)] & 0xFF)] + 1 & 0xFF)];
      i = this.aMt[(j & 0xFF)];
      this.aMt[(j & 0xFF)] = this.aMt[(this.aMu & 0xFF)];
      this.aMt[(this.aMu & 0xFF)] = i;
      j += 1;
    }
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt, arrayOfByte.length);
    reset();
    return arrayOfByte.length;
  }
  
  public String iG()
  {
    return "VMPC-MAC";
  }
  
  public int iO()
  {
    return 20;
  }
  
  public void reset()
  {
    ʻ(this.aIZ, this.aKm);
    this.aMs = 0;
    this.aOC = 0;
    this.aOB = 0;
    this.aOA = 0;
    this.aOz = 0;
    this.aOx = 0;
    this.aOy = new byte[32];
    int i = 0;
    while (i < 32)
    {
      this.aOy[i] = 0;
      i += 1;
    }
  }
  
  public void update(byte paramByte)
  {
    this.aMu = this.aMt[(this.aMu + this.aMt[(this.aMs & 0xFF)] & 0xFF)];
    paramByte = (byte)(this.aMt[(this.aMt[(this.aMt[(this.aMu & 0xFF)] & 0xFF)] + 1 & 0xFF)] ^ paramByte);
    this.aOC = this.aMt[(this.aOC + this.aOB & 0xFF)];
    this.aOB = this.aMt[(this.aOB + this.aOA & 0xFF)];
    this.aOA = this.aMt[(this.aOA + this.aOz & 0xFF)];
    this.aOz = this.aMt[(this.aOz + this.aMu + paramByte & 0xFF)];
    this.aOy[(this.aOx & 0x1F)] = ((byte)(this.aOy[(this.aOx & 0x1F)] ^ this.aOz));
    this.aOy[(this.aOx + 1 & 0x1F)] = ((byte)(this.aOy[(this.aOx + 1 & 0x1F)] ^ this.aOA));
    this.aOy[(this.aOx + 2 & 0x1F)] = ((byte)(this.aOy[(this.aOx + 2 & 0x1F)] ^ this.aOB));
    this.aOy[(this.aOx + 3 & 0x1F)] = ((byte)(this.aOy[(this.aOx + 3 & 0x1F)] ^ this.aOC));
    this.aOx = ((byte)(this.aOx + 4 & 0x1F));
    int i = this.aMt[(this.aMs & 0xFF)];
    this.aMt[(this.aMs & 0xFF)] = this.aMt[(this.aMu & 0xFF)];
    this.aMt[(this.aMu & 0xFF)] = i;
    this.aMs = ((byte)(this.aMs + 1 & 0xFF));
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt1 + paramInt2 > paramArrayOfByte.length) {
      throw new DataLengthException("input buffer too short");
    }
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      update(paramArrayOfByte[paramInt1]);
      paramInt1 += 1;
    }
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof ParametersWithIV)) {
      throw new IllegalArgumentException("VMPC-MAC Init parameters must include an IV");
    }
    paramCipherParameters = (ParametersWithIV)paramCipherParameters;
    KeyParameter localKeyParameter = (KeyParameter)paramCipherParameters.lh();
    if (!(paramCipherParameters.lh() instanceof KeyParameter)) {
      throw new IllegalArgumentException("VMPC-MAC Init parameters must include a key");
    }
    this.aKm = paramCipherParameters.getIV();
    if ((this.aKm == null) || (this.aKm.length < 1) || (this.aKm.length > 768)) {
      throw new IllegalArgumentException("VMPC-MAC requires 1 to 768 bytes of IV");
    }
    this.aIZ = localKeyParameter.getKey();
    reset();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.VMPCMac
 * JD-Core Version:    0.7.0.1
 */