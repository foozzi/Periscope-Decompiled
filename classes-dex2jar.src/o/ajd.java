package o;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.aux;
import android.view.View;
import android.view.View.OnClickListener;

public class ajd
  extends Activity
  implements View.OnClickListener, ViewPager.aux
{
  private static final int[] bHa = { 2130837563, 2130837564, 2130837565, 2130837566 };
  private static final int[] bHb = { 2131099911, 2131099912, 2131099913, 2131099914 };
  private static final int bHc = bHa.length - 1;
  private all bHd;
  private View bHe;
  
  private void Ab()
  {
    startActivity(new Intent(this, aiz.class));
    finish();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131427537: 
      vi.ˊ(vi.if.blO);
      Ab();
      return;
    }
    vi.ˊ(vi.if.blP);
    Ab();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903129);
    findViewById(2131427537).setOnClickListener(this);
    this.bHd = ((all)findViewById(2131427610));
    this.bHd.setOnPageChangeListener(this);
    this.bHe = findViewById(2131427611);
    this.bHe.setOnClickListener(this);
    paramBundle = new aje(this, bHa, bHb);
    ViewPager localViewPager = (ViewPager)findViewById(2131427530);
    localViewPager.setAdapter(paramBundle);
    localViewPager.setOnPageChangeListener(this.bHd);
  }
  
  public void ʹ(int paramInt) {}
  
  public void ˊ(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void ﾞ(int paramInt)
  {
    if (paramInt == bHc)
    {
      this.bHe.setVisibility(0);
      this.bHd.setVisibility(8);
      return;
    }
    this.bHe.setVisibility(8);
    this.bHd.setVisibility(0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ajd
 * JD-Core Version:    0.7.0.1
 */