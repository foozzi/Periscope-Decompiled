package o;

final class ᔦ$ˋ
  extends ᔦ.ʻ
{
  private final String key;
  private final String value;
  
  public ᔦ$ˋ(ﾘ paramﾘ)
  {
    super(2, new ᔦ.ʻ[0]);
    this.key = paramﾘ.key;
    this.value = paramﾘ.value;
  }
  
  public void ˊ(ɤ paramɤ)
  {
    paramɤ.ˊ(1, ŧ.ˈ(this.key));
    String str;
    if (this.value == null) {
      str = "";
    } else {
      str = this.value;
    }
    paramɤ.ˊ(2, ŧ.ˈ(str));
  }
  
  public int ᓻ()
  {
    int i = ɤ.ˋ(1, ŧ.ˈ(this.key));
    String str;
    if (this.value == null) {
      str = "";
    } else {
      str = this.value;
    }
    return i + ɤ.ˋ(2, ŧ.ˈ(str));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¦.Ë
 * JD-Core Version:    0.7.0.1
 */