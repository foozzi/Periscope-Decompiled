package o;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

public class aef$ˎ
  extends aef<aeh.ˎ>
  implements bt
{
  public final bq bzN;
  private bo bzO;
  private LatLng bzP;
  
  private aef$ˎ(View paramView, ady paramady)
  {
    super(paramView, paramady);
    this.bzN = ((bq)paramView.findViewById(2131427425));
    xx();
  }
  
  private void xx()
  {
    if (this.bzN != null)
    {
      this.bzN.onCreate(null);
      this.bzN.onResume();
      this.bzN.ˊ(this);
    }
  }
  
  private void ʾ(LatLng paramLatLng)
  {
    this.bzP = paramLatLng;
    if (this.bzO != null)
    {
      if (paramLatLng != null)
      {
        this.bzO.ˊ(bn.ˊ(paramLatLng));
        paramLatLng = new MarkerOptions().ͺ(paramLatLng);
        paramLatLng.ˊ(dg.Ɨ(2130837704));
        this.bzO.ˊ(paramLatLng);
        this.bzO.ł(1);
        return;
      }
      this.bzO.clear();
      this.bzO.ł(0);
    }
  }
  
  public static ˎ ˏ(Context paramContext, ViewGroup paramViewGroup, ady paramady)
  {
    return new ˎ(LayoutInflater.from(paramContext).inflate(2130903071, paramViewGroup, false), paramady);
  }
  
  public void ˊ(aeh.ˎ paramˎ)
  {
    ʾ(paramˎ.xB());
  }
  
  public void ˊ(bo parambo)
  {
    bs.ﹺ(this.bB.getContext().getApplicationContext());
    this.bzO = parambo;
    this.bzO.Ғ().ː(false);
    this.bzO.ˊ(new aeg(this));
    ʾ(this.bzP);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aef.Ë
 * JD-Core Version:    0.7.0.1
 */