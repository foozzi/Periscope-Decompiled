.class public final Lcom/localytics/android/MarketingDialogFragment;
.super Lo/ʼ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;
    }
.end annotation


# static fields
.field private static final AMP_DESCRIPTION:Ljava/lang/String; = "amp_view"

.field private static final CLOSE_BUTTON_DESCRIPTION:Ljava/lang/String; = "close_button"

.field private static final CLOSE_BUTTON_ID:I = 0x1

.field static final DIALOG_TAG:Ljava/lang/String; = "marketing_dialog"

.field private static final OPENING_EXTERNAL:I = 0x2

.field private static final OPENING_INTERNAL:I = 0x1

.field private static final PROTOCOL_UNMATCHED:I = -0x1

.field private static final PROTOCOL_UNRECOGNIZED:I = -0x2

.field private static final WEB_VIEW_ID:I = 0x2

.field private static dismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation; = null

.field private static sDismissButtonImage:Landroid/graphics/Bitmap; = null


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
        }
    .end annotation
.end field

.field private final mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExitAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;

.field private mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

.field private mMarketingMessage:Lcom/localytics/android/MarketingMessage;

.field private final mUploadedViewEvent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/MarketingDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;

    .line 100
    sget-object v0, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->LEFT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    sput-object v0, Lcom/localytics/android/MarketingDialogFragment;->dismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 129
    invoke-direct {p0}, Lo/ʼ;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mExitAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mUploadedViewEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/JavaScriptClient;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/localytics/android/MarketingDialogFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/graphics/Bitmap;
    .locals 1

    .line 62
    sget-object v0, Lcom/localytics/android/MarketingDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingMessage;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/localytics/android/MarketingDialogFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mExitAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .locals 1

    .line 62
    sget-object v0, Lcom/localytics/android/MarketingDialogFragment;->dismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/localytics/android/MarketingDialogFragment;)Ljava/util/Map;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static getInAppDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .locals 1

    .line 156
    sget-object v0, Lcom/localytics/android/MarketingDialogFragment;->dismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    return-object v0
.end method

.method private getValueByQueryKey(Ljava/lang/String;Ljava/net/URI;)Ljava/lang/String;
    .locals 10

    .line 542
    invoke-virtual {p2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 544
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 549
    :cond_1
    invoke-virtual {p2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[&]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 550
    move-object v4, v3

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 552
    const-string v0, "[=]"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 553
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 555
    array-length v0, v8

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 559
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, v8, v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 561
    :catch_0
    move-exception v9

    .line 563
    const/4 v0, 0x0

    return-object v0

    .line 550
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 569
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getValueByQueryKey(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 2

    .line 576
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/MarketingDialogFragment;->getValueByQueryKey(Ljava/lang/String;Ljava/net/URI;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 578
    :catch_0
    move-exception v1

    .line 580
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleCustomProtocolRequest(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 4

    .line 527
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 528
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 529
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 531
    const-string v0, "[In-app Nav Handler]: An app on this device is registered to handle this protocol scheme. Opening..."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 532
    const/high16 v0, 0x20000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 533
    invoke-virtual {p2, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 534
    const/4 v0, 0x2

    return v0

    .line 537
    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method private handleCustomProtocolRequest(Ljava/net/URL;Landroid/app/Activity;)I
    .locals 1

    .line 522
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/localytics/android/MarketingDialogFragment;->handleCustomProtocolRequest(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method private handleFileProtocolRequest(Ljava/net/URL;)I
    .locals 2

    .line 479
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    const/4 v0, -0x1

    return v0

    .line 484
    :cond_0
    const-string v0, "[In-app Nav Handler]: Displaying content from your local creatives."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method private handleHttpProtocolRequest(Ljava/net/URL;Landroid/app/Activity;)I
    .locals 8

    .line 491
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 492
    const-string v0, "http"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    const/4 v0, -0x1

    return v0

    .line 497
    :cond_0
    const-string v0, "[In-app Nav Handler]: Handling a request for an external HTTP address."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 500
    const-string v0, "ampExternalOpen"

    invoke-direct {p0, v0, p1}, Lcom/localytics/android/MarketingDialogFragment;->getValueByQueryKey(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    .line 501
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    const-string v0, "[In-app Nav Handler]: Query string hook [%s] set to true. Opening the URL in chrome"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ampExternalOpen"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 505
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 506
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 507
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 509
    invoke-virtual {p2, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 510
    const/4 v0, 0x2

    return v0

    .line 515
    :cond_1
    const-string v0, "[In-app Nav Handler]: Loading HTTP request inside the current in-app view"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 517
    const/4 v0, 0x1

    return v0
.end method

.method static newInstance()Lcom/localytics/android/MarketingDialogFragment;
    .locals 2

    .line 140
    new-instance v1, Lcom/localytics/android/MarketingDialogFragment;

    invoke-direct {v1}, Lcom/localytics/android/MarketingDialogFragment;-><init>()V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/localytics/android/MarketingDialogFragment;->setRetainInstance(Z)V

    .line 142
    return-object v1
.end method

.method static setDismissButtonImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 147
    sget-object v0, Lcom/localytics/android/MarketingDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 149
    sget-object v0, Lcom/localytics/android/MarketingDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    :cond_0
    sput-object p0, Lcom/localytics/android/MarketingDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;

    .line 152
    return-void
.end method

.method static setInAppDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V
    .locals 0

    .line 161
    sput-object p0, Lcom/localytics/android/MarketingDialogFragment;->dismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    .line 162
    return-void
.end method

.method private tagMarketingActionEventWithAction(Ljava/lang/String;)V
    .locals 10

    .line 256
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mUploadedViewEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "The in-app action for this message has already been set. Ignoring in-app Action: [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 259
    return-void

    .line 263
    :cond_0
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 264
    const-string v0, "ampAction"

    invoke-virtual {v4, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "ampCampaignId"

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;

    const-string v2, "campaign_id"

    invoke-virtual {v1, v2}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "ampCampaign"

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;

    const-string v2, "rule_name"

    invoke-virtual {v1, v2}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v0, "Schema Version - Client"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;

    const-string v1, "ab_test"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 270
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    const-string v0, "ampAB"

    invoke-virtual {v4, v0, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_1
    invoke-static {}, Lcom/localytics/android/Localytics;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mCallbacks:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mCallbacks:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    move-object v6, v0

    .line 281
    const/4 v0, 0x0

    if-eq v0, v6, :cond_2

    .line 283
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ampView"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v4, v0, v1

    invoke-virtual {v6, v0}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_2
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_4

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v9, v0

    .line 291
    const-string v0, "Key = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    goto :goto_0

    .line 293
    :cond_3
    const-string v0, "In-app event tagged successfully.\n   Attributes Dictionary = \n%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 297
    :cond_4
    return-void
.end method

.method private tagMarketingActionForURL(Ljava/net/URI;)V
    .locals 5

    .line 459
    const-string v0, "ampAction"

    invoke-direct {p0, v0, p1}, Lcom/localytics/android/MarketingDialogFragment;->getValueByQueryKey(Ljava/lang/String;Ljava/net/URI;)Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    const-string v0, "Attempting to tag event with custom in-app action. [Action: %s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 463
    invoke-direct {p0, v3}, Lcom/localytics/android/MarketingDialogFragment;->tagMarketingActionEventWithAction(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 470
    const-string v0, "file"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    const-string v0, "click"

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingDialogFragment;->tagMarketingActionEventWithAction(Ljava/lang/String;)V

    .line 475
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method dismissCampaign()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "X"

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingDialogFragment;->tagMarketingActionEventWithAction(Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismiss()V

    .line 174
    :cond_1
    return-void
.end method

.method handleUrl(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 9

    .line 391
    move-object v4, p1

    .line 393
    const-string v0, "[In-app Nav Handler]: Evaluating in-app URL:\n\tURL:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 395
    const/4 v5, 0x0

    .line 398
    const-string v0, "://"

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 404
    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingDialogFragment;->tagMarketingActionForURL(Ljava/net/URI;)V

    .line 410
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0, v6}, Lcom/localytics/android/MarketingDialogFragment;->handleFileProtocolRequest(Ljava/net/URL;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v5, v0

    if-lez v0, :cond_3

    .line 415
    const/4 v0, 0x2

    if-ne v5, v0, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 446
    :goto_0
    const/4 v0, 0x2

    if-ne v5, v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismissWithAnimation()V

    :cond_2
    return v7

    .line 419
    :cond_3
    :try_start_1
    invoke-direct {p0, v6, p2}, Lcom/localytics/android/MarketingDialogFragment;->handleHttpProtocolRequest(Ljava/net/URL;Landroid/app/Activity;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v5, v0

    if-lez v0, :cond_6

    .line 421
    const/4 v0, 0x2

    if-ne v5, v0, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 446
    :goto_1
    const/4 v0, 0x2

    if-ne v5, v0, :cond_5

    .line 448
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismissWithAnimation()V

    :cond_5
    return v7

    .line 425
    :cond_6
    :try_start_2
    invoke-direct {p0, v6, p2}, Lcom/localytics/android/MarketingDialogFragment;->handleCustomProtocolRequest(Ljava/net/URL;Landroid/app/Activity;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    move v5, v0

    if-lez v0, :cond_9

    .line 427
    const/4 v0, 0x2

    if-ne v5, v0, :cond_7

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    .line 446
    :goto_2
    const/4 v0, 0x2

    if-ne v5, v0, :cond_8

    .line 448
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismissWithAnimation()V

    :cond_8
    return v7

    .line 430
    :cond_9
    const-string v0, "[In-app Nav Handler]: Protocol handler scheme not recognized. Attempting to load the URL... [Scheme: %s]"

    const/4 v1, 0x1

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 446
    const/4 v0, 0x2

    if-ne v5, v0, :cond_e

    .line 448
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismissWithAnimation()V

    goto :goto_4

    .line 432
    :catch_0
    move-exception v6

    .line 435
    :try_start_4
    invoke-direct {p0, v4, p2}, Lcom/localytics/android/MarketingDialogFragment;->handleCustomProtocolRequest(Ljava/lang/String;Landroid/app/Activity;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    move v5, v0

    if-lez v0, :cond_c

    .line 437
    const/4 v0, 0x2

    if-ne v5, v0, :cond_a

    const/4 v7, 0x1

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    .line 446
    :goto_3
    const/4 v0, 0x2

    if-ne v5, v0, :cond_b

    .line 448
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismissWithAnimation()V

    :cond_b
    return v7

    .line 440
    :cond_c
    const-string v0, "[In-app Nav Handler]: Invalid url %s"

    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismissWithAnimation()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 446
    const/4 v0, 0x2

    if-ne v5, v0, :cond_e

    .line 448
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismissWithAnimation()V

    goto :goto_4

    .line 446
    :catchall_0
    move-exception v8

    const/4 v0, 0x2

    if-ne v5, v0, :cond_d

    .line 448
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismissWithAnimation()V

    :cond_d
    throw v8

    .line 453
    :cond_e
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 218
    const-string v0, "[InAppDialogFragment]: onActivityCreated"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 219
    invoke-super {p0, p1}, Lo/ʼ;->onActivityCreated(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 179
    const-string v0, "[InAppDialogFragment]: onAttach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 180
    invoke-super {p0, p1}, Lo/ʼ;->onAttach(Landroid/app/Activity;)V

    .line 181
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 193
    const-string v0, "[InAppDialogFragment]: onCreate"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 194
    invoke-super {p0, p1}, Lo/ʼ;->onCreate(Landroid/os/Bundle;)V

    .line 195
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 200
    const-string v0, "[InAppDialogFragment]: onCreateDialog"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 201
    new-instance v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment;->getActivity()Lo/ι;

    move-result-object v1

    const v2, 0x103000b

    invoke-direct {v0, p0, v1, v2}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;-><init>(Lcom/localytics/android/MarketingDialogFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 302
    const-string v0, "[InAppDialogFragment]: onCreateView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 303
    invoke-super {p0, p1, p2, p3}, Lo/ʼ;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .line 330
    const-string v0, "[InAppDialogFragment]: onDestroy"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mCallbacks:Ljava/util/Map;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mCallbacks:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    move-object v3, v0

    .line 334
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    .line 336
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {v3, v0}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    invoke-super {p0}, Lo/ʼ;->onDestroy()V

    .line 340
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 246
    const-string v0, "[InAppDialogFragment]: onDestroyView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 251
    :cond_0
    invoke-super {p0}, Lo/ʼ;->onDestroyView()V

    .line 252
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 186
    const-string v0, "[InAppDialogFragment]: onDetach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 187
    invoke-super {p0}, Lo/ʼ;->onDetach()V

    .line 188
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 207
    const-string v0, "[InAppDialogFragment]: onDismiss"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "X"

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingDialogFragment;->tagMarketingActionEventWithAction(Ljava/lang/String;)V

    .line 212
    :cond_0
    invoke-super {p0, p1}, Lo/ʼ;->onDismiss(Landroid/content/DialogInterface;)V

    .line 213
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 323
    const-string v0, "[InAppDialogFragment]: onPause"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 324
    invoke-super {p0}, Lo/ʼ;->onPause()V

    .line 325
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 316
    const-string v0, "[InAppDialogFragment]: onResume"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 317
    invoke-super {p0}, Lo/ʼ;->onResume()V

    .line 318
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 232
    const-string v0, "[InAppDialogFragment]: onSaveInstanceState"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 233
    invoke-super {p0, p1}, Lo/ʼ;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 225
    const-string v0, "[InAppDialogFragment]: onStart"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 226
    invoke-super {p0}, Lo/ʼ;->onStart()V

    .line 227
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 239
    const-string v0, "[InAppDialogFragment]: onStop"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 240
    invoke-super {p0}, Lo/ʼ;->onStop()V

    .line 241
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 309
    const-string v0, "[InAppDialogFragment]: onViewStateRestored"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 310
    invoke-super {p0, p1}, Lo/ʼ;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 311
    return-void
.end method

.method public setCallbacks(Ljava/util/Map;)Lcom/localytics/android/MarketingDialogFragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;)Lcom/localytics/android/MarketingDialogFragment;"
        }
    .end annotation

    .line 586
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment;->mCallbacks:Ljava/util/Map;

    .line 587
    return-object p0
.end method

.method setData(Lcom/localytics/android/MarketingMessage;)Lcom/localytics/android/MarketingDialogFragment;
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;

    .line 345
    return-object p0
.end method

.method setJavaScriptClient(Lcom/localytics/android/JavaScriptClient;)Lcom/localytics/android/MarketingDialogFragment;
    .locals 3

    .line 350
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;

    .line 351
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;

    invoke-virtual {v0}, Lcom/localytics/android/JavaScriptClient;->getCallbacks()Ljava/util/Map;

    move-result-object v2

    .line 353
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingDialogFragment$1;-><init>(Lcom/localytics/android/MarketingDialogFragment;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingDialogFragment$2;-><init>(Lcom/localytics/android/MarketingDialogFragment;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    return-object p0
.end method
