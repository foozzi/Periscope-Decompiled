package o;

import android.view.View;

public abstract class ﮇ<T extends View, Z>
  extends ἲ<Z>
{
  private static boolean mR = false;
  private static Integer mS = null;
  private final ﮇ.if mT;
  protected final T view;
  
  public ﮇ(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException("View must not be null!");
    }
    this.view = paramT;
    this.mT = new ﮇ.if(paramT);
  }
  
  private Object getTag()
  {
    if (mS == null) {
      return this.view.getTag();
    }
    return this.view.getTag(mS.intValue());
  }
  
  private void setTag(Object paramObject)
  {
    if (mS == null)
    {
      mR = true;
      this.view.setTag(paramObject);
      return;
    }
    this.view.setTag(mS.intValue(), paramObject);
  }
  
  public T getView()
  {
    return this.view;
  }
  
  public String toString()
  {
    return "Target for: " + this.view;
  }
  
  public void ʻ(ᔨ paramᔨ)
  {
    setTag(paramᔨ);
  }
  
  public void ˊ(丿 param丿)
  {
    this.mT.ˊ(param丿);
  }
  
  public ᔨ ṝ()
  {
    Object localObject = getTag();
    if (localObject != null)
    {
      if ((localObject instanceof ᔨ)) {
        return (ᔨ)localObject;
      }
      throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï®
 * JD-Core Version:    0.7.0.1
 */