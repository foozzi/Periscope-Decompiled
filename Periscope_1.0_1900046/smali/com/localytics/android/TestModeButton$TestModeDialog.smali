.class final Lcom/localytics/android/TestModeButton$TestModeDialog;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/TestModeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TestModeDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/TestModeButton$TestModeDialog$Button;
    }
.end annotation


# static fields
.field private static final X_OFFSET:I = 0x0

.field private static final Y_OFFSET:I = 0x55


# instance fields
.field private mAnimIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimOut:Landroid/view/animation/TranslateAnimation;

.field private mDialogLayout:Landroid/widget/RelativeLayout;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field final synthetic this$0:Lcom/localytics/android/TestModeButton;


# direct methods
.method public constructor <init>(Lcom/localytics/android/TestModeButton;Landroid/content/Context;I)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->this$0:Lcom/localytics/android/TestModeButton;

    .line 230
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 232
    invoke-direct {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->setupViews()V

    .line 233
    invoke-direct {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->createAnimations()V

    .line 234
    invoke-direct {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->adjustLayout()V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/TestModeButton$TestModeDialog;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/TestModeButton$TestModeDialog;)Landroid/widget/RelativeLayout;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private adjustLayout()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 299
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    .line 300
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->this$0:Lcom/localytics/android/TestModeButton;

    invoke-virtual {v0}, Lcom/localytics/android/TestModeButton;->getActivity()Lo/ι;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lo/ι;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    move-object v3, v0

    .line 301
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 306
    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 307
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    const/16 v0, 0x33

    invoke-virtual {v4, v0}, Landroid/view/Window;->setGravity(I)V

    .line 309
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 310
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 311
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    const/high16 v2, 0x42aa0000    # 85.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 312
    const/4 v0, 0x0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 313
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 314
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 315
    const/16 v0, 0x20

    const/16 v1, 0x20

    invoke-virtual {v4, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 317
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->this$0:Lcom/localytics/android/TestModeButton;

    # getter for: Lcom/localytics/android/TestModeButton;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/localytics/android/TestModeButton;->access$300(Lcom/localytics/android/TestModeButton;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 323
    :cond_0
    const/16 v0, 0x400

    const/16 v1, 0x400

    invoke-virtual {v4, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 324
    return-void
.end method

.method private createAnimations()V
    .locals 9

    .line 274
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    .line 275
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 276
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    .line 277
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 278
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/localytics/android/TestModeButton$TestModeDialog$2;

    invoke-direct {v1, p0}, Lcom/localytics/android/TestModeButton$TestModeDialog$2;-><init>(Lcom/localytics/android/TestModeButton$TestModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 293
    return-void
.end method

.method private setupViews()V
    .locals 4

    .line 240
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    .line 241
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v3, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;

    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v3, p0, v0, v1}, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;-><init>(Lcom/localytics/android/TestModeButton$TestModeDialog;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    new-instance v0, Lcom/localytics/android/TestModeButton$TestModeDialog$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/TestModeButton$TestModeDialog$1;-><init>(Lcom/localytics/android/TestModeButton$TestModeDialog;)V

    invoke-virtual {v3, v0}, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->requestWindowFeature(I)Z

    .line 266
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->setContentView(Landroid/view/View;)V

    .line 267
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 329
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/localytics/android/Constants;->setTestModeEnabled(Z)V

    .line 334
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method