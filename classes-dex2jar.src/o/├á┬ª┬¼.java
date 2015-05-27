package o;

public class ব
{
  public final int height;
  public final String id;
  public final String mimeType;
  public final int tH;
  public final float tI;
  public final int tJ;
  public final int tK;
  public final String tL;
  public final String tM;
  public final int width;
  
  public ব(String paramString1, String paramString2, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, String paramString3, String paramString4)
  {
    this.id = ((String)ړ.יּ(paramString1));
    this.mimeType = paramString2;
    this.width = paramInt1;
    this.height = paramInt2;
    this.tI = paramFloat;
    this.tJ = paramInt3;
    this.tK = paramInt4;
    this.tH = paramInt5;
    this.tM = paramString3;
    this.tL = paramString4;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    return ((ব)paramObject).id.equals(this.id);
  }
  
  public int hashCode()
  {
    return this.id.hashCode();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¦¬
 * JD-Core Version:    0.7.0.1
 */