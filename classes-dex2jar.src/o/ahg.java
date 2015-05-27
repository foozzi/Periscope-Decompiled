package o;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView.if;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

public class ahg
  extends RecyclerView.if<ahj>
  implements View.OnClickListener
{
  private ahg.ˊ bEt;
  private ahg.ˋ bEu;
  private ahg.ˎ bEv;
  private if bEw;
  private final zw brP;
  private final Context mContext;
  
  public ahg(Context paramContext, zw paramzw)
  {
    this.mContext = paramContext;
    this.brP = paramzw;
  }
  
  private void ˊ(ahi paramahi, xh paramxh)
  {
    if (TextUtils.isEmpty(paramxh.YW.trim())) {
      paramahi.bEA.setText(2131099907);
    } else {
      paramahi.bEA.setText(paramxh.YW);
    }
    if (paramxh.boG) {
      paramahi.bEB.setVisibility(0);
    } else {
      paramahi.bEB.setVisibility(8);
    }
    if (paramxh.uh()) {
      paramahi.Ґ(paramxh.ui());
    } else {
      paramahi.bEC.setText(akn.ˊ(this.mContext, paramxh.ud()));
    }
    if (paramxh.boT) {
      paramahi.bEF.setVisibility(0);
    } else {
      paramahi.bEF.setVisibility(8);
    }
    paramahi.bED.setText(paramxh.boE);
    if ((paramxh.uh()) || (paramxh.boX) || (paramxh.boT)) {
      paramahi.bEE.setAlpha(1.0F);
    } else {
      paramahi.bEE.setAlpha(0.2F);
    }
    paramahi.bB.setTag(paramahi);
    paramahi.bB.setOnClickListener(this);
    if (anw.ᐨ(paramxh.boQ))
    {
      ᓲ.ˌ(this.mContext).ʻ(paramxh.boQ).ˊ(abe.bvo).ﹷ(2130837707).ץ().ˊ(paramahi.bEE);
      return;
    }
    paramahi.bEE.setBackgroundResource(2130837707);
  }
  
  private void ᔅ(View paramView)
  {
    paramView = (ahj)paramView.getTag();
    paramView = this.brP.ー(paramView.bnh);
    if (this.bEt != null) {
      this.bEt.ๅ(paramView.nD);
    }
  }
  
  public int getItemCount()
  {
    return this.brP.vc();
  }
  
  public int getItemViewType(int paramInt)
  {
    anh localanh = ҁ(paramInt);
    switch (1.bEx[localanh.BV().ordinal()])
    {
    default: 
      break;
    case 1: 
      return 4;
    case 2: 
      return 8;
    case 3: 
      return 5;
    }
    xh localxh = this.brP.ー(localanh.BW());
    if (localxh.uh())
    {
      if (localanh.BV() == anh.if.bNK) {
        return 3;
      }
      return 6;
    }
    if ((localanh.BV() == anh.if.bNK) && (localxh.boX)) {
      return 7;
    }
    if (localxh.boU) {
      return 2;
    }
    return 1;
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131427439: 
    case 2131427451: 
      paramView = (ahj)paramView.getTag();
      paramView = this.brP.ー(paramView.bnh);
      if (paramView.uh())
      {
        if (this.bEv != null) {
          this.bEv.ᓐ(paramView.id);
        }
      }
      else if (this.bEu != null)
      {
        this.bEu.ᐞ(paramView.id);
        return;
      }
      break;
    case 2131427441: 
      vi.ˊ(vi.if.blV);
      ᔅ(paramView);
      return;
    case 2131427446: 
      vi.ˊ(vi.if.blW);
      ᔅ(paramView);
      return;
    case 2131427437: 
      vi.ˊ(vi.if.blX);
      if (this.bEw != null) {
        this.bEw.zE();
      }
      break;
    }
  }
  
  public zw zD()
  {
    return this.brP;
  }
  
  public ahj ʼ(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    case 1: 
    default: 
      paramViewGroup = new ahi(LayoutInflater.from(this.mContext).inflate(2130903078, paramViewGroup, false));
      paramViewGroup.bEI.setVisibility(8);
      paramViewGroup.bEH.setVisibility(8);
      paramViewGroup.bEK.setVisibility(8);
      paramViewGroup.bEC.setVisibility(0);
      return paramViewGroup;
    case 2: 
      paramViewGroup = new ahi(LayoutInflater.from(this.mContext).inflate(2130903078, paramViewGroup, false));
      paramViewGroup.bEI.setVisibility(0);
      paramViewGroup.bEH.setVisibility(0);
      paramViewGroup.bEK.setVisibility(8);
      paramViewGroup.bEC.setVisibility(8);
      return paramViewGroup;
    case 3: 
      paramViewGroup = new ahk(LayoutInflater.from(this.mContext).inflate(2130903080, paramViewGroup, false));
      paramViewGroup.bB.setOnClickListener(this);
      paramViewGroup.bB.setTag(paramViewGroup);
      return paramViewGroup;
    case 7: 
      paramViewGroup = new ahk(LayoutInflater.from(this.mContext).inflate(2130903080, paramViewGroup, false));
      paramViewGroup.bEQ.setText(2131099846);
      paramViewGroup.bEQ.setBackgroundResource(2130837607);
      paramViewGroup.bB.setOnClickListener(this);
      paramViewGroup.bB.setTag(paramViewGroup);
      return paramViewGroup;
    case 6: 
      paramViewGroup = new ahi(LayoutInflater.from(this.mContext).inflate(2130903078, paramViewGroup, false));
      paramViewGroup.bEG.setVisibility(0);
      paramViewGroup.bEI.setVisibility(8);
      paramViewGroup.bEH.setVisibility(8);
      paramViewGroup.bEK.setVisibility(0);
      paramViewGroup.bEC.setVisibility(8);
      paramViewGroup.bB.setOnClickListener(this);
      paramViewGroup.bB.setTag(paramViewGroup);
      return paramViewGroup;
    case 4: 
      paramViewGroup = LayoutInflater.from(this.mContext).inflate(2130903075, paramViewGroup, false);
      paramViewGroup.findViewById(2131427437).setOnClickListener(this);
      return new ahi(paramViewGroup);
    case 5: 
      return new ahi(LayoutInflater.from(this.mContext).inflate(2130903076, paramViewGroup, false));
    }
    return new ahi(LayoutInflater.from(this.mContext).inflate(2130903077, paramViewGroup, false));
  }
  
  public void ˊ(if paramif)
  {
    this.bEw = paramif;
  }
  
  public void ˊ(ahg.ˊ paramˊ)
  {
    this.bEt = paramˊ;
  }
  
  public void ˊ(ahg.ˋ paramˋ)
  {
    this.bEu = paramˋ;
  }
  
  public void ˊ(ahg.ˎ paramˎ)
  {
    this.bEv = paramˎ;
  }
  
  public void ˊ(ahj paramahj, int paramInt)
  {
    xh localxh;
    switch (paramahj.getItemViewType())
    {
    default: 
    case 1: 
    case 2: 
    case 6: 
      localxh = this.brP.ｪ(paramInt);
      paramahj.bnh = localxh.id;
      ˊ((ahi)paramahj, localxh);
      return;
    case 3: 
    case 7: 
      paramahj = (ahk)paramahj;
      localxh = this.brP.ｪ(paramInt);
      paramahj.bnh = localxh.id;
      if (TextUtils.isEmpty(localxh.YW.trim())) {
        paramahj.bEA.setText(2131099907);
      } else {
        paramahj.bEA.setText(localxh.YW);
      }
      if (localxh.boG) {
        paramahj.bEB.setVisibility(0);
      } else {
        paramahj.bEB.setVisibility(8);
      }
      paramahj.bB.setTag(paramahj);
      paramahj.Ґ(localxh.ui());
      paramahj.bED.setText(localxh.boE);
      paramahj.bED.setOnClickListener(this);
      paramahj.bED.setTag(paramahj);
      if (anw.ᐨ(localxh.Tk)) {
        ᓲ.ˌ(this.mContext).ʻ(localxh.Tk).ˊ(abe.bvo).ﹷ(2130837567).ˊ(paramahj.bEN);
      } else {
        akl.ˊ(paramahj.bEN, localxh.boE, 0);
      }
      paramahj.bEP.setOnClickListener(this);
      paramahj.bEP.setTag(paramahj);
      if (anw.ᐨ(localxh.boQ)) {
        ᓲ.ˌ(this.mContext).ʻ(localxh.boQ).ˊ(abe.bvo).ˊ(paramahj.bEO);
      }
      if (TextUtils.isEmpty(localxh.getLocation()))
      {
        paramahj.bEM.setVisibility(8);
        return;
      }
      paramahj.bEM.setText(localxh.getLocation());
      return;
    case 5: 
    case 8: 
      paramahj = (ahi)paramahj;
      paramInt = this.brP.vd();
      paramahj.bEJ.setText(this.mContext.getResources().getQuantityString(2131558404, paramInt, new Object[] { akn.ˊ(this.mContext.getResources(), paramInt, false) }));
    }
  }
  
  public anh ҁ(int paramInt)
  {
    return this.brP.ﾃ(paramInt);
  }
  
  public static abstract interface if
  {
    public abstract void zE();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahg
 * JD-Core Version:    0.7.0.1
 */