package o;

public class akz
{
  aky bKG;
  public byte[] buffer = null;
  public int length = 0;
  
  public akz() {}
  
  public akz(byte[] paramArrayOfByte)
  {
    this.buffer = paramArrayOfByte;
    this.length = paramArrayOfByte.length;
  }
  
  public aky Bo()
  {
    try
    {
      aky localaky = this.bKG;
      return localaky;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void ˉ(byte paramByte)
  {
    ᔀ(this.length + 1);
    this.buffer[this.length] = paramByte;
    this.length += 1;
  }
  
  public void ˊ(aky paramaky)
  {
    try
    {
      this.bKG = paramaky;
      return;
    }
    finally
    {
      paramaky = finally;
      throw paramaky;
    }
  }
  
  public void ᔀ(int paramInt)
  {
    if ((this.buffer == null) || (this.buffer.length < paramInt))
    {
      int i = 4196;
      if (paramInt <= 2048) {
        i = 32;
      }
      byte[] arrayOfByte = new byte[(paramInt + i - 1) / i * i];
      if (this.length > 0) {
        System.arraycopy(this.buffer, 0, arrayOfByte, 0, this.length);
      }
      this.buffer = arrayOfByte;
    }
  }
  
  public void ᴶ(byte[] paramArrayOfByte, int paramInt)
  {
    ᵣ(paramArrayOfByte, 0, paramInt);
  }
  
  public void ᵣ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ᔀ(this.length + paramInt2);
    System.arraycopy(paramArrayOfByte, paramInt1, this.buffer, this.length, paramInt2);
    this.length += paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akz
 * JD-Core Version:    0.7.0.1
 */