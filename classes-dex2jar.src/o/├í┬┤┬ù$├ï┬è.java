package o;

class ᴗ$ˊ
{
  int ʳ;
  int Ҭ;
  int ӟ;
  
  ᴗ$ˊ(int paramInt1, int paramInt2, int paramInt3)
  {
    this.ʳ = paramInt1;
    this.Ҭ = paramInt2;
    this.ӟ = paramInt3;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (ˊ)paramObject;
    if (this.ʳ != paramObject.ʳ) {
      return false;
    }
    if ((this.ʳ == 3) && (Math.abs(this.ӟ - this.Ҭ) == 1) && (this.ӟ == paramObject.Ҭ) && (this.Ҭ == paramObject.ӟ)) {
      return true;
    }
    if (this.ӟ != paramObject.ӟ) {
      return false;
    }
    return this.Ҭ == paramObject.Ҭ;
  }
  
  public int hashCode()
  {
    return (this.ʳ * 31 + this.Ҭ) * 31 + this.ӟ;
  }
  
  public String toString()
  {
    return "[" + ﹿ() + ",s:" + this.Ҭ + "c:" + this.ӟ + "]";
  }
  
  String ﹿ()
  {
    switch (this.ʳ)
    {
    default: 
      break;
    case 0: 
      return "add";
    case 1: 
      return "rm";
    case 2: 
      return "up";
    case 3: 
      return "mv";
    }
    return "??";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´.Ë
 * JD-Core Version:    0.7.0.1
 */