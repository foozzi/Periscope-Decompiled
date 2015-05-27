package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class VMPCEngine
  implements StreamCipher
{
  protected byte[] aIZ;
  protected byte[] aKm;
  protected byte aMs = 0;
  protected byte[] aMt = null;
  protected byte aMu = 0;
  
  public String iG()
  {
    return "VMPC";
  }
  
  public void reset()
  {
    ʻ(this.aIZ, this.aKm);
  }
  
  protected void ʻ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
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
  
  public byte ʽ(byte paramByte)
  {
    this.aMu = this.aMt[(this.aMu + this.aMt[(this.aMs & 0xFF)] & 0xFF)];
    byte b = this.aMt[(this.aMt[(this.aMt[(this.aMu & 0xFF)] & 0xFF)] + 1 & 0xFF)];
    int i = this.aMt[(this.aMs & 0xFF)];
    this.aMt[(this.aMs & 0xFF)] = this.aMt[(this.aMu & 0xFF)];
    this.aMt[(this.aMu & 0xFF)] = i;
    this.aMs = ((byte)(this.aMs + 1 & 0xFF));
    return (byte)(paramByte ^ b);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof ParametersWithIV)) {
      throw new IllegalArgumentException("VMPC init parameters must include an IV");
    }
    paramCipherParameters = (ParametersWithIV)paramCipherParameters;
    if (!(paramCipherParameters.lh() instanceof KeyParameter)) {
      throw new IllegalArgumentException("VMPC init parameters must include a key");
    }
    KeyParameter localKeyParameter = (KeyParameter)paramCipherParameters.lh();
    this.aKm = paramCipherParameters.getIV();
    if ((this.aKm == null) || (this.aKm.length < 1) || (this.aKm.length > 768)) {
      throw new IllegalArgumentException("VMPC requires 1 to 768 bytes of IV");
    }
    this.aIZ = localKeyParameter.getKey();
    ʻ(this.aIZ, this.aKm);
  }
  
  public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramInt1 + paramInt2 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt3 + paramInt2 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    int j = 0;
    while (j < paramInt2)
    {
      this.aMu = this.aMt[(this.aMu + this.aMt[(this.aMs & 0xFF)] & 0xFF)];
      int k = this.aMt[(this.aMt[(this.aMt[(this.aMu & 0xFF)] & 0xFF)] + 1 & 0xFF)];
      int i = this.aMt[(this.aMs & 0xFF)];
      this.aMt[(this.aMs & 0xFF)] = this.aMt[(this.aMu & 0xFF)];
      this.aMt[(this.aMu & 0xFF)] = i;
      this.aMs = ((byte)(this.aMs + 1 & 0xFF));
      paramArrayOfByte2[(j + paramInt3)] = ((byte)(paramArrayOfByte1[(j + paramInt1)] ^ k));
      j += 1;
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.VMPCEngine
 * JD-Core Version:    0.7.0.1
 */