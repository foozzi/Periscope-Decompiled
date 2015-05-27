package o;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Point;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import tv.periscope.android.api.PsUser;

public class ajw
  extends RelativeLayout
  implements View.OnClickListener, akd
{
  private static final ArrayList<String> bCa = new ArrayList();
  private final Set<String> bHQ = new HashSet();
  private TextView bHR;
  private TextView bHS;
  private EditText bHT;
  private ImageView bHU;
  private ImageView bHV;
  private TextView bHW;
  private int bHX;
  private int bHY;
  private if bHZ;
  private ajt bIa;
  private boolean bIb;
  private alv bIc;
  private alv bId;
  private int γ;
  private boolean ᘄ;
  
  public ajw(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext);
  }
  
  public ajw(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext);
  }
  
  public ajw(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext);
  }
  
  private boolean Ar()
  {
    return this.bHT.getVisibility() == 0;
  }
  
  private void As()
  {
    this.bHR.setVisibility(8);
    this.bHS.setVisibility(8);
    this.bHT.setVisibility(0);
    this.bHT.setText("");
    this.bHT.requestFocus();
    this.bHV.setImageResource(2130837653);
    this.bHU.setImageResource(2130837659);
    akj.ᔊ(this.bHT);
  }
  
  private void At()
  {
    this.bHR.setVisibility(0);
    this.bHS.setVisibility(0);
    this.bHT.setVisibility(8);
    this.bHT.setText("");
    this.bHT.clearFocus();
    this.bHV.setImageResource(2130837659);
    this.bHU.setImageResource(2130837533);
    akj.ᔉ(this.bHT);
  }
  
  private void Au()
  {
    this.bHT.addTextChangedListener(new aka(this));
  }
  
  private ArrayList<String> Aw()
  {
    if (this.bHQ.isEmpty()) {
      return bCa;
    }
    return new ArrayList(this.bHQ);
  }
  
  private void ˊ(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(2130903124, this, true);
    this.bHR = ((TextView)findViewById(2131427379));
    this.bHS = ((TextView)findViewById(2131427519));
    this.bHT = ((EditText)findViewById(2131427570));
    this.bIa = new ajt(paramContext, new aaf(vf.tI()), this, new ajx(this));
    Au();
    paramContext = (RecyclerView)findViewById(2131427423);
    paramContext.setLayoutManager(new LinearLayoutManager(getContext()));
    paramContext.setAdapter(this.bIa);
    this.bHU = ((ImageView)findViewById(2131427596));
    this.bHU.setOnClickListener(this);
    this.bHV = ((ImageView)findViewById(2131427594));
    this.bHV.setOnClickListener(this);
    this.bHW = ((TextView)findViewById(2131427597));
    this.bHW.setOnClickListener(this);
    this.γ = akn.ᒢ(getContext()).y;
    this.bIc = new ajy(this);
    this.bId = new ajz(this);
    setVisibility(8);
    super.setOnClickListener(this);
  }
  
  private void ˋ(boolean paramBoolean, PsUser paramPsUser)
  {
    if (paramBoolean) {
      ᓯ(paramPsUser.id);
    } else {
      ᓱ(paramPsUser.id);
    }
    akj.ᔉ(this.bHT);
  }
  
  private void ใ(int paramInt)
  {
    if (paramInt == 0)
    {
      this.bHW.setVisibility(8);
      return;
    }
    this.bHW.setVisibility(0);
    this.bHW.setText(getContext().getString(this.bHX, new Object[] { Integer.valueOf(paramInt) }));
  }
  
  private void ᓯ(String paramString)
  {
    this.bHQ.add(paramString);
    ใ(this.bHQ.size());
  }
  
  private void ᓱ(String paramString)
  {
    this.bHQ.remove(paramString);
    ใ(this.bHQ.size());
  }
  
  public void Av()
  {
    this.bIa.notifyDataSetChanged();
  }
  
  public void hide()
  {
    if (this.ᘄ) {
      return;
    }
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(this, "translationY", new float[] { 0.0F, this.γ });
    localObjectAnimator.setInterpolator(alk.ᖮ(getContext()));
    localObjectAnimator.addListener(this.bId);
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(localObjectAnimator);
    localAnimatorSet.start();
  }
  
  public boolean isShowing()
  {
    return this.bIb;
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131427594: 
      if (Ar())
      {
        At();
        return;
      }
      hide();
      return;
    case 2131427597: 
      if (this.bHZ != null) {
        this.bHZ.ˋ(Aw());
      }
      hide();
      return;
    case 2131427596: 
      if (Ar())
      {
        At();
        return;
      }
      As();
    }
  }
  
  public void show()
  {
    if (this.ᘄ) {
      return;
    }
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(this, "translationY", new float[] { this.γ, 0.0F });
    localObjectAnimator.setInterpolator(alk.ᵌ(getContext()));
    localObjectAnimator.addListener(this.bIc);
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(localObjectAnimator);
    localAnimatorSet.start();
  }
  
  public void ˊ(View paramView, PsUser paramPsUser)
  {
    boolean bool;
    if (!this.bHQ.contains(paramPsUser.id)) {
      bool = true;
    } else {
      bool = false;
    }
    ˋ(bool, paramPsUser);
    ((alx)paramView.findViewById(this.bHY)).setChecked(bool);
  }
  
  public void ˊ(boolean paramBoolean, PsUser paramPsUser)
  {
    ˋ(paramBoolean, paramPsUser);
  }
  
  public ajw ˋ(if paramif)
  {
    this.bHZ = paramif;
    return this;
  }
  
  public ajw ں(int paramInt)
  {
    this.bHR.setText(paramInt);
    return this;
  }
  
  public ajw ܥ(int paramInt)
  {
    this.bHS.setText(paramInt);
    return this;
  }
  
  public ajw ধ(int paramInt)
  {
    this.bHY = paramInt;
    return this;
  }
  
  public ajw ร(int paramInt)
  {
    this.bHX = paramInt;
    return this;
  }
  
  public static abstract interface if
  {
    public abstract void ˋ(ArrayList<String> paramArrayList);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ajw
 * JD-Core Version:    0.7.0.1
 */