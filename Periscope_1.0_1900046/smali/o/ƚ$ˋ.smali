.class Lo/ƚ$ˋ;
.super Lo/ί;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ƚ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field private ŧ:Landroid/widget/ImageView;

.field private ν:Landroid/view/View;

.field final synthetic โ:Lo/ƚ;

.field private final ไ:[I

.field private Ⴡ:Lo/ذ$ˊ;

.field private ძ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lo/ƚ;Landroid/content/Context;Lo/ذ$ˊ;Z)V
    .locals 5

    .line 380
    iput-object p1, p0, Lo/ƚ$ˋ;->โ:Lo/ƚ;

    .line 381
    sget v0, Lo/ڊ$if;->actionBarTabStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Lo/ί;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 371
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lo/ƚ$ˋ;->ไ:[I

    .line 382
    iput-object p3, p0, Lo/ƚ$ˋ;->Ⴡ:Lo/ذ$ˊ;

    .line 384
    iget-object v0, p0, Lo/ƚ$ˋ;->ไ:[I

    sget v1, Lo/ڊ$if;->actionBarTabStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v2, v0, v1, v3}, Lo/ๅ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lo/ๅ;

    move-result-object v4

    .line 386
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lo/ๅ;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ƚ$ˋ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :cond_0
    invoke-virtual {v4}, Lo/ๅ;->recycle()V

    .line 391
    if-eqz p4, :cond_1

    .line 392
    const v0, 0x800013

    invoke-virtual {p0, v0}, Lo/ƚ$ˋ;->setGravity(I)V

    .line 395
    :cond_1
    invoke-virtual {p0}, Lo/ƚ$ˋ;->update()V

    .line 396
    return-void

    :array_0
    .array-data 4
        0x10100d4
    .end array-data
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 414
    invoke-super {p0, p1}, Lo/ί;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 416
    const-class v0, Lo/ذ$ˊ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 417
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 421
    invoke-super {p0, p1}, Lo/ί;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 425
    const-class v0, Lo/ذ$ˊ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 427
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    .line 515
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 516
    invoke-virtual {p0, v2}, Lo/ƚ$ˋ;->getLocationOnScreen([I)V

    .line 518
    invoke-virtual {p0}, Lo/ƚ$ˋ;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 519
    invoke-virtual {p0}, Lo/ƚ$ˋ;->getWidth()I

    move-result v4

    .line 520
    invoke-virtual {p0}, Lo/ƚ$ˋ;->getHeight()I

    move-result v5

    .line 521
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 523
    iget-object v0, p0, Lo/ƚ$ˋ;->Ⴡ:Lo/ذ$ˊ;

    invoke-virtual {v0}, Lo/ذ$ˊ;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 526
    const/4 v0, 0x0

    aget v0, v2, v0

    div-int/lit8 v1, v4, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v1, v6, 0x2

    sub-int/2addr v0, v1

    const/16 v1, 0x31

    invoke-virtual {v7, v1, v0, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 529
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 530
    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 2

    .line 431
    invoke-super {p0, p1, p2}, Lo/ί;->onMeasure(II)V

    .line 434
    iget-object v0, p0, Lo/ƚ$ˋ;->โ:Lo/ƚ;

    iget v0, v0, Lo/ƚ;->ป:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lo/ƚ$ˋ;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lo/ƚ$ˋ;->โ:Lo/ƚ;

    iget v1, v1, Lo/ƚ;->ป:I

    if-le v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lo/ƚ$ˋ;->โ:Lo/ƚ;

    iget v0, v0, Lo/ƚ;->ป:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Lo/ί;->onMeasure(II)V

    .line 438
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 405
    invoke-virtual {p0}, Lo/ƚ$ˋ;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 406
    :goto_0
    invoke-super {p0, p1}, Lo/ί;->setSelected(Z)V

    .line 407
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 408
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lo/ƚ$ˋ;->sendAccessibilityEvent(I)V

    .line 410
    :cond_1
    return-void
.end method

.method public update()V
    .locals 10

    .line 441
    iget-object v3, p0, Lo/ƚ$ˋ;->Ⴡ:Lo/ذ$ˊ;

    .line 442
    invoke-virtual {v3}, Lo/ذ$ˊ;->getCustomView()Landroid/view/View;

    move-result-object v4

    .line 443
    if-eqz v4, :cond_4

    .line 444
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 445
    if-eq v5, p0, :cond_1

    .line 446
    if-eqz v5, :cond_0

    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 447
    :cond_0
    invoke-virtual {p0, v4}, Lo/ƚ$ˋ;->addView(Landroid/view/View;)V

    .line 449
    :cond_1
    iput-object v4, p0, Lo/ƚ$ˋ;->ν:Landroid/view/View;

    .line 450
    iget-object v0, p0, Lo/ƚ$ˋ;->ძ:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ƚ$ˋ;->ძ:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    :cond_2
    iget-object v0, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    :cond_3
    goto/16 :goto_3

    .line 456
    :cond_4
    iget-object v0, p0, Lo/ƚ$ˋ;->ν:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 457
    iget-object v0, p0, Lo/ƚ$ˋ;->ν:Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/ƚ$ˋ;->removeView(Landroid/view/View;)V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ƚ$ˋ;->ν:Landroid/view/View;

    .line 461
    :cond_5
    invoke-virtual {v3}, Lo/ذ$ˊ;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 462
    invoke-virtual {v3}, Lo/ذ$ˊ;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 464
    if-eqz v5, :cond_7

    .line 465
    iget-object v0, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    .line 466
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lo/ƚ$ˋ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 467
    new-instance v8, Lo/ί$if;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v8, v0, v1}, Lo/ί$if;-><init>(II)V

    .line 469
    const/16 v0, 0x10

    iput v0, v8, Lo/ί$if;->gravity:I

    .line 470
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v7, v0}, Lo/ƚ$ˋ;->addView(Landroid/view/View;I)V

    .line 472
    iput-object v7, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    .line 474
    :cond_6
    iget-object v0, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget-object v0, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 476
    :cond_7
    iget-object v0, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 477
    iget-object v0, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    :cond_8
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    .line 482
    :goto_1
    if-eqz v7, :cond_b

    .line 483
    iget-object v0, p0, Lo/ƚ$ˋ;->ძ:Landroid/widget/TextView;

    if-nez v0, :cond_a

    .line 484
    new-instance v8, Lo/ᴿ;

    invoke-virtual {p0}, Lo/ƚ$ˋ;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/ڊ$if;->actionBarTabTextStyle:I

    const/4 v2, 0x0

    invoke-direct {v8, v0, v2, v1}, Lo/ᴿ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 486
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 487
    new-instance v9, Lo/ί$if;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Lo/ί$if;-><init>(II)V

    .line 489
    const/16 v0, 0x10

    iput v0, v9, Lo/ί$if;->gravity:I

    .line 490
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    invoke-virtual {p0, v8}, Lo/ƚ$ˋ;->addView(Landroid/view/View;)V

    .line 492
    iput-object v8, p0, Lo/ƚ$ˋ;->ძ:Landroid/widget/TextView;

    .line 494
    :cond_a
    iget-object v0, p0, Lo/ƚ$ˋ;->ძ:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lo/ƚ$ˋ;->ძ:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 496
    :cond_b
    iget-object v0, p0, Lo/ƚ$ˋ;->ძ:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 497
    iget-object v0, p0, Lo/ƚ$ˋ;->ძ:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lo/ƚ$ˋ;->ძ:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :cond_c
    :goto_2
    iget-object v0, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 502
    iget-object v0, p0, Lo/ƚ$ˋ;->ŧ:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lo/ذ$ˊ;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 505
    :cond_d
    if-nez v7, :cond_e

    invoke-virtual {v3}, Lo/ذ$ˊ;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 506
    invoke-virtual {p0, p0}, Lo/ƚ$ˋ;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    .line 508
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ƚ$ˋ;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ƚ$ˋ;->setLongClickable(Z)V

    .line 512
    :goto_3
    return-void
.end method

.method public ˊ(Lo/ذ$ˊ;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lo/ƚ$ˋ;->Ⴡ:Lo/ذ$ˊ;

    .line 400
    invoke-virtual {p0}, Lo/ƚ$ˋ;->update()V

    .line 401
    return-void
.end method

.method public Ị()Lo/ذ$ˊ;
    .locals 1

    .line 534
    iget-object v0, p0, Lo/ƚ$ˋ;->Ⴡ:Lo/ذ$ˊ;

    return-object v0
.end method
