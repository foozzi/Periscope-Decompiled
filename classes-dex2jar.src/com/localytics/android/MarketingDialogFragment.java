package com.localytics.android;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter.Blur;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import o.ʼ;
import o.ι;

public final class MarketingDialogFragment
  extends ʼ
{
  private static final String AMP_DESCRIPTION = "amp_view";
  private static final String CLOSE_BUTTON_DESCRIPTION = "close_button";
  private static final int CLOSE_BUTTON_ID = 1;
  static final String DIALOG_TAG = "marketing_dialog";
  private static final int OPENING_EXTERNAL = 2;
  private static final int OPENING_INTERNAL = 1;
  private static final int PROTOCOL_UNMATCHED = -1;
  private static final int PROTOCOL_UNRECOGNIZED = -2;
  private static final int WEB_VIEW_ID = 2;
  private static Localytics.InAppMessageDismissButtonLocation dismissButtonLocation = Localytics.InAppMessageDismissButtonLocation.LEFT;
  private static Bitmap sDismissButtonImage = null;
  private Map<Integer, MarketingCallable> mCallbacks;
  private final AtomicBoolean mEnterAnimatable = new AtomicBoolean(true);
  private final AtomicBoolean mExitAnimatable = new AtomicBoolean(true);
  private JavaScriptClient mJavaScriptClient;
  private MarketingDialog mMarketingDialog;
  private MarketingMessage mMarketingMessage;
  private final AtomicBoolean mUploadedViewEvent = new AtomicBoolean(false);
  
  static Localytics.InAppMessageDismissButtonLocation getInAppDismissButtonLocation()
  {
    return dismissButtonLocation;
  }
  
  private String getValueByQueryKey(String paramString, URI paramURI)
  {
    Object localObject = paramURI.getQuery();
    if ((TextUtils.isEmpty(paramString)) || (TextUtils.isEmpty((CharSequence)localObject))) {
      return null;
    }
    paramURI = paramURI.getQuery().split("[&]");
    int j = paramURI.length;
    int i = 0;
    while (i < j)
    {
      localObject = paramURI[i].split("[=]");
      if ((localObject[0].compareTo(paramString) == 0) && (2 == localObject.length)) {
        try
        {
          paramString = URLDecoder.decode(localObject[1], "UTF-8");
          return paramString;
        }
        catch (UnsupportedEncodingException paramString)
        {
          return null;
        }
      }
      i += 1;
    }
    return null;
  }
  
  private String getValueByQueryKey(String paramString, URL paramURL)
  {
    try
    {
      paramString = getValueByQueryKey(paramString, paramURL.toURI());
      return paramString;
    }
    catch (URISyntaxException paramString) {}
    return null;
  }
  
  private int handleCustomProtocolRequest(String paramString, Activity paramActivity)
  {
    paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    if (this.mMarketingDialog.getContext().getPackageManager().queryIntentActivities(paramString, 0).size() > 0)
    {
      Localytics.Log.w("[In-app Nav Handler]: An app on this device is registered to handle this protocol scheme. Opening...");
      paramString.setFlags(131072);
      paramActivity.startActivity(paramString);
      return 2;
    }
    return -2;
  }
  
  private int handleCustomProtocolRequest(URL paramURL, Activity paramActivity)
  {
    return handleCustomProtocolRequest(paramURL.toString(), paramActivity);
  }
  
  private int handleFileProtocolRequest(URL paramURL)
  {
    if (!paramURL.getProtocol().equals("file")) {
      return -1;
    }
    Localytics.Log.w(String.format("[In-app Nav Handler]: Displaying content from your local creatives.", new Object[0]));
    return 1;
  }
  
  private int handleHttpProtocolRequest(URL paramURL, Activity paramActivity)
  {
    String str = paramURL.getProtocol();
    if ((!str.equals("http")) && (!str.equals("https"))) {
      return -1;
    }
    Localytics.Log.w("[In-app Nav Handler]: Handling a request for an external HTTP address.");
    str = getValueByQueryKey("ampExternalOpen", paramURL);
    if ((!TextUtils.isEmpty(str)) && (str.toLowerCase(Locale.US).equals("true")))
    {
      Localytics.Log.w(String.format("[In-app Nav Handler]: Query string hook [%s] set to true. Opening the URL in chrome", new Object[] { "ampExternalOpen" }));
      paramURL = new Intent("android.intent.action.VIEW", Uri.parse(paramURL.toString()));
      if (this.mMarketingDialog.getContext().getPackageManager().queryIntentActivities(paramURL, 0).size() > 0)
      {
        paramActivity.startActivity(paramURL);
        return 2;
      }
    }
    Localytics.Log.w("[In-app Nav Handler]: Loading HTTP request inside the current in-app view");
    return 1;
  }
  
  static MarketingDialogFragment newInstance()
  {
    MarketingDialogFragment localMarketingDialogFragment = new MarketingDialogFragment();
    localMarketingDialogFragment.setRetainInstance(true);
    return localMarketingDialogFragment;
  }
  
  static void setDismissButtonImage(Bitmap paramBitmap)
  {
    if (sDismissButtonImage != null) {
      sDismissButtonImage.recycle();
    }
    sDismissButtonImage = paramBitmap;
  }
  
  static void setInAppDismissButtonLocation(Localytics.InAppMessageDismissButtonLocation paramInAppMessageDismissButtonLocation)
  {
    dismissButtonLocation = paramInAppMessageDismissButtonLocation;
  }
  
  private void tagMarketingActionEventWithAction(String paramString)
  {
    if (this.mUploadedViewEvent.getAndSet(true))
    {
      Localytics.Log.w(String.format("The in-app action for this message has already been set. Ignoring in-app Action: [%s]", new Object[] { paramString }));
      return;
    }
    Object localObject = new TreeMap();
    ((TreeMap)localObject).put("ampAction", paramString);
    ((TreeMap)localObject).put("ampCampaignId", this.mMarketingMessage.get("campaign_id").toString());
    ((TreeMap)localObject).put("ampCampaign", this.mMarketingMessage.get("rule_name").toString());
    ((TreeMap)localObject).put("Schema Version - Client", String.valueOf(2));
    paramString = (String)this.mMarketingMessage.get("ab_test");
    if (!TextUtils.isEmpty(paramString)) {
      ((TreeMap)localObject).put("ampAB", paramString);
    }
    if ((!Localytics.isTestModeEnabled()) && (this.mCallbacks != null))
    {
      paramString = (MarketingCallable)this.mCallbacks.get(Integer.valueOf(2));
      if (paramString != null) {
        paramString.call(new Object[] { "ampView", localObject });
      }
      if (Constants.IS_LOGGING_ENABLED)
      {
        paramString = new StringBuilder();
        localObject = ((TreeMap)localObject).entrySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          paramString.append("Key = ").append((String)localEntry.getKey()).append(", Value = ").append((String)localEntry.getValue());
        }
        Localytics.Log.v(String.format("In-app event tagged successfully.\n   Attributes Dictionary = \n%s", new Object[] { paramString.toString() }));
      }
    }
  }
  
  private void tagMarketingActionForURL(URI paramURI)
  {
    String str = getValueByQueryKey("ampAction", paramURI);
    if (!TextUtils.isEmpty(str))
    {
      Localytics.Log.w(String.format("Attempting to tag event with custom in-app action. [Action: %s]", new Object[] { str }));
      tagMarketingActionEventWithAction(str);
      return;
    }
    paramURI = paramURI.getScheme();
    if ((!paramURI.equals("file")) && (!paramURI.equals("http")) && (!paramURI.equals("https"))) {
      tagMarketingActionEventWithAction("click");
    }
  }
  
  void dismissCampaign()
  {
    if (this.mMarketingDialog != null)
    {
      if (this.mMarketingMessage != null) {
        tagMarketingActionEventWithAction("X");
      }
      this.mMarketingDialog.dismiss();
    }
  }
  
  boolean handleUrl(String paramString, Activity paramActivity)
  {
    Object localObject2 = paramString;
    Localytics.Log.w(String.format("[In-app Nav Handler]: Evaluating in-app URL:\n\tURL:%s", new Object[] { localObject2 }));
    int m = 0;
    int k = 0;
    Object localObject1 = localObject2;
    Object localObject3 = localObject2;
    int j = k;
    int i = m;
    try
    {
      if (((String)localObject2).endsWith("://"))
      {
        localObject3 = localObject2;
        j = k;
        i = m;
        localObject1 = ((String)localObject2).substring(0, ((String)localObject2).length() - 1);
      }
      localObject3 = localObject1;
      j = k;
      i = m;
      tagMarketingActionForURL(new URI((String)localObject1));
      localObject3 = localObject1;
      j = k;
      i = m;
      localObject2 = new URL((String)localObject1);
      localObject3 = localObject1;
      j = k;
      i = m;
      k = handleFileProtocolRequest((URL)localObject2);
      i = k;
      if (k > 0)
      {
        if (i == 2) {
          bool = true;
        } else {
          bool = false;
        }
        return bool;
      }
      localObject3 = localObject1;
      j = i;
      k = handleHttpProtocolRequest((URL)localObject2, paramActivity);
      i = k;
      if (k > 0)
      {
        if (i == 2) {
          bool = true;
        } else {
          bool = false;
        }
        return bool;
      }
      localObject3 = localObject1;
      j = i;
      m = handleCustomProtocolRequest((URL)localObject2, paramActivity);
      k = m;
      if (m > 0)
      {
        if (k == 2) {
          bool = true;
        } else {
          bool = false;
        }
        return bool;
      }
      localObject3 = localObject1;
      j = k;
      i = k;
      Localytics.Log.w(String.format("[In-app Nav Handler]: Protocol handler scheme not recognized. Attempting to load the URL... [Scheme: %s]", new Object[] { ((URL)localObject2).getProtocol() }));
      if (k == 2) {
        this.mMarketingDialog.dismissWithAnimation();
      }
    }
    catch (Exception localException)
    {
      boolean bool;
      i = j;
      k = handleCustomProtocolRequest(localObject3, paramActivity);
      j = k;
      if (k > 0)
      {
        if (j == 2) {
          bool = true;
        } else {
          bool = false;
        }
        return bool;
      }
      i = j;
      Localytics.Log.w(String.format("[In-app Nav Handler]: Invalid url %s", new Object[] { paramString }));
      i = j;
      this.mMarketingDialog.dismissWithAnimation();
      if (j == 2) {
        this.mMarketingDialog.dismissWithAnimation();
      }
    }
    finally
    {
      if (i == 2) {
        this.mMarketingDialog.dismissWithAnimation();
      }
    }
    return false;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    Localytics.Log.v("[InAppDialogFragment]: onActivityCreated");
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    Localytics.Log.v("[InAppDialogFragment]: onAttach");
    super.onAttach(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Localytics.Log.v("[InAppDialogFragment]: onCreate");
    super.onCreate(paramBundle);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Localytics.Log.v("[InAppDialogFragment]: onCreateDialog");
    paramBundle = new MarketingDialog(getActivity(), 16973835);
    this.mMarketingDialog = paramBundle;
    return paramBundle;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    Localytics.Log.v("[InAppDialogFragment]: onCreateView");
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    Localytics.Log.v("[InAppDialogFragment]: onDestroy");
    if (this.mCallbacks != null)
    {
      MarketingCallable localMarketingCallable = (MarketingCallable)this.mCallbacks.get(Integer.valueOf(1));
      if ((!Constants.isTestModeEnabled()) && (localMarketingCallable != null)) {
        localMarketingCallable.call(new Object[] { this.mMarketingMessage });
      }
    }
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    Localytics.Log.v("[InAppDialogFragment]: onDestroyView");
    if ((getDialog() != null) && (getRetainInstance())) {
      getDialog().setOnDismissListener(null);
    }
    super.onDestroyView();
  }
  
  public void onDetach()
  {
    Localytics.Log.v("[InAppDialogFragment]: onDetach");
    super.onDetach();
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    Localytics.Log.v("[InAppDialogFragment]: onDismiss");
    if (this.mMarketingMessage != null) {
      tagMarketingActionEventWithAction("X");
    }
    super.onDismiss(paramDialogInterface);
  }
  
  public void onPause()
  {
    Localytics.Log.v("[InAppDialogFragment]: onPause");
    super.onPause();
  }
  
  public void onResume()
  {
    Localytics.Log.v("[InAppDialogFragment]: onResume");
    super.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    Localytics.Log.v("[InAppDialogFragment]: onSaveInstanceState");
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    Localytics.Log.v("[InAppDialogFragment]: onStart");
    super.onStart();
  }
  
  public void onStop()
  {
    Localytics.Log.v("[InAppDialogFragment]: onStop");
    super.onStop();
  }
  
  public void onViewStateRestored(Bundle paramBundle)
  {
    Localytics.Log.v("[InAppDialogFragment]: onViewStateRestored");
    super.onViewStateRestored(paramBundle);
  }
  
  public MarketingDialogFragment setCallbacks(Map<Integer, MarketingCallable> paramMap)
  {
    this.mCallbacks = paramMap;
    return this;
  }
  
  MarketingDialogFragment setData(MarketingMessage paramMarketingMessage)
  {
    this.mMarketingMessage = paramMarketingMessage;
    return this;
  }
  
  MarketingDialogFragment setJavaScriptClient(JavaScriptClient paramJavaScriptClient)
  {
    this.mJavaScriptClient = paramJavaScriptClient;
    paramJavaScriptClient = this.mJavaScriptClient.getCallbacks();
    paramJavaScriptClient.put(Integer.valueOf(15), new MarketingDialogFragment.1(this));
    paramJavaScriptClient.put(Integer.valueOf(4), new MarketingDialogFragment.2(this));
    return this;
  }
  
  final class MarketingDialog
    extends Dialog
  {
    private static final String LOCATION_BOTTOM = "bottom";
    private static final String LOCATION_CENTER = "center";
    private static final String LOCATION_FULL = "full";
    private static final String LOCATION_TOP = "top";
    private static final int MARGIN = 10;
    private static final int MAX_BANNER_WIDTH_DIP = 360;
    private TranslateAnimation mAnimBottomIn;
    private TranslateAnimation mAnimBottomOut;
    private TranslateAnimation mAnimCenterIn;
    private TranslateAnimation mAnimCenterOut;
    private TranslateAnimation mAnimFullIn;
    private TranslateAnimation mAnimFullOut;
    private TranslateAnimation mAnimTopIn;
    private TranslateAnimation mAnimTopOut;
    private CloseButton mBtnClose;
    private RelativeLayout mDialogLayout;
    private float mHeight;
    private String mLocation;
    private DisplayMetrics mMetrics;
    private RelativeLayout mRootLayout;
    private MarketingWebView mWebView;
    private float mWidth;
    
    MarketingDialog(Context paramContext, int paramInt)
    {
      super(paramInt);
      if (MarketingDialogFragment.this.mMarketingMessage == null)
      {
        MarketingDialogFragment.this.dismiss();
        return;
      }
      this.mLocation = ((String)MarketingDialogFragment.this.mMarketingMessage.get("location"));
      setupViews();
      createAnimations();
      adjustLayout();
      paramContext = (String)MarketingDialogFragment.this.mMarketingMessage.get("html_url");
      if (paramContext != null)
      {
        this.mWebView.loadUrl(paramContext);
        return;
      }
      new Handler(Looper.getMainLooper()).post(new MarketingDialogFragment.MarketingDialog.1(this, MarketingDialogFragment.this));
    }
    
    @SuppressLint({"NewApi"})
    private void adjustLayout()
    {
      this.mMetrics = new DisplayMetrics();
      ((WindowManager)MarketingDialogFragment.this.getActivity().getSystemService("window")).getDefaultDisplay().getMetrics(this.mMetrics);
      this.mWidth = ((Float)MarketingDialogFragment.this.mMarketingMessage.get("display_width")).floatValue();
      this.mHeight = ((Float)MarketingDialogFragment.this.mMarketingMessage.get("display_height")).floatValue();
      float f1 = this.mHeight / this.mWidth;
      float f2 = Math.min(this.mMetrics.density * 360.0F, Math.min(this.mMetrics.widthPixels, this.mMetrics.heightPixels));
      Window localWindow = getWindow();
      Object localObject = localWindow.getAttributes();
      localWindow.setBackgroundDrawable(new ColorDrawable(0));
      localWindow.setFlags(32, 32);
      if (this.mLocation.equals("center"))
      {
        localWindow.setLayout(this.mMetrics.widthPixels, this.mMetrics.heightPixels);
        int i = (int)(this.mMetrics.density * 10.0F + 0.5F);
        localObject = (ViewGroup.MarginLayoutParams)this.mWebView.getLayoutParams();
        ((ViewGroup.MarginLayoutParams)localObject).width = ((int)Math.min(f2 - (i << 1), (int)(this.mWidth * this.mMetrics.density + 0.5F)) + (i << 1));
        ((ViewGroup.MarginLayoutParams)localObject).height = ((int)(Math.min(f2 - (i << 1), (int)(this.mWidth * this.mMetrics.density + 0.5F)) * f1) + (i << 1));
        ((ViewGroup.MarginLayoutParams)localObject).setMargins(i, i, i, i);
        this.mWebView.setLayoutParams((ViewGroup.LayoutParams)localObject);
        this.mWebView.requestLayout();
        localObject = (RelativeLayout.LayoutParams)this.mBtnClose.getLayoutParams();
        ((RelativeLayout.LayoutParams)localObject).setMargins(0, 0, -i, 0);
        this.mBtnClose.setLayoutParams((ViewGroup.LayoutParams)localObject);
        this.mBtnClose.requestLayout();
      }
      else if (this.mLocation.equals("full"))
      {
        localWindow.setLayout(this.mMetrics.widthPixels, this.mMetrics.heightPixels);
      }
      else if (this.mLocation.equals("top"))
      {
        ((WindowManager.LayoutParams)localObject).y = -268435455;
        ((WindowManager.LayoutParams)localObject).dimAmount = 0.0F;
        localWindow.setLayout((int)f2, (int)(f2 * f1 + 0.5F));
      }
      else if (this.mLocation.equals("bottom"))
      {
        ((WindowManager.LayoutParams)localObject).y = 268435455;
        ((WindowManager.LayoutParams)localObject).dimAmount = 0.0F;
        localWindow.setLayout((int)f2, (int)(f2 * f1 + 0.5F));
      }
      localWindow.setFlags(1024, 1024);
    }
    
    private void createAnimations()
    {
      this.mAnimCenterIn = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, 1.0F, 2, 0.0F);
      this.mAnimCenterIn.setDuration(500L);
      this.mAnimCenterOut = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, 0.0F, 2, 1.0F);
      this.mAnimCenterOut.setDuration(500L);
      this.mAnimTopIn = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, -1.0F, 2, 0.0F);
      this.mAnimTopIn.setDuration(500L);
      this.mAnimTopOut = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, 0.0F, 2, -1.0F);
      this.mAnimTopOut.setDuration(500L);
      this.mAnimBottomIn = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, 1.0F, 2, 0.0F);
      this.mAnimBottomIn.setDuration(500L);
      this.mAnimBottomOut = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, 0.0F, 2, 1.0F);
      this.mAnimBottomOut.setDuration(500L);
      this.mAnimFullIn = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, 1.0F, 2, 0.0F);
      this.mAnimFullIn.setDuration(500L);
      this.mAnimFullOut = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, 0.0F, 2, 1.0F);
      this.mAnimFullOut.setDuration(500L);
      Object localObject = new MarketingDialogFragment.MarketingDialog.3(this);
      this.mAnimCenterOut.setAnimationListener((Animation.AnimationListener)localObject);
      this.mAnimTopOut.setAnimationListener((Animation.AnimationListener)localObject);
      this.mAnimBottomOut.setAnimationListener((Animation.AnimationListener)localObject);
      this.mAnimFullOut.setAnimationListener((Animation.AnimationListener)localObject);
      localObject = new MarketingDialogFragment.MarketingDialog.4(this);
      this.mAnimCenterIn.setAnimationListener((Animation.AnimationListener)localObject);
      this.mAnimTopIn.setAnimationListener((Animation.AnimationListener)localObject);
      this.mAnimBottomIn.setAnimationListener((Animation.AnimationListener)localObject);
      this.mAnimFullIn.setAnimationListener((Animation.AnimationListener)localObject);
    }
    
    private void setupViews()
    {
      this.mRootLayout = new RelativeLayout(getContext());
      this.mRootLayout.setVisibility(4);
      this.mRootLayout.setContentDescription("amp_view");
      this.mRootLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
      this.mDialogLayout = new RelativeLayout(getContext());
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(13);
      this.mDialogLayout.setLayoutParams(localLayoutParams);
      this.mRootLayout.addView(this.mDialogLayout);
      this.mWebView = new MarketingWebView(getContext(), null);
      this.mWebView.setId(2);
      this.mDialogLayout.addView(this.mWebView);
      this.mBtnClose = new CloseButton(getContext(), null);
      this.mBtnClose.setOnClickListener(new MarketingDialogFragment.MarketingDialog.2(this));
      if (MarketingDialogFragment.dismissButtonLocation == Localytics.InAppMessageDismissButtonLocation.RIGHT)
      {
        localLayoutParams = (RelativeLayout.LayoutParams)this.mBtnClose.getLayoutParams();
        localLayoutParams.addRule(7, this.mWebView.getId());
        this.mBtnClose.setLayoutParams(localLayoutParams);
      }
      this.mDialogLayout.addView(this.mBtnClose);
      requestWindowFeature(1);
      setContentView(this.mRootLayout);
    }
    
    void dismissWithAnimation()
    {
      new Handler(Looper.getMainLooper()).post(new MarketingDialogFragment.MarketingDialog.5(this));
    }
    
    void enterWithAnimation()
    {
      String str = (String)MarketingDialogFragment.this.mMarketingMessage.get("location");
      if (str.equals("center"))
      {
        this.mRootLayout.startAnimation(this.mAnimCenterIn);
        return;
      }
      if (str.equals("full"))
      {
        this.mRootLayout.startAnimation(this.mAnimFullIn);
        return;
      }
      if (str.equals("top"))
      {
        this.mRootLayout.startAnimation(this.mAnimTopIn);
        return;
      }
      if (str.equals("bottom")) {
        this.mRootLayout.startAnimation(this.mAnimBottomIn);
      }
    }
    
    public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 4)
      {
        if (MarketingDialogFragment.this.mExitAnimatable.getAndSet(false)) {
          dismissWithAnimation();
        }
        return true;
      }
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    
    protected void onStop()
    {
      if (this.mBtnClose != null) {
        this.mBtnClose.release();
      }
      super.onStop();
    }
    
    final class CloseButton
      extends View
    {
      private Bitmap mBitmap;
      private final float mCenterX;
      private final float mCenterY;
      private final float mInnerRadius;
      private final float mOffset;
      private final Paint mPaint;
      private final float mRadius;
      private final Paint mShadowInnerPaint;
      private final Paint mShadowOuterPaint;
      private final float mStrokeWidth;
      
      @TargetApi(11)
      CloseButton(Context paramContext, AttributeSet paramAttributeSet)
      {
        super(paramAttributeSet);
        setId(1);
        setContentDescription("close_button");
        if (DatapointHelper.getApiLevel() >= 14) {
          setLayerType(1, null);
        }
        float f2 = getResources().getDisplayMetrics().density;
        this.mCenterX = (13.0F * f2);
        this.mCenterY = (13.0F * f2);
        this.mRadius = (13.0F * f2);
        this.mOffset = (5.0F * f2);
        this.mStrokeWidth = (2.5F * f2);
        this.mInnerRadius = (this.mRadius - this.mStrokeWidth * 0.5F);
        this.mPaint = new Paint(1);
        this.mShadowInnerPaint = new Paint(1);
        this.mShadowInnerPaint.setMaskFilter(new BlurMaskFilter(this.mRadius - f2, BlurMaskFilter.Blur.INNER));
        this.mShadowOuterPaint = new Paint(1);
        this.mShadowOuterPaint.setMaskFilter(new BlurMaskFilter(2.0F * f2, BlurMaskFilter.Blur.OUTER));
        if (MarketingDialogFragment.sDismissButtonImage == null) {
          f1 = 30.0F;
        } else {
          f1 = 40.0F;
        }
        float f1 = f1 * f2 + 0.5F;
        setLayoutParams(new RelativeLayout.LayoutParams((int)f1, (int)f1));
        this.mBitmap = Bitmap.createBitmap((int)(26.0F * f2 + 0.5F), (int)(26.0F * f2 + 0.5F), Bitmap.Config.ARGB_8888);
        this$1 = new Canvas(this.mBitmap);
        this.mPaint.setColor(-16777216);
        this.mPaint.setStyle(Paint.Style.FILL);
        MarketingDialogFragment.MarketingDialog.this.drawCircle(this.mCenterX, this.mCenterY, this.mRadius, this.mPaint);
        this.mPaint.setColor(-1);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.mStrokeWidth);
        MarketingDialogFragment.MarketingDialog.this.drawCircle(this.mCenterX, this.mCenterY, this.mInnerRadius, this.mPaint);
        this.mPaint.setStrokeWidth(4.5F * f2);
        MarketingDialogFragment.MarketingDialog.this.drawLine(this.mCenterX - this.mOffset, this.mCenterY - this.mOffset, this.mCenterX + this.mOffset, this.mCenterY + this.mOffset, this.mPaint);
        MarketingDialogFragment.MarketingDialog.this.drawLine(this.mCenterX - this.mOffset, this.mCenterY + this.mOffset, this.mCenterX + this.mOffset, this.mCenterY - this.mOffset, this.mPaint);
      }
      
      protected void onDraw(Canvas paramCanvas)
      {
        super.onDraw(paramCanvas);
        float f3 = getResources().getDisplayMetrics().density;
        Bitmap localBitmap;
        float f1;
        if (MarketingDialogFragment.sDismissButtonImage != null)
        {
          localBitmap = MarketingDialogFragment.sDismissButtonImage;
          f1 = (localBitmap.getHeight() - localBitmap.getWidth()) / 2.0F;
        }
        else if (this.mBitmap != null)
        {
          float f2;
          if (MarketingDialogFragment.dismissButtonLocation == Localytics.InAppMessageDismissButtonLocation.LEFT)
          {
            f1 = 0.0F;
            f2 = f3;
          }
          else
          {
            f1 = 4.0F * f3;
            f2 = 3.0F * f3;
          }
          paramCanvas.drawCircle(this.mCenterX + f2, this.mCenterY + f3, this.mRadius - f3, this.mShadowInnerPaint);
          paramCanvas.drawCircle(this.mCenterX + f2, this.mCenterY + f3, this.mRadius - f3, this.mShadowOuterPaint);
          localBitmap = this.mBitmap;
        }
        else
        {
          return;
        }
        paramCanvas.drawBitmap(localBitmap, f1, 0.0F, this.mPaint);
      }
      
      public void release()
      {
        if (this.mBitmap != null)
        {
          this.mBitmap.recycle();
          this.mBitmap = null;
        }
      }
    }
    
    final class MarketingWebView
      extends WebView
    {
      @SuppressLint({"SetJavaScriptEnabled"})
      @TargetApi(11)
      MarketingWebView(Context paramContext, AttributeSet paramAttributeSet)
      {
        super(paramAttributeSet);
        if (DatapointHelper.getApiLevel() >= 19) {
          setLayerType(1, null);
        }
        paramContext = new LinearLayout.LayoutParams(-1, -1);
        paramContext.gravity = 17;
        setLayoutParams(paramContext);
        setBackgroundColor(0);
        setInitialScale(1);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setWebViewClient(new MarketingWebViewClient(MarketingDialogFragment.this.getActivity()));
        paramContext = getSettings();
        paramContext.setJavaScriptEnabled(true);
        addJavascriptInterface(MarketingDialogFragment.this.mJavaScriptClient, "localytics");
        paramContext.setUseWideViewPort(true);
      }
      
      final class MarketingWebViewClient
        extends WebViewClient
      {
        private final Activity mActivity;
        
        MarketingWebViewClient(Activity paramActivity)
        {
          this.mActivity = paramActivity;
        }
        
        public void onPageFinished(WebView paramWebView, String paramString)
        {
          int i;
          if (((String)MarketingDialogFragment.this.mMarketingMessage.get("location")).equals("center")) {
            i = (int)(MarketingDialogFragment.MarketingDialog.this.mMetrics.density * 10.0F + 0.5F) << 1;
          } else {
            i = 0;
          }
          int j = Math.min(MarketingDialogFragment.MarketingDialog.this.mMetrics.widthPixels, MarketingDialogFragment.MarketingDialog.this.mMetrics.heightPixels);
          int k = Math.max(MarketingDialogFragment.MarketingDialog.this.mMetrics.widthPixels, MarketingDialogFragment.MarketingDialog.this.mMetrics.heightPixels);
          paramWebView.loadUrl(String.format("javascript:(function() {  var viewportNode = document.createElement('meta');  viewportNode.name    = 'viewport';  viewportNode.content = 'width=%f, height=%f, user-scalable=no, minimum-scale=.25, maximum-scale=1';  viewportNode.id      = 'metatag';  document.getElementsByTagName('head')[0].appendChild(viewportNode);})()", new Object[] { Float.valueOf(Math.min(j - i, (int)(MarketingDialogFragment.MarketingDialog.this.mWidth * MarketingDialogFragment.MarketingDialog.this.mMetrics.density + 0.5F)) / MarketingDialogFragment.MarketingDialog.this.mMetrics.density), Float.valueOf(Math.min(k - i, (int)(MarketingDialogFragment.MarketingDialog.this.mHeight * MarketingDialogFragment.MarketingDialog.this.mMetrics.density + 0.5F)) / MarketingDialogFragment.MarketingDialog.this.mMetrics.density) }));
          paramWebView.loadUrl(MarketingDialogFragment.this.mJavaScriptClient.getJsGlueCode());
          MarketingDialogFragment.MarketingDialog.this.mRootLayout.setVisibility(0);
          if (MarketingDialogFragment.this.mEnterAnimatable.getAndSet(false)) {
            MarketingDialogFragment.MarketingDialog.this.enterWithAnimation();
          }
        }
        
        public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
        {
          return MarketingDialogFragment.this.handleUrl(paramString, this.mActivity);
        }
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingDialogFragment
 * JD-Core Version:    0.7.0.1
 */