package o;

import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class afq
  extends RelativeLayout
  implements View.OnFocusChangeListener
{
  private TextView bCA;
  private if bCB;
  private Dialog bCC;
  private TextView bCD;
  private TextView bCE;
  private alm bCF;
  private View bCG;
  private View bCv;
  private EditText bCw;
  private afq.ˊ bCx;
  private List<View.OnFocusChangeListener> bCy = new ArrayList();
  private afq.ˋ bCz;
  private View κ;
  
  public afq(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext);
  }
  
  public afq(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext);
  }
  
  public afq(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext);
  }
  
  private void yS()
  {
    this.bCx = afq.ˊ.bCP;
    akj.ᔉ(this.bCw);
    yU();
    this.bCv.setVisibility(8);
    this.κ.setVisibility(8);
  }
  
  private void yV()
  {
    akj.ᔊ(this.bCw);
    setCommentSendOrClose();
  }
  
  private void ˊ(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(2130903087, this, true);
    this.κ = findViewById(2131427497);
    this.bCv = findViewById(2131427496);
    this.bCG = findViewById(2131427499);
    this.bCw = ((EditText)findViewById(2131427500));
    this.bCF = ((alm)findViewById(2131427454));
    float f = getResources().getDimension(2131361859);
    this.bCF.setCornerRadius(new float[] { f, 0.0F, 0.0F, f });
    this.bCA = ((TextView)findViewById(2131427498));
    this.bCA.setOnClickListener(new afr(this));
    findViewById(2131427495).setOnClickListener(new afs(this));
    this.bCx = afq.ˊ.bCP;
    this.bCw.setOnFocusChangeListener(this);
    paramContext = new aft(this);
    this.bCw.addTextChangedListener(paramContext);
    paramContext = LayoutInflater.from(getContext()).inflate(2130903090, this, false);
    this.bCD = ((TextView)paramContext.findViewById(2131427379));
    this.bCE = ((TextView)paramContext.findViewById(2131427505));
    this.bCC = new AlertDialog.Builder(getContext()).setView(paramContext).create();
  }
  
  private void ﺑ(int paramInt1, int paramInt2)
  {
    this.bCD.setText(paramInt1);
    this.bCE.setText(paramInt2);
    this.bCC.show();
  }
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    switch (paramView.getId())
    {
    default: 
      break;
    case 2131427500: 
      if (paramBoolean) {
        yV();
      } else {
        yS();
      }
      break;
    }
    int i = this.bCy.size() - 1;
    while (i >= 0)
    {
      ((View.OnFocusChangeListener)this.bCy.get(i)).onFocusChange(paramView, paramBoolean);
      i -= 1;
    }
  }
  
  public void setChatState(if paramif)
  {
    if (this.bCB != paramif)
    {
      this.bCB = paramif;
      switch (1.bCI[paramif.ordinal()])
      {
      default: 
        return;
      case 1: 
        this.bCA.setText(2131099705);
        return;
      case 3: 
        this.bCA.setText(2131099756);
        return;
      case 4: 
        this.bCA.setText(2131099724);
        return;
      }
      this.bCA.setText(2131099695);
    }
  }
  
  public void setCommentSendOrClose()
  {
    if (this.bCw.length() > 0)
    {
      this.bCx = afq.ˊ.bCR;
      this.κ.setVisibility(8);
      this.bCv.setVisibility(0);
      return;
    }
    this.bCx = afq.ˊ.bCQ;
    this.κ.setVisibility(0);
    this.bCv.setVisibility(8);
  }
  
  public void setParticipantInfo(String paramString, int paramInt)
  {
    this.bCF.setColorFilter(akl.ˋ(getResources(), paramInt));
    ᓲ.ˌ(getContext()).ʻ(paramString).ز().ˊ(abe.bvo).ˊ(this.bCF);
  }
  
  public void setSendCommentDelegate(afq.ˋ paramˋ)
  {
    this.bCz = paramˋ;
  }
  
  public void yR()
  {
    this.bCw.clearFocus();
  }
  
  void yT()
  {
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this.bCA, "alpha", new float[] { 1.0F, 0.0F });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(this.bCG, "alpha", new float[] { 0.0F, 1.0F });
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(localObjectAnimator1).with(localObjectAnimator2);
    localAnimatorSet.addListener(new afu(this));
    localAnimatorSet.start();
  }
  
  void yU()
  {
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this.bCA, "alpha", new float[] { 0.0F, 1.0F });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(this.bCG, "alpha", new float[] { 1.0F, 0.0F });
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(localObjectAnimator1).with(localObjectAnimator2);
    localAnimatorSet.addListener(new afv(this));
    localAnimatorSet.start();
  }
  
  public void yW()
  {
    if (this.bCC.isShowing()) {
      this.bCC.dismiss();
    }
  }
  
  public void yX()
  {
    yS();
    this.bCA.setVisibility(4);
  }
  
  public void yY()
  {
    this.bCA.setVisibility(0);
  }
  
  public boolean yZ()
  {
    if (this.bCx != afq.ˊ.bCP)
    {
      this.bCw.clearFocus();
      return true;
    }
    return false;
  }
  
  public void ˊ(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    this.bCy.add(paramOnFocusChangeListener);
  }
  
  public static enum if
  {
    private if() {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.afq
 * JD-Core Version:    0.7.0.1
 */