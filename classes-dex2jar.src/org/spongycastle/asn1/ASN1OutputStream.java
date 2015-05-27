package org.spongycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

public class ASN1OutputStream
{
  private OutputStream aat;
  
  public ASN1OutputStream(OutputStream paramOutputStream)
  {
    this.aat = paramOutputStream;
  }
  
  ASN1OutputStream eQ()
  {
    return new DEROutputStream(this.aat);
  }
  
  ASN1OutputStream eR()
  {
    return new DLOutputStream(this.aat);
  }
  
  void write(int paramInt)
  {
    this.aat.write(paramInt);
  }
  
  void write(byte[] paramArrayOfByte)
  {
    this.aat.write(paramArrayOfByte);
  }
  
  void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aat.write(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  void ˊ(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    ו(paramInt1, paramInt2);
    Ί(paramArrayOfByte.length);
    write(paramArrayOfByte);
  }
  
  void ˊ(int paramInt, byte[] paramArrayOfByte)
  {
    write(paramInt);
    Ί(paramArrayOfByte.length);
    write(paramArrayOfByte);
  }
  
  public void ˋ(ASN1Encodable paramASN1Encodable)
  {
    if (paramASN1Encodable != null)
    {
      paramASN1Encodable.ez().ˊ(this);
      return;
    }
    throw new IOException("null object detected");
  }
  
  void ˋ(ASN1Primitive paramASN1Primitive)
  {
    if (paramASN1Primitive != null)
    {
      paramASN1Primitive.ˊ(new ImplicitOutputStream(this.aat));
      return;
    }
    throw new IOException("null object detected");
  }
  
  void Ί(int paramInt)
  {
    if (paramInt > 127)
    {
      int i = 1;
      int j = paramInt;
      for (;;)
      {
        int k = j >>> 8;
        j = k;
        if (k == 0) {
          break;
        }
        i += 1;
      }
      write((byte)(i | 0x80));
      i = (i - 1) * 8;
      while (i >= 0)
      {
        write((byte)(paramInt >> i));
        i -= 8;
      }
      return;
    }
    write((byte)paramInt);
  }
  
  void ו(int paramInt1, int paramInt2)
  {
    if (paramInt2 < 31)
    {
      write(paramInt1 | paramInt2);
      return;
    }
    write(paramInt1 | 0x1F);
    if (paramInt2 < 128)
    {
      write(paramInt2);
      return;
    }
    byte[] arrayOfByte = new byte[5];
    paramInt1 = arrayOfByte.length - 1;
    arrayOfByte[paramInt1] = ((byte)(paramInt2 & 0x7F));
    int i;
    int j;
    do
    {
      i = paramInt2 >> 7;
      j = paramInt1 - 1;
      arrayOfByte[j] = ((byte)(i & 0x7F | 0x80));
      paramInt1 = j;
      paramInt2 = i;
    } while (i > 127);
    write(arrayOfByte, j, arrayOfByte.length - j);
  }
  
  class ImplicitOutputStream
    extends ASN1OutputStream
  {
    private boolean Ww = true;
    
    public ImplicitOutputStream(OutputStream paramOutputStream)
    {
      super();
    }
    
    public void write(int paramInt)
    {
      if (this.Ww)
      {
        this.Ww = false;
        return;
      }
      super.write(paramInt);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1OutputStream
 * JD-Core Version:    0.7.0.1
 */