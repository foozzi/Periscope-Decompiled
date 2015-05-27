package o;

final class ᔦ$ͺ
  extends ᔦ.ʻ
{
  private final int importance;
  private final String name;
  
  public ᔦ$ͺ(Ÿ paramŸ, ᔦ.ʼ paramʼ)
  {
    super(1, new ᔦ.ʻ[] { paramʼ });
    this.name = paramŸ.name;
    this.importance = paramŸ.importance;
  }
  
  private boolean ᓿ()
  {
    return (this.name != null) && (this.name.length() > 0);
  }
  
  public void ˊ(ɤ paramɤ)
  {
    if (ᓿ()) {
      paramɤ.ˊ(1, ŧ.ˈ(this.name));
    }
    paramɤ.ᵗ(2, this.importance);
  }
  
  public int ᓻ()
  {
    int i;
    if (ᓿ()) {
      i = ɤ.ˋ(1, ŧ.ˈ(this.name));
    } else {
      i = 0;
    }
    return ɤ.ʲ(2, this.importance) + i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¦.Íº
 * JD-Core Version:    0.7.0.1
 */