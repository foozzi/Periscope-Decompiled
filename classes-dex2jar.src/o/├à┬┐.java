package o;

public class ſ
{
  private int চ = 0;
  private int দ = 0;
  private int ন = -2147483648;
  private int প = 0;
  private int য = 0;
  private boolean র = false;
  private boolean হ = false;
  private int ー = -2147483648;
  
  public int getEnd()
  {
    if (this.র) {
      return this.চ;
    }
    return this.দ;
  }
  
  public int getLeft()
  {
    return this.চ;
  }
  
  public int getRight()
  {
    return this.দ;
  }
  
  public int getStart()
  {
    if (this.র) {
      return this.দ;
    }
    return this.চ;
  }
  
  public void ـ(int paramInt1, int paramInt2)
  {
    this.ন = paramInt1;
    this.ー = paramInt2;
    this.হ = true;
    if (this.র)
    {
      if (paramInt2 != -2147483648) {
        this.চ = paramInt2;
      }
      if (paramInt1 != -2147483648) {
        this.দ = paramInt1;
      }
    }
    else
    {
      if (paramInt1 != -2147483648) {
        this.চ = paramInt1;
      }
      if (paramInt2 != -2147483648) {
        this.দ = paramInt2;
      }
    }
  }
  
  public void ᐧ(int paramInt1, int paramInt2)
  {
    this.হ = false;
    if (paramInt1 != -2147483648)
    {
      this.প = paramInt1;
      this.চ = paramInt1;
    }
    if (paramInt2 != -2147483648)
    {
      this.য = paramInt2;
      this.দ = paramInt2;
    }
  }
  
  public void ᴵ(boolean paramBoolean)
  {
    if (paramBoolean == this.র) {
      return;
    }
    this.র = paramBoolean;
    if (this.হ)
    {
      int i;
      if (paramBoolean)
      {
        if (this.ー != -2147483648) {
          i = this.ー;
        } else {
          i = this.প;
        }
        this.চ = i;
        if (this.ন != -2147483648) {
          i = this.ন;
        } else {
          i = this.য;
        }
        this.দ = i;
        return;
      }
      if (this.ন != -2147483648) {
        i = this.ন;
      } else {
        i = this.প;
      }
      this.চ = i;
      if (this.ー != -2147483648) {
        i = this.ー;
      } else {
        i = this.য;
      }
      this.দ = i;
      return;
    }
    this.চ = this.প;
    this.দ = this.য;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Å¿
 * JD-Core Version:    0.7.0.1
 */