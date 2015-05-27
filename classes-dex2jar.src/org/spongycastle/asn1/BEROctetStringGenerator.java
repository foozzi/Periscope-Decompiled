package org.spongycastle.asn1;

import java.io.OutputStream;

public class BEROctetStringGenerator
  extends BERGenerator
{
  class BufferedBEROctetStream
    extends OutputStream
  {
    private byte[] aaP;
    private int aaQ;
    private DEROutputStream aaR;
    
    public void close()
    {
      if (this.aaQ != 0)
      {
        byte[] arrayOfByte = new byte[this.aaQ];
        System.arraycopy(this.aaP, 0, arrayOfByte, 0, this.aaQ);
        DEROctetString.ˊ(this.aaR, arrayOfByte);
      }
      this.aaS.fc();
    }
    
    public void write(int paramInt)
    {
      byte[] arrayOfByte = this.aaP;
      int i = this.aaQ;
      this.aaQ = (i + 1);
      arrayOfByte[i] = ((byte)paramInt);
      if (this.aaQ == this.aaP.length)
      {
        DEROctetString.ˊ(this.aaR, this.aaP);
        this.aaQ = 0;
      }
    }
    
    public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      while (paramInt2 > 0)
      {
        int i = Math.min(paramInt2, this.aaP.length - this.aaQ);
        System.arraycopy(paramArrayOfByte, paramInt1, this.aaP, this.aaQ, i);
        this.aaQ += i;
        if (this.aaQ < this.aaP.length) {
          return;
        }
        DEROctetString.ˊ(this.aaR, this.aaP);
        this.aaQ = 0;
        paramInt1 += i;
        paramInt2 -= i;
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.BEROctetStringGenerator
 * JD-Core Version:    0.7.0.1
 */