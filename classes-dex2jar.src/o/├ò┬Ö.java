package o;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.Transition.EpicenterCallback;

final class ՙ
  extends Transition.EpicenterCallback
{
  private Rect ᔊ;
  
  ՙ(ﹳ.if paramif) {}
  
  public Rect onGetEpicenter(Transition paramTransition)
  {
    if ((this.ᔊ == null) && (this.ᔋ.ᵞ != null)) {
      this.ᔊ = ﹳ.ˎ(this.ᔋ.ᵞ);
    }
    return this.ᔊ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Õ
 * JD-Core Version:    0.7.0.1
 */