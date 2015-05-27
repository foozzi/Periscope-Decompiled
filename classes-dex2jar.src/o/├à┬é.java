package o;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.View;

@TargetApi(11)
public class ł
  extends ﺫ
{
  private ł.if ও;
  
  public ł(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void setActionModeForChildListener(ł.if paramif)
  {
    this.ও = paramif;
  }
  
  public ActionMode startActionModeForChild(View paramView, ActionMode.Callback paramCallback)
  {
    if (this.ও != null) {
      return this.ও.startActionModeForChild(paramView, paramCallback);
    }
    return super.startActionModeForChild(paramView, paramCallback);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Å
 * JD-Core Version:    0.7.0.1
 */