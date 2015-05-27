package org.spongycastle.asn1;

import java.io.IOException;

public class BERTaggedObjectParser
  implements ASN1TaggedObjectParser
{
  private ASN1StreamParser aaT;
  private boolean aaU;
  private int aaV;
  
  BERTaggedObjectParser(boolean paramBoolean, int paramInt, ASN1StreamParser paramASN1StreamParser)
  {
    this.aaU = paramBoolean;
    this.aaV = paramInt;
    this.aaT = paramASN1StreamParser;
  }
  
  public ASN1Primitive eN()
  {
    return this.aaT.ˋ(this.aaU, this.aaV);
  }
  
  public ASN1Primitive ez()
  {
    try
    {
      ASN1Primitive localASN1Primitive = eN();
      return localASN1Primitive;
    }
    catch (IOException localIOException)
    {
      throw new ASN1ParsingException(localIOException.getMessage());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.BERTaggedObjectParser
 * JD-Core Version:    0.7.0.1
 */