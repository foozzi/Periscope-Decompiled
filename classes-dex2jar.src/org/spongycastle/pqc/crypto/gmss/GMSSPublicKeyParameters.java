package org.spongycastle.pqc.crypto.gmss;

public class GMSSPublicKeyParameters
  extends GMSSKeyParameters
{
  private byte[] bfl;
  
  public GMSSPublicKeyParameters(byte[] paramArrayOfByte, GMSSParameters paramGMSSParameters)
  {
    super(false, paramGMSSParameters);
    this.bfl = paramArrayOfByte;
  }
  
  public byte[] qW()
  {
    return this.bfl;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.GMSSPublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */