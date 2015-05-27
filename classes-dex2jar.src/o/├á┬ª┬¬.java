package o;

public final class প
{
  public byte[] fw;
  private int limit;
  private int position;
  
  public প() {}
  
  public প(int paramInt)
  {
    this.fw = new byte[paramInt];
    this.limit = this.fw.length;
  }
  
  public প(byte[] paramArrayOfByte)
  {
    this.fw = paramArrayOfByte;
    this.limit = paramArrayOfByte.length;
  }
  
  public প(byte[] paramArrayOfByte, int paramInt)
  {
    this.fw = paramArrayOfByte;
    this.limit = paramInt;
  }
  
  public int getPosition()
  {
    return this.position;
  }
  
  public int limit()
  {
    return this.limit;
  }
  
  public int readInt()
  {
    byte[] arrayOfByte = this.fw;
    int i = this.position;
    this.position = (i + 1);
    i = arrayOfByte[i];
    arrayOfByte = this.fw;
    int j = this.position;
    this.position = (j + 1);
    j = arrayOfByte[j];
    arrayOfByte = this.fw;
    int k = this.position;
    this.position = (k + 1);
    k = arrayOfByte[k];
    arrayOfByte = this.fw;
    int m = this.position;
    this.position = (m + 1);
    return (i & 0xFF) << 24 | (j & 0xFF) << 16 | (k & 0xFF) << 8 | arrayOfByte[m] & 0xFF;
  }
  
  public long readLong()
  {
    byte[] arrayOfByte = this.fw;
    int i = this.position;
    this.position = (i + 1);
    long l1 = arrayOfByte[i];
    arrayOfByte = this.fw;
    i = this.position;
    this.position = (i + 1);
    long l2 = arrayOfByte[i];
    arrayOfByte = this.fw;
    i = this.position;
    this.position = (i + 1);
    long l3 = arrayOfByte[i];
    arrayOfByte = this.fw;
    i = this.position;
    this.position = (i + 1);
    long l4 = arrayOfByte[i];
    arrayOfByte = this.fw;
    i = this.position;
    this.position = (i + 1);
    long l5 = arrayOfByte[i];
    arrayOfByte = this.fw;
    i = this.position;
    this.position = (i + 1);
    long l6 = arrayOfByte[i];
    arrayOfByte = this.fw;
    i = this.position;
    this.position = (i + 1);
    long l7 = arrayOfByte[i];
    arrayOfByte = this.fw;
    i = this.position;
    this.position = (i + 1);
    return (l1 & 0xFF) << 56 | (l2 & 0xFF) << 48 | (l3 & 0xFF) << 40 | (l4 & 0xFF) << 32 | (l5 & 0xFF) << 24 | (l6 & 0xFF) << 16 | (l7 & 0xFF) << 8 | arrayOfByte[i] & 0xFF;
  }
  
  public int readUnsignedByte()
  {
    byte[] arrayOfByte = this.fw;
    int i = this.position;
    this.position = (i + 1);
    return arrayOfByte[i] & 0xFF;
  }
  
  public int readUnsignedShort()
  {
    byte[] arrayOfByte = this.fw;
    int i = this.position;
    this.position = (i + 1);
    i = arrayOfByte[i];
    arrayOfByte = this.fw;
    int j = this.position;
    this.position = (j + 1);
    return (i & 0xFF) << 8 | arrayOfByte[j] & 0xFF;
  }
  
  public void setPosition(int paramInt)
  {
    boolean bool;
    if ((paramInt >= 0) && (paramInt <= this.limit)) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    this.position = paramInt;
  }
  
  public void ʟ(int paramInt)
  {
    boolean bool;
    if ((paramInt >= 0) && (paramInt <= this.fw.length)) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    this.limit = paramInt;
  }
  
  public void ʰ(int paramInt)
  {
    setPosition(this.position + paramInt);
  }
  
  public void ʻ(byte[] paramArrayOfByte, int paramInt)
  {
    this.fw = paramArrayOfByte;
    this.limit = paramInt;
    this.position = 0;
  }
  
  public void ˋ(ন paramন, int paramInt)
  {
    ι(paramন.fw, 0, paramInt);
    paramন.setPosition(0);
  }
  
  public int ϋ()
  {
    return this.limit - this.position;
  }
  
  public long ϒ()
  {
    byte[] arrayOfByte = this.fw;
    int i = this.position;
    this.position = (i + 1);
    long l1 = arrayOfByte[i];
    arrayOfByte = this.fw;
    i = this.position;
    this.position = (i + 1);
    long l2 = arrayOfByte[i];
    arrayOfByte = this.fw;
    i = this.position;
    this.position = (i + 1);
    long l3 = arrayOfByte[i];
    arrayOfByte = this.fw;
    i = this.position;
    this.position = (i + 1);
    return (l1 & 0xFF) << 24 | (l2 & 0xFF) << 16 | (l3 & 0xFF) << 8 | arrayOfByte[i] & 0xFF;
  }
  
  public int Ϝ()
  {
    byte[] arrayOfByte = this.fw;
    int i = this.position;
    this.position = (i + 1);
    i = arrayOfByte[i];
    arrayOfByte = this.fw;
    int j = this.position;
    this.position = (j + 1);
    j = arrayOfByte[j];
    this.position += 2;
    return (i & 0xFF) << 8 | j & 0xFF;
  }
  
  public int к()
  {
    return readUnsignedByte() << 21 | readUnsignedByte() << 14 | readUnsignedByte() << 7 | readUnsignedByte();
  }
  
  public int ѕ()
  {
    int i = readInt();
    if (i < 0) {
      throw new IllegalStateException("Top bit not zero: " + i);
    }
    return i;
  }
  
  public long ӧ()
  {
    long l = readLong();
    if (l < 0L) {
      throw new IllegalStateException("Top bit not zero: " + l);
    }
    return l;
  }
  
  public void ι(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    System.arraycopy(this.fw, this.position, paramArrayOfByte, paramInt1, paramInt2);
    this.position += paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¦ª
 * JD-Core Version:    0.7.0.1
 */