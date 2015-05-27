package tv.periscope.android.ui.main;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.aux;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import o.aad;
import o.abf;
import o.adj;
import o.ado;
import o.aet;
import o.ahg;
import o.ahg.if;
import o.ahu;
import o.ahx;
import o.ahy;
import o.ahz;
import o.aia;
import o.aib;
import o.aic;
import o.aie;
import o.aif;
import o.aig;
import o.aim;
import o.aip;
import o.ajj;
import o.ajk;
import o.akk;
import o.akx;
import o.alk;
import o.aln;
import o.alo;
import o.als;
import o.amp;
import o.amq;
import o.ot;
import o.vf;
import o.vi;
import o.vi.if;
import o.vn;
import o.zj;
import o.zm;
import o.zp;

public class MainActivity
  extends ado
  implements View.OnClickListener, ahg.if
{
  private List<aif> bFA;
  private View bFB;
  private View bFC;
  private ImageView bFD;
  private if bFE;
  private ImageView bFF;
  private als bFG;
  private aig bFH;
  private ViewPager bFz;
  private alo byD;
  
  private void setStatusBarColor(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      getWindow().setStatusBarColor(paramInt);
    }
  }
  
  private List<aif> zJ()
  {
    Object localObject1 = vf.tL();
    Object localObject2 = wZ();
    aad localaad = vf.tI();
    ahg localahg1 = new ahg(this, ((zp)localObject1).uX());
    localahg1.ˊ(this);
    ahg localahg2 = new ahg(this, ((zp)localObject1).uW());
    localahg2.ˊ(this);
    localObject1 = Arrays.asList(new aif[] { new ahu(this, vf.tH(), (vn)localObject2, localahg1, new zj((vn)localObject2, (zp)localObject1, ((zp)localObject1).uX()), this.bFG, (aip)findViewById(2131427526), 2131296328, 2131296329, 2131296326, 2131296327, 2131296299, 2130837594, 2130837655, 0), new ahu(this, vf.tH(), (vn)localObject2, localahg2, new zm((vn)localObject2, (zp)localObject1, ((zp)localObject1).uW()), this.bFG, (aip)findViewById(2131427527), 2131296310, 2131296311, 2131296308, 2131296309, 2131296299, 2130837594, 2130837655, 0), new aim(this, vf.tH(), (vn)localObject2, localaad, this.bFG, (aip)findViewById(2131427528), 2131296328, 2131296329, 2131296326, 2131296327, 2131296274, 2130837597, 2130837533, 2130837688) });
    localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((aif)((Iterator)localObject2).next()).bGb.setOnClickListener(this);
    }
    return localObject1;
  }
  
  private int ҭ(int paramInt)
  {
    int i = 0;
    while (i < this.bFA.size())
    {
      if (((aif)this.bFA.get(i)).bGb.getId() == paramInt) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      return;
    }
    switch (paramInt2)
    {
    default: 
      return;
    }
    if ((paramIntent != null) && ("action_logout".equals(paramIntent.getAction()))) {
      finish();
    }
  }
  
  public void onBackPressed()
  {
    if (this.byD.isShowing())
    {
      this.byD.hide();
      return;
    }
    super.onBackPressed();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131427526: 
    case 2131427527: 
    case 2131427528: 
      int i = ҭ(paramView.getId());
      if (i != -1)
      {
        this.bFE.ԇ(i);
        return;
      }
      break;
    case 2131427531: 
      if (((aif)this.bFA.get(this.bFz.ᗮ())).bGg == 2130837533)
      {
        vi.ˊ(vi.if.bmO);
        startActivity(new Intent(this, ajk.class), ActivityOptions.makeCustomAnimation(this, 2130968588, 2130968587).toBundle());
        return;
      }
      vi.ˊ(vi.if.bmM);
      startActivity(new Intent(this, aet.class), ActivityOptions.makeCustomAnimation(this, 2130968588, 2130968587).toBundle());
      return;
    case 2131427529: 
      vi.ˊ(vi.if.bmP);
      startActivityForResult(new Intent(this, ajj.class), 7854, ActivityOptions.makeCustomAnimation(this, 2130968589, 2130968587).toBundle());
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903101);
    paramBundle = wZ();
    paramBundle.tV();
    this.bFB = findViewById(2131427472);
    this.byD = ((alo)findViewById(2131427483));
    this.bFG = new adj(this, paramBundle, vf.tI(), this.byD);
    this.byD.setDelegate(this.bFG);
    this.bFA = zJ();
    Object localObject = (amq)findViewById(2131427525);
    paramBundle = new aln();
    paramBundle.ˊ(new amp((amq)localObject));
    localObject = new if(null);
    paramBundle.ˊ((ViewPager.aux)localObject);
    this.bFE = ((if)localObject);
    this.bFz = ((ViewPager)findViewById(2131427530));
    this.bFz.setOverScrollMode(2);
    this.bFz.setOffscreenPageLimit(this.bFA.size());
    this.bFH = new aig(this.bFA, paramBundle);
    this.bFz.setAdapter(this.bFH);
    this.bFz.setOnPageChangeListener(paramBundle);
    this.bFC = findViewById(2131427531);
    this.bFC.setOnClickListener(this);
    this.bFD = ((ImageView)findViewById(2131427532));
    this.bFF = ((ImageView)findViewById(2131427529));
    this.bFF.setOnClickListener(this);
    akk.ᐪ("RTMP", "Initial time: " + akx.Bl().getTime());
    int i = getIntent().getIntExtra("pager_pos", 0);
    ((if)localObject).ᐝ((aif)this.bFA.get(i));
    ((if)localObject).ԇ(i);
  }
  
  protected void onPause()
  {
    this.bFH.onPause();
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    this.bFH.onResume();
  }
  
  protected void onStart()
  {
    super.onStart();
    xa().ʲ(this.bFG);
  }
  
  protected void onStop()
  {
    xa().ː(this.bFG);
    super.onStop();
  }
  
  public void zE()
  {
    this.bFE.ԇ(1);
  }
  
  public class if
    implements ViewPager.aux
  {
    private int[] bFI = { 0, 0 };
    private float bFJ;
    private int bFK;
    private AtomicInteger bFL = new AtomicInteger(-1);
    private Animator bFM;
    private int bFN;
    private int bFO;
    private abf bFP;
    private abf bFQ;
    private int bFR;
    private int bFS;
    
    private if() {}
    
    private boolean zK()
    {
      return (this.bFM != null) && (this.bFM.isRunning());
    }
    
    private void ʻ(aif paramaif)
    {
      paramaif.bGb.setColor(paramaif.bGd);
      Iterator localIterator = MainActivity.ˊ(MainActivity.this).iterator();
      while (localIterator.hasNext())
      {
        aif localaif = (aif)localIterator.next();
        if (localaif != paramaif) {
          localaif.bGb.setColor(paramaif.bGe);
        }
      }
    }
    
    private void ʼ(aif paramaif)
    {
      MainActivity.ˎ(MainActivity.this).setBackgroundColor(paramaif.bGc);
      this.bFN = paramaif.bGc;
      this.bFO = paramaif.statusBarColor;
      MainActivity.ˊ(MainActivity.this, this.bFO);
    }
    
    private Animator ˊ(aif paramaif)
    {
      boolean bool;
      if (paramaif.bGh == 0) {
        bool = true;
      } else {
        bool = false;
      }
      float f;
      if (bool)
      {
        f = 0.0F;
        localObject = new float[2];
        Object tmp27_25 = localObject;
        tmp27_25[0] = 0.0F;
        Object tmp31_27 = tmp27_25;
        tmp31_27[1] = 100.0F;
        tmp31_27;
      }
      else
      {
        f = 1.0F;
        localObject = new float[2];
        Object tmp49_47 = localObject;
        tmp49_47[0] = 100.0F;
        Object tmp54_49 = tmp49_47;
        tmp54_49[1] = 0.0F;
        tmp54_49;
      }
      AnimatorSet localAnimatorSet = new AnimatorSet();
      Object localObject = ObjectAnimator.ofFloat(MainActivity.ˋ(MainActivity.this), "translationX", (float[])localObject);
      ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(MainActivity.ˋ(MainActivity.this), "alpha", new float[] { f });
      localAnimatorSet.addListener(new ahy(this, bool, paramaif));
      if (bool) {
        paramaif = alk.ᖮ(MainActivity.this);
      } else {
        paramaif = alk.ᵌ(MainActivity.this);
      }
      localAnimatorSet.setInterpolator(paramaif);
      localAnimatorSet.play(localObjectAnimator).with((Animator)localObject);
      return localAnimatorSet;
    }
    
    private Animator ˋ(aif paramaif)
    {
      paramaif.bGb.setTargetColor(paramaif.bGd);
      Iterator localIterator = MainActivity.ˊ(MainActivity.this).iterator();
      while (localIterator.hasNext())
      {
        aif localaif = (aif)localIterator.next();
        if (localaif != paramaif) {
          localaif.bGb.setTargetColor(paramaif.bGe);
        }
      }
      paramaif = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
      paramaif.setDuration(150L);
      paramaif.addUpdateListener(new ahz(this));
      return paramaif;
    }
    
    private Animator ˎ(aif paramaif)
    {
      this.bFQ = new abf(this.bFN, paramaif.bGc);
      this.bFP = new abf(this.bFO, paramaif.statusBarColor);
      ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
      localValueAnimator.setDuration(150L);
      localValueAnimator.addUpdateListener(new aia(this));
      localValueAnimator.addListener(new aib(this, paramaif));
      return localValueAnimator;
    }
    
    private Animator ˏ(aif paramaif)
    {
      ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(MainActivity.ˏ(MainActivity.this), "scaleX", new float[] { 1.0F, 0.0F }).setDuration(150L);
      localObjectAnimator1.setRepeatCount(1);
      localObjectAnimator1.setRepeatMode(2);
      ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(MainActivity.ˏ(MainActivity.this), "scaleY", new float[] { 1.0F, 0.0F }).setDuration(150L);
      localObjectAnimator2.setRepeatCount(1);
      localObjectAnimator2.setRepeatMode(2);
      Object localObject = ObjectAnimator.ofFloat(MainActivity.ᐝ(MainActivity.this), "scaleX", new float[] { 0.0F, 1.0F });
      ObjectAnimator localObjectAnimator3 = ObjectAnimator.ofFloat(MainActivity.ᐝ(MainActivity.this), "scaleY", new float[] { 0.0F, 1.0F });
      ObjectAnimator localObjectAnimator4 = ObjectAnimator.ofFloat(MainActivity.ᐝ(MainActivity.this), "rotation", new float[] { -22.5F, 0.0F });
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.play((Animator)localObject).with(localObjectAnimator3).with(localObjectAnimator4);
      localObject = new AnimatorSet();
      ((AnimatorSet)localObject).play(localObjectAnimator1).with(localObjectAnimator2);
      ((AnimatorSet)localObject).setInterpolator(alk.ᖮ(MainActivity.this));
      localObjectAnimator2.addListener(new aic(this, paramaif, localObjectAnimator1, localAnimatorSet));
      ((AnimatorSet)localObject).addListener(new aie(this, paramaif));
      return localObject;
    }
    
    public void ʹ(int paramInt)
    {
      this.bFI[0] = this.bFI[1];
      this.bFI[1] = paramInt;
    }
    
    public void ˊ(int paramInt1, float paramFloat, int paramInt2)
    {
      if ((this.bFL.get() == -1) && (paramInt1 == this.bFK)) {
        if (this.bFJ < paramFloat)
        {
          if ((paramFloat >= 0.5F) && ((this.bFI[0] == 1) || (this.bFI[1] == 1))) {
            Ү(paramInt1 + 1);
          }
        }
        else if (this.bFJ == paramFloat) {
          akk.ᐪ("Main", "==");
        } else if ((paramFloat <= 0.5F) && ((this.bFI[0] == 1) || (this.bFI[1] == 1))) {
          Ү(paramInt1);
        }
      }
      this.bFJ = paramFloat;
      this.bFK = paramInt1;
    }
    
    void Ү(int paramInt)
    {
      Object localObject = (aif)MainActivity.ˊ(MainActivity.this).get(paramInt);
      if (this.bFM == null)
      {
        if ((this.bFN == ((aif)localObject).bGc) && (this.bFR == ((aif)localObject).bGf)) {
          return;
        }
        ArrayList localArrayList = new ArrayList();
        if (this.bFN != ((aif)localObject).bGc) {
          localArrayList.add(ˎ((aif)localObject));
        }
        if ((!((aif)localObject).bGb.zO()) || (((aif)localObject).bGb.zP() != ((aif)localObject).bGd)) {
          localArrayList.add(ˋ((aif)localObject));
        }
        if (this.bFR != ((aif)localObject).bGf) {
          localArrayList.add(ˏ((aif)localObject));
        }
        if (this.bFS != ((aif)localObject).bGh) {
          localArrayList.add(ˊ((aif)localObject));
        }
        if (!localArrayList.isEmpty())
        {
          localObject = new AnimatorSet();
          ((AnimatorSet)localObject).playTogether(localArrayList);
          this.bFM = ((Animator)localObject);
          this.bFM.addListener(new ahx(this));
          this.bFM.start();
        }
      }
    }
    
    public void ԇ(int paramInt)
    {
      this.bFL.set(paramInt);
      MainActivity.ʻ(MainActivity.this).setCurrentItem(paramInt);
    }
    
    public void ᐝ(aif paramaif)
    {
      ʼ(paramaif);
      ʻ(paramaif);
      this.bFR = paramaif.bGf;
      this.bFS = paramaif.bGh;
    }
    
    public void ﾞ(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        break;
      case 0: 
        vi.ˊ(vi.if.bmK);
        break;
      case 1: 
        vi.ˊ(vi.if.bmL);
        break;
      case 2: 
        vi.ˊ(vi.if.bmN);
      }
      if ((this.bFL.getAndSet(-1) != -1) && (!zK())) {
        Ү(paramInt);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     tv.periscope.android.ui.main.MainActivity
 * JD-Core Version:    0.7.0.1
 */