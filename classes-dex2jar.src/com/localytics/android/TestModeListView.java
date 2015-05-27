package com.localytics.android;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.TranslateAnimation;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import o.ʼ;
import o.ˈ;
import o.ι;

final class TestModeListView
  extends ʼ
{
  static final String TEST_MODE_LIST_TAG = "marketing_test_mode_list";
  private ListAdapter mAdapter;
  private Map<Integer, MarketingCallable> mCallbacks;
  private final AtomicBoolean mEnterAnimatable = new AtomicBoolean(true);
  
  public static TestModeListView newInstance()
  {
    TestModeListView localTestModeListView = new TestModeListView();
    localTestModeListView.setRetainInstance(true);
    return localTestModeListView;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    Localytics.Log.d("[TestModeListView]: onActivityCreated");
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    Localytics.Log.d("[TestModeListView]: onAttach");
    super.onAttach(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Localytics.Log.d("[TestModeListView]: onCreate");
    super.onCreate(paramBundle);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Localytics.Log.d("[TestModeListView]: onCreateDialog");
    return new TestModeDialog(getActivity(), 16973835);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    Localytics.Log.d("[TestModeListView]: onCreateView");
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    Localytics.Log.d("[TestModeListView]: onDestroy");
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    Localytics.Log.d("[TestModeListView]: onDestroyView");
    if ((getDialog() != null) && (getRetainInstance())) {
      getDialog().setOnDismissListener(null);
    }
    super.onDestroyView();
  }
  
  public void onDetach()
  {
    Localytics.Log.d("[TestModeListView]: onDetach");
    super.onDetach();
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    Localytics.Log.d("[TestModeListView]: onDismiss");
    super.onDismiss(paramDialogInterface);
  }
  
  public void onPause()
  {
    Localytics.Log.d("[TestModeListView]: onPause");
    super.onPause();
  }
  
  public void onResume()
  {
    Localytics.Log.d("[TestModeListView]: onResume");
    super.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    Localytics.Log.d("[TestModeListView]: onSaveInstanceState");
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    Localytics.Log.d("[TestModeListView]: onStart");
    super.onStart();
  }
  
  public void onStop()
  {
    Localytics.Log.d("[TestModeListView]: onStop");
    super.onStop();
  }
  
  public void onViewStateRestored(Bundle paramBundle)
  {
    Localytics.Log.d("[TestModeListView]: onViewStateRestored");
    super.onViewStateRestored(paramBundle);
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    this.mAdapter = paramListAdapter;
  }
  
  public TestModeListView setCallbacks(Map<Integer, MarketingCallable> paramMap)
  {
    this.mCallbacks = paramMap;
    return this;
  }
  
  public void show(ˈ paramˈ, String paramString)
  {
    this.mEnterAnimatable.set(true);
    super.show(paramˈ, paramString);
  }
  
  final class CancelItemAdapter
    extends BaseAdapter
  {
    private final String[] MENU_ITEMS = { "Cancel" };
    private final Context mContext;
    
    CancelItemAdapter(Context paramContext)
    {
      this.mContext = paramContext;
    }
    
    public int getCount()
    {
      return this.MENU_ITEMS.length;
    }
    
    public String getItem(int paramInt)
    {
      return this.MENU_ITEMS[paramInt];
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      paramViewGroup = paramView;
      paramView = paramViewGroup;
      if (paramViewGroup == null)
      {
        paramView = new LinearLayout(this.mContext);
        paramView.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
        paramView.setOrientation(1);
        int i = (int)(this.mContext.getResources().getDisplayMetrics().density * 6.0F + 0.5F);
        paramView.setPadding(0, i, 0, i);
        paramViewGroup = new TextView(this.mContext);
        paramViewGroup.setId(1);
        paramViewGroup.setTextSize(26.0F);
        paramViewGroup.setTextColor(Color.argb(255, 0, 91, 255));
        paramViewGroup.setGravity(17);
        paramView.addView(paramViewGroup);
        float f = TestModeListView.this.getResources().getDisplayMetrics().density * 8.0F;
        paramViewGroup = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[] { -1, -1, -1 });
        paramViewGroup.setGradientType(0);
        paramViewGroup.setCornerRadii(new float[] { f, f, f, f, f, f, f, f });
        if (DatapointHelper.getApiLevel() >= 16) {
          paramView.setBackground(paramViewGroup);
        } else {
          paramView.setBackgroundColor(-1);
        }
      }
      paramViewGroup = (TextView)paramView.findViewById(1);
      paramViewGroup.setText(this.MENU_ITEMS[paramInt]);
      paramViewGroup.setTypeface(null, 1);
      return paramView;
    }
  }
  
  class MenuDialog
    extends Dialog
  {
    private LinearLayout mDialogLayout;
    private DisplayMetrics mMetrics;
    
    public MenuDialog(Context paramContext, int paramInt)
    {
      super(paramInt);
      setupViews();
      adjustLayout();
    }
    
    private void adjustLayout()
    {
      this.mMetrics = new DisplayMetrics();
      ((WindowManager)TestModeListView.this.getActivity().getSystemService("window")).getDefaultDisplay().getMetrics(this.mMetrics);
      Window localWindow = getWindow();
      localWindow.setBackgroundDrawable(new ColorDrawable(0));
      localWindow.setAttributes(localWindow.getAttributes());
      localWindow.setFlags(1024, 1024);
    }
    
    private void setupViews()
    {
      this.mDialogLayout = new LinearLayout(getContext());
      this.mDialogLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
      this.mDialogLayout.setGravity(16);
      this.mDialogLayout.setOrientation(1);
      int i = getContext().getResources().getColor(17170445);
      Object localObject1 = new TestModeListView.MenuItemAdapter(TestModeListView.this, TestModeListView.this.getActivity());
      Object localObject2 = new ListView(TestModeListView.this.getActivity());
      ((ListView)localObject2).setAdapter((ListAdapter)localObject1);
      if (DatapointHelper.getApiLevel() >= 16) {
        ((ListView)localObject2).setBackground(new ColorDrawable(i));
      } else {
        ((ListView)localObject2).setBackgroundColor(i);
      }
      ((ListView)localObject2).setDividerHeight(1);
      ((ListView)localObject2).setOnItemClickListener(new TestModeListView.MenuDialog.1(this));
      this.mDialogLayout.addView((View)localObject2);
      localObject1 = new View(TestModeListView.this.getActivity());
      if (DatapointHelper.getApiLevel() >= 16) {
        ((View)localObject1).setBackground(new ColorDrawable(i));
      } else {
        ((View)localObject1).setBackgroundColor(i);
      }
      ((View)localObject1).setLayoutParams(new LinearLayout.LayoutParams(-1, (int)(TestModeListView.this.getResources().getDisplayMetrics().density * 10.0F + 0.5F)));
      this.mDialogLayout.addView((View)localObject1);
      localObject2 = new TestModeListView.CancelItemAdapter(TestModeListView.this, TestModeListView.this.getActivity());
      ListView localListView = new ListView(TestModeListView.this.getActivity());
      localListView.setAdapter((ListAdapter)localObject2);
      if (DatapointHelper.getApiLevel() >= 16) {
        localListView.setBackground(new ColorDrawable(i));
      } else {
        ((View)localObject1).setBackgroundColor(i);
      }
      localListView.setOnItemClickListener(new TestModeListView.MenuDialog.2(this));
      this.mDialogLayout.addView(localListView);
      requestWindowFeature(1);
      setContentView(this.mDialogLayout);
    }
  }
  
  final class MenuItemAdapter
    extends BaseAdapter
  {
    private final String[] MENU_ITEMS = { "Disable Test Mode", "Refresh", "Copy Push Token", "Copy Install ID" };
    private final Context mContext;
    
    public MenuItemAdapter(Context paramContext)
    {
      this.mContext = paramContext;
    }
    
    private Drawable getShape(int paramInt)
    {
      float f = TestModeListView.this.getResources().getDisplayMetrics().density * 8.0F;
      GradientDrawable localGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[] { -1, -1, -1 });
      localGradientDrawable.setGradientType(0);
      switch (paramInt)
      {
      default: 
        return localGradientDrawable;
      case 0: 
        localGradientDrawable.setCornerRadii(new float[] { f, f, f, f, 0.0F, 0.0F, 0.0F, 0.0F });
        return localGradientDrawable;
      case 1: 
      case 2: 
        return localGradientDrawable;
      }
      localGradientDrawable.setCornerRadii(new float[] { 0.0F, 0.0F, 0.0F, 0.0F, f, f, f, f });
      return localGradientDrawable;
    }
    
    public int getCount()
    {
      return this.MENU_ITEMS.length;
    }
    
    public String getItem(int paramInt)
    {
      return this.MENU_ITEMS[paramInt];
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      paramViewGroup = paramView;
      paramView = paramViewGroup;
      if (paramViewGroup == null)
      {
        paramView = new LinearLayout(this.mContext);
        paramView.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
        paramView.setOrientation(1);
        int i = (int)(this.mContext.getResources().getDisplayMetrics().density * 6.0F + 0.5F);
        paramView.setPadding(0, i, 0, i);
        paramViewGroup = new TextView(this.mContext);
        paramViewGroup.setId(1);
        paramViewGroup.setTextSize(26.0F);
        paramViewGroup.setTextColor(Color.argb(255, 0, 91, 255));
        paramViewGroup.setGravity(17);
        paramView.addView(paramViewGroup);
        if (DatapointHelper.getApiLevel() >= 16) {
          paramView.setBackground(getShape(paramInt));
        } else {
          paramView.setBackgroundColor(-1);
        }
      }
      paramViewGroup = (TextView)paramView.findViewById(1);
      paramViewGroup.setText(this.MENU_ITEMS[paramInt]);
      switch (paramInt)
      {
      default: 
        return paramView;
      case 0: 
        paramViewGroup.setTextColor(-65536);
      }
      return paramView;
    }
  }
  
  final class TestModeDialog
    extends Dialog
  {
    private TranslateAnimation mAnimIn;
    private TranslateAnimation mAnimOut;
    private RelativeLayout mDialogLayout;
    private DisplayMetrics mMetrics;
    
    public TestModeDialog(Context paramContext, int paramInt)
    {
      super(paramInt);
      setupViews();
      createAnimations();
      adjustLayout();
    }
    
    @SuppressLint({"NewApi"})
    private void adjustLayout()
    {
      this.mMetrics = new DisplayMetrics();
      ((WindowManager)TestModeListView.this.getActivity().getSystemService("window")).getDefaultDisplay().getMetrics(this.mMetrics);
      Window localWindow = getWindow();
      localWindow.setBackgroundDrawable(new ColorDrawable(0));
      localWindow.setGravity(17);
      WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
      localLayoutParams.dimAmount = 0.0F;
      localLayoutParams.width = this.mMetrics.widthPixels;
      localWindow.setAttributes(localLayoutParams);
      if (TestModeListView.this.mEnterAnimatable.getAndSet(false)) {
        this.mDialogLayout.startAnimation(this.mAnimIn);
      }
      localWindow.setFlags(1024, 1024);
    }
    
    private void createAnimations()
    {
      this.mAnimIn = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, 1.0F, 2, 0.0F);
      this.mAnimIn.setDuration(250L);
      this.mAnimOut = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, 0.0F, 2, 1.0F);
      this.mAnimOut.setDuration(250L);
      this.mAnimOut.setAnimationListener(new TestModeListView.TestModeDialog.4(this));
    }
    
    private void setupViews()
    {
      float f = TestModeListView.this.getResources().getDisplayMetrics().density;
      this.mDialogLayout = new RelativeLayout(getContext());
      this.mDialogLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
      this.mDialogLayout.setBackgroundColor(-1);
      RelativeLayout localRelativeLayout = new RelativeLayout(getContext());
      Object localObject1 = new RelativeLayout.LayoutParams(-1, -2);
      ((RelativeLayout.LayoutParams)localObject1).addRule(10);
      localRelativeLayout.setId(1);
      localRelativeLayout.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      localRelativeLayout.setBackgroundColor(Color.argb(255, 73, 73, 73));
      localRelativeLayout.setPadding((int)(8.0F * f + 0.5F), (int)(12.0F * f + 0.5F), (int)(8.0F * f + 0.5F), (int)(12.0F * f + 0.5F));
      this.mDialogLayout.addView(localRelativeLayout);
      localObject1 = new TextView(getContext());
      ((TextView)localObject1).setText("Close");
      ((TextView)localObject1).setTextSize(22.0F);
      int i = Color.argb(255, 255, 0, 0);
      int j = Color.argb(255, 0, 91, 255);
      int k = Color.argb(255, 0, 91, 255);
      ((TextView)localObject1).setTextColor(new ColorStateList(new int[][] { { 16842919 }, { 16842908 }, new int[0] }, new int[] { i, j, k }));
      ((TextView)localObject1).setOnClickListener(new TestModeListView.TestModeDialog.1(this));
      Object localObject2 = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject2).addRule(9);
      ((TextView)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
      localRelativeLayout.addView((View)localObject1);
      localObject1 = new TextView(getContext());
      ((TextView)localObject1).setText("Localytics");
      ((TextView)localObject1).setTextSize(22.0F);
      ((TextView)localObject1).setTextColor(-1);
      localObject2 = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject2).addRule(13);
      ((TextView)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
      localRelativeLayout.addView((View)localObject1);
      localObject1 = new TextView(getContext());
      ((TextView)localObject1).setText("Menu");
      ((TextView)localObject1).setTextSize(22.0F);
      localObject2 = new int[] { 16842919 };
      int[] arrayOfInt1 = { 16842908 };
      int[] arrayOfInt2 = new int[0];
      i = Color.argb(255, 255, 0, 0);
      j = Color.argb(255, 0, 91, 255);
      k = Color.argb(255, 0, 91, 255);
      ((TextView)localObject1).setTextColor(new ColorStateList(new int[][] { localObject2, arrayOfInt1, arrayOfInt2 }, new int[] { i, j, k }));
      ((TextView)localObject1).setOnClickListener(new TestModeListView.TestModeDialog.2(this));
      localObject2 = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject2).addRule(11);
      ((TextView)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
      localRelativeLayout.addView((View)localObject1);
      localRelativeLayout = new RelativeLayout(getContext());
      localObject1 = new RelativeLayout.LayoutParams(-1, -1);
      ((RelativeLayout.LayoutParams)localObject1).addRule(3, 1);
      localRelativeLayout.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      this.mDialogLayout.addView(localRelativeLayout);
      localObject1 = new ListView(getContext());
      ((ListView)localObject1).setAdapter(TestModeListView.this.mAdapter);
      ((ListView)localObject1).setOnItemClickListener(new TestModeListView.TestModeDialog.3(this));
      localRelativeLayout.addView((View)localObject1);
      requestWindowFeature(1);
      setContentView(this.mDialogLayout);
    }
    
    public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 4)
      {
        this.mDialogLayout.startAnimation(this.mAnimOut);
        if (TestModeListView.this.mCallbacks != null)
        {
          MarketingCallable localMarketingCallable = (MarketingCallable)TestModeListView.this.mCallbacks.get(Integer.valueOf(10));
          if (localMarketingCallable != null) {
            localMarketingCallable.call(null);
          }
        }
        return super.onKeyDown(paramInt, paramKeyEvent);
      }
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.TestModeListView
 * JD-Core Version:    0.7.0.1
 */