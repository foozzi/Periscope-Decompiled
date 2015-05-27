.class final Lcom/localytics/android/TestModeListView$TestModeDialog;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/TestModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TestModeDialog"
.end annotation


# instance fields
.field private mAnimIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimOut:Landroid/view/animation/TranslateAnimation;

.field private mDialogLayout:Landroid/widget/RelativeLayout;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field final synthetic this$0:Lcom/localytics/android/TestModeListView;


# direct methods
.method public constructor <init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;I)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    .line 235
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 237
    invoke-direct {p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->setupViews()V

    .line 238
    invoke-direct {p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->createAnimations()V

    .line 239
    invoke-direct {p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->adjustLayout()V

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/TestModeListView$TestModeDialog;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/TestModeListView$TestModeDialog;)Landroid/widget/RelativeLayout;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private adjustLayout()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 380
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    .line 381
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v0}, Lcom/localytics/android/TestModeListView;->getActivity()Lo/ι;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lo/ι;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    move-object v2, v0

    .line 382
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 387
    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 388
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/view/Window;->setGravity(I)V

    .line 390
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 391
    const/4 v0, 0x0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 392
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 393
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 395
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$400(Lcom/localytics/android/TestModeListView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 401
    :cond_0
    const/16 v0, 0x400

    const/16 v1, 0x400

    invoke-virtual {v3, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 402
    return-void
.end method

.method private createAnimations()V
    .locals 9

    .line 355
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    .line 356
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 357
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    .line 358
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 359
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/localytics/android/TestModeListView$TestModeDialog$4;

    invoke-direct {v1, p0}, Lcom/localytics/android/TestModeListView$TestModeDialog$4;-><init>(Lcom/localytics/android/TestModeListView$TestModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 374
    return-void
.end method

.method private setupViews()V
    .locals 19

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v0}, Lcom/localytics/android/TestModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    .line 247
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 252
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 253
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 254
    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 255
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 256
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    const/16 v0, 0xff

    const/16 v1, 0x49

    const/16 v2, 0x49

    const/16 v3, 0x49

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 258
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v7

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, v7

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v7

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v3, v7

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 262
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 263
    const-string v0, "Close"

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 265
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    new-array v1, v1, [[I

    const/4 v2, 0x1

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x0

    new-array v2, v2, [I

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v5, 0x5b

    const/16 v6, 0xff

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v5, 0x5b

    const/16 v6, 0xff

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 266
    new-instance v0, Lcom/localytics/android/TestModeListView$TestModeDialog$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/localytics/android/TestModeListView$TestModeDialog$1;-><init>(Lcom/localytics/android/TestModeListView$TestModeDialog;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 283
    const/16 v0, 0x9

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 284
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 288
    new-instance v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 289
    const-string v0, "Localytics"

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 291
    const/4 v0, -0x1

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 293
    const/16 v0, 0xd

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 298
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 299
    const-string v0, "Menu"

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 301
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    new-array v1, v1, [[I

    const/4 v2, 0x1

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x0

    new-array v2, v2, [I

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v5, 0x5b

    const/16 v6, 0xff

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v5, 0x5b

    const/16 v6, 0xff

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 302
    new-instance v0, Lcom/localytics/android/TestModeListView$TestModeDialog$2;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/localytics/android/TestModeListView$TestModeDialog$2;-><init>(Lcom/localytics/android/TestModeListView$TestModeDialog;)V

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 315
    const/16 v0, 0xb

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 316
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 320
    new-instance v16, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 321
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v17

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 322
    move-object/from16 v0, v17

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 323
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 327
    new-instance v18, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-direct {v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$300(Lcom/localytics/android/TestModeListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    new-instance v0, Lcom/localytics/android/TestModeListView$TestModeDialog$3;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/localytics/android/TestModeListView$TestModeDialog$3;-><init>(Lcom/localytics/android/TestModeListView$TestModeDialog;)V

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 344
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 346
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/localytics/android/TestModeListView$TestModeDialog;->requestWindowFeature(I)Z

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/localytics/android/TestModeListView$TestModeDialog;->setContentView(Landroid/view/View;)V

    .line 348
    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009c
    .end array-data

    :array_2
    .array-data 4
        0x10100a7
    .end array-data

    :array_3
    .array-data 4
        0x101009c
    .end array-data
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 407
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 410
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    move-object v2, v0

    .line 413
    if-eqz v2, :cond_0

    .line 415
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 420
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
