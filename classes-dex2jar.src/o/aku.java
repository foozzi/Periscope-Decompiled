package o;

public class aku
{
  private final int bJY;
  private int bJZ;
  private boolean bKa;
  private byte[] bKb = new byte[4];
  private int bKc = 0;
  private int bKd;
  private int bKe;
  private boolean bKf;
  private alc bKg;
  private int bKh;
  private int bKi;
  private int bKj;
  private long bKk;
  private long bKl;
  private ald bKm;
  
  public aku(int paramInt1, int paramInt2, ald paramald)
  {
    this.bKm = paramald;
    this.bJY = paramInt1;
    this.bJZ = paramInt2;
    this.bKa = true;
    Bg();
  }
  
  private void Bg()
  {
    this.bKc = 0;
    this.bKe = 0;
  }
  
  public boolean Be()
  {
    return this.bKa;
  }
  
  public int Bf()
  {
    int j = this.bKj - this.bKe;
    int i = j;
    if (j > this.bJZ) {
      i = this.bJZ;
    }
    return this.bKc - this.bKd + i;
  }
  
  public alc ᐝ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    paramInt2 = paramInt1;
    if (paramInt3 < 3)
    {
      this.bKl = ((paramArrayOfByte[(paramInt1 + 0)] & 0xFF) << 16 | ((paramArrayOfByte[(paramInt1 + 1)] & 0xFF) << 8) + (paramArrayOfByte[(paramInt1 + 2)] & 0xFF));
      paramInt2 = paramInt1 + 3;
    }
    paramInt1 = paramInt2;
    if (paramInt3 < 2)
    {
      this.bKj = ((paramArrayOfByte[(paramInt2 + 0)] & 0xFF) << 16 | ((paramArrayOfByte[(paramInt2 + 1)] & 0xFF) << 8) + (paramArrayOfByte[(paramInt2 + 2)] & 0xFF));
      this.bKi = paramArrayOfByte[(paramInt2 + 3)];
      paramInt1 = paramInt2 + 4;
    }
    if (paramInt3 == 0)
    {
      this.bKh = ((paramArrayOfByte[(paramInt1 + 3)] & 0xFF) << 24 | (paramArrayOfByte[(paramInt1 + 2)] & 0xFF) << 16 | ((paramArrayOfByte[(paramInt1 + 1)] & 0xFF) << 8) + (paramArrayOfByte[paramInt1] & 0xFF));
      this.bKf = false;
    }
    else
    {
      this.bKf = true;
    }
    if (this.bKl == 16777215L)
    {
      this.bKc = 4;
      this.bKd = 0;
    }
    this.bKa = false;
    return null;
  }
  
  public void ᓶ(int paramInt)
  {
    this.bJZ = paramInt;
  }
  
  public alc ᵕ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.bKj == 0)
    {
      this.bKa = true;
      return null;
    }
    int j = paramInt1;
    int i = paramInt2;
    if (this.bKd < this.bKc)
    {
      j = this.bKc - this.bKd;
      i = j;
      if (paramInt2 < j) {
        i = paramInt2;
      }
      System.arraycopy(paramArrayOfByte, paramInt1, this.bKb, this.bKd, i);
      this.bKd += i;
      j = paramInt1 + i;
      i = paramInt2 - i;
    }
    if ((this.bKc == this.bKd) && (i > 0))
    {
      if (this.bKg == null)
      {
        this.bKg = this.bKm.ᵔ(this.bKi, this.bJY, this.bKh, this.bKj);
        this.bKg.Br().length = 0;
      }
      akz localakz = this.bKg.Br();
      paramInt2 = this.bKj - localakz.length;
      paramInt1 = paramInt2;
      if (i < paramInt2) {
        paramInt1 = i;
      }
      localakz.ᵣ(paramArrayOfByte, j, paramInt1);
      this.bKe += paramInt1;
      if (localakz.length == this.bKj)
      {
        if (this.bKc == 4) {
          this.bKl = akt.ᒽ(this.bKb, 0);
        }
        if (this.bKf) {
          this.bKk += this.bKl;
        } else {
          this.bKk = this.bKl;
        }
        this.bKg.setTime(this.bKk);
        this.bKg.Bt();
        this.bKa = true;
        Bg();
        paramArrayOfByte = this.bKg;
        this.bKg = null;
        return paramArrayOfByte;
      }
      if (paramInt1 == this.bJZ)
      {
        this.bKd = 0;
        this.bKa = true;
      }
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aku
 * JD-Core Version:    0.7.0.1
 */