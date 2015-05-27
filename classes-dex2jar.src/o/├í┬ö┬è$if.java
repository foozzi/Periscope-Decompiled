package o;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;

class ᔊ$if
  implements LayoutInflater.Factory
{
  final ᕑ ᵇ;
  
  ᔊ$if(ᕑ paramᕑ)
  {
    this.ᵇ = paramᕑ;
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return this.ᵇ.onCreateView(null, paramString, paramContext, paramAttributeSet);
  }
  
  public String toString()
  {
    return getClass().getName() + "{" + this.ᵇ + "}";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á.if
 * JD-Core Version:    0.7.0.1
 */