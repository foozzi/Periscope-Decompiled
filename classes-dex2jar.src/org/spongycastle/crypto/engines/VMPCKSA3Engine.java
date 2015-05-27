package org.spongycastle.crypto.engines;

public class VMPCKSA3Engine
  extends VMPCEngine
{
  public String iG()
  {
    return "VMPC-KSA3";
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
    j = 0;
    while (j < 768)
    {
      this.aMu = this.aMt[(this.aMu + this.aMt[(j & 0xFF)] + paramArrayOfByte1[(j % paramArrayOfByte1.length)] & 0xFF)];
      i = this.aMt[(j & 0xFF)];
      this.aMt[(j & 0xFF)] = this.aMt[(this.aMu & 0xFF)];
      this.aMt[(this.aMu & 0xFF)] = i;
      j += 1;
    }
    this.aMs = 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.VMPCKSA3Engine
 * JD-Core Version:    0.7.0.1
 */