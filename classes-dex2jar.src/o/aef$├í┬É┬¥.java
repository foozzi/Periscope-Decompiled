package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import tv.periscope.android.api.PsUser;

public class aef$ᐝ
  extends aef<aeh.ʼ>
  implements View.OnClickListener
{
  public anj bAa;
  private aef.ᐝ.if bAb;
  public final ImageView bzW;
  public final TextView bzX;
  public final TextView bzY;
  public final aht bzZ;
  public String nD;
  
  public aef$ᐝ(View paramView, ady paramady)
  {
    super(paramView, paramady);
    this.bzW = ((ImageView)paramView.findViewById(2131427433));
    this.bzX = ((TextView)paramView.findViewById(2131427435));
    this.bzY = ((TextView)paramView.findViewById(2131427436));
    this.bzZ = ((aht)paramView.findViewById(2131427434));
    paramView.setOnClickListener(this);
    this.bAb = new aef.ᐝ.if(this);
  }
  
  public static ᐝ ʼ(Context paramContext, ViewGroup paramViewGroup, ady paramady)
  {
    return new ᐝ(LayoutInflater.from(paramContext).inflate(2130903074, paramViewGroup, false), paramady);
  }
  
  public void onClick(View paramView)
  {
    this.bzc.ƚ(this.nD);
  }
  
  public void ˊ(aeh.ʼ paramʼ)
  {
    this.nD = paramʼ.nD;
    Object localObject = paramʼ.xG();
    PsUser localPsUser = ((aad)localObject).נּ(paramʼ.nD);
    if (localPsUser == null)
    {
      ɬ.ˋ(new IllegalStateException("Viewer isn't in cache"));
      this.bzX.setText("");
      return;
    }
    this.bzX.setText(localPsUser.bpy);
    Context localContext = this.bB.getContext();
    Resources localResources = localContext.getResources();
    localObject = ((aad)localObject).ˊ(paramʼ.bnh, this.nD, paramʼ.bug);
    this.bAa = ((anj)localObject);
    if (localObject != null)
    {
      int i = akl.ˋ(localResources, ((anj)localObject).bnl);
      if (this.bzW.getDrawable() != null) {
        this.bzW.getDrawable().mutate();
      }
      if (!paramʼ.bug)
      {
        this.bzW.setColorFilter(i);
      }
      else
      {
        i = akl.ˋ(localResources, 0);
        this.bzW.clearColorFilter();
      }
      if (((anj)localObject).bpH > 0)
      {
        this.bzY.setVisibility(0);
        this.bzY.setText(localResources.getString(2131099838, new Object[] { akn.ˊ(localResources, ((anj)localObject).bpH, false) }));
        this.bzZ.setColorAndDrawables(i, 2130837664, 2130837663);
        this.bzZ.setVisibility(0);
      }
      else
      {
        this.bzZ.setVisibility(8);
        this.bzY.setVisibility(8);
      }
    }
    else
    {
      this.bzY.setVisibility(8);
    }
    paramʼ = localPsUser.uj();
    if (anw.ᐨ(paramʼ))
    {
      ᓲ.ˌ(localContext).ʻ(paramʼ).ˊ(abe.bvo).ﹷ(2130837567).ץ().ˊ(this.bAb);
      return;
    }
    akl.ˊ(this.bzW, localPsUser.bpy, localPsUser.ul());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aef.á
 * JD-Core Version:    0.7.0.1
 */