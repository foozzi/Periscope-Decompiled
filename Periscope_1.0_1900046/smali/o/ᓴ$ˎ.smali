.class Lo/ᓴ$ˎ;
.super Lo/ۃ;
.source ""

# interfaces
.implements Lo/ᖦ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᓴ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ce"
.end annotation


# instance fields
.field private final Ł:[F

.field final synthetic ﾓ:Lo/ᓴ;


# direct methods
.method public constructor <init>(Lo/ᓴ;Landroid/content/Context;)V
    .locals 2

    .line 587
    iput-object p1, p0, Lo/ᓴ$ˎ;->ﾓ:Lo/ᓴ;

    .line 588
    sget v0, Lo/ڊ$if;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Lo/ۃ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 585
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lo/ᓴ$ˎ;->Ł:[F

    .line 590
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ᓴ$ˎ;->setClickable(Z)V

    .line 591
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ᓴ$ˎ;->setFocusable(Z)V

    .line 592
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ᓴ$ˎ;->setVisibility(I)V

    .line 593
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ᓴ$ˎ;->setEnabled(Z)V

    .line 595
    new-instance v0, Lo/ᔥ;

    invoke-direct {v0, p0, p0, p1}, Lo/ᔥ;-><init>(Lo/ᓴ$ˎ;Landroid/view/View;Lo/ᓴ;)V

    invoke-virtual {p0, v0}, Lo/ᓴ$ˎ;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 624
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    .line 628
    invoke-super {p0}, Lo/ۃ;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x1

    return v0

    .line 632
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ᓴ$ˎ;->playSoundEffect(I)V

    .line 633
    iget-object v0, p0, Lo/ᓴ$ˎ;->ﾓ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->showOverflowMenu()Z

    .line 634
    const/4 v0, 0x1

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 14

    .line 649
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-super {p0, p1, v0, v1, v2}, Lo/ۃ;->setFrame(IIII)Z

    move-result v4

    .line 652
    invoke-virtual {p0}, Lo/ᓴ$ˎ;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 653
    invoke-virtual {p0}, Lo/ᓴ$ˎ;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 654
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 655
    invoke-virtual {p0}, Lo/ᓴ$ˎ;->getWidth()I

    move-result v7

    .line 656
    invoke-virtual {p0}, Lo/ᓴ$ˎ;->getHeight()I

    move-result v8

    .line 657
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 658
    invoke-virtual {p0}, Lo/ᓴ$ˎ;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lo/ᓴ$ˎ;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 659
    invoke-virtual {p0}, Lo/ᓴ$ˎ;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lo/ᓴ$ˎ;->getPaddingBottom()I

    move-result v1

    sub-int v11, v0, v1

    .line 660
    add-int v0, v7, v10

    div-int/lit8 v12, v0, 0x2

    .line 661
    add-int v0, v8, v11

    div-int/lit8 v13, v0, 0x2

    .line 662
    sub-int v0, v12, v9

    sub-int v1, v13, v9

    add-int v2, v12, v9

    add-int v3, v13, v9

    invoke-static {v6, v0, v1, v2, v3}, Lo/ᐪ;->ˊ(Landroid/graphics/drawable/Drawable;IIII)V

    .line 666
    :cond_0
    return v4
.end method

.method public і()Z
    .locals 1

    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public ї()Z
    .locals 1

    .line 644
    const/4 v0, 0x0

    return v0
.end method
