package org.spongycastle.crypto.tls;

public class SupplementalDataEntry
{
  protected int aUI;
  protected byte[] fw;
  
  public SupplementalDataEntry(int paramInt, byte[] paramArrayOfByte)
  {
    this.aUI = paramInt;
    this.fw = paramArrayOfByte;
  }
  
  public byte[] getData()
  {
    return this.fw;
  }
  
  public int getDataType()
  {
    return this.aUI;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.SupplementalDataEntry
 * JD-Core Version:    0.7.0.1
 */