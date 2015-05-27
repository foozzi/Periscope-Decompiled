.class public Lo/ⅼ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ⅼ$ˎ;,
        Lo/ⅼ$ˋ;,
        Lo/ⅼ$ˊ;,
        Lo/ⅼ$if;
    }
.end annotation


# instance fields
.field 亠:Ljava/lang/Object;

.field 冫:Lo/ⅼ$if;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    .line 264
    new-instance v0, Lo/ⅼ$ˎ;

    invoke-direct {v0}, Lo/ⅼ$ˎ;-><init>()V

    iput-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    goto :goto_0

    .line 265
    :cond_0
    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    .line 266
    new-instance v0, Lo/ⅼ$ˋ;

    invoke-direct {v0}, Lo/ⅼ$ˋ;-><init>()V

    iput-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    goto :goto_0

    .line 268
    :cond_1
    new-instance v0, Lo/ⅼ$ˊ;

    invoke-direct {v0}, Lo/ⅼ$ˊ;-><init>()V

    iput-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    .line 270
    :goto_0
    iget-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    invoke-interface {v0, p2, p3}, Lo/ⅼ$if;->ˋ(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/ⅼ;->亠:Ljava/lang/Object;

    .line 271
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0, p1, p2}, Lo/ⅼ;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 256
    return-void
.end method

.method public static ˊ(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lo/ⅼ;
    .locals 1

    .line 250
    new-instance v0, Lo/ⅼ;

    invoke-direct {v0, p0, p1}, Lo/ⅼ;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public static ˎ(Landroid/content/Context;)Lo/ⅼ;
    .locals 1

    .line 246
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lo/ⅼ;->ˊ(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lo/ⅼ;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 2

    .line 430
    iget-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    iget-object v1, p0, Lo/ⅼ;->亠:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/ⅼ$if;->ﹶ(Ljava/lang/Object;)V

    .line 431
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 2

    .line 334
    iget-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    iget-object v1, p0, Lo/ⅼ;->亠:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/ⅼ$if;->ⁱ(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 10

    .line 393
    iget-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    iget-object v1, p0, Lo/ⅼ;->亠:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lo/ⅼ$if;->ˊ(Ljava/lang/Object;IIIIIIII)V

    .line 394
    return-void
.end method

.method public getCurrVelocity()F
    .locals 2

    .line 325
    iget-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    iget-object v1, p0, Lo/ⅼ;->亠:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/ⅼ$if;->ᵢ(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getCurrX()I
    .locals 2

    .line 288
    iget-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    iget-object v1, p0, Lo/ⅼ;->亠:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/ⅼ$if;->ᵎ(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 2

    .line 297
    iget-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    iget-object v1, p0, Lo/ⅼ;->亠:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/ⅼ$if;->ᵔ(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalX()I
    .locals 2

    .line 304
    iget-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    iget-object v1, p0, Lo/ⅼ;->亠:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/ⅼ$if;->ﹺ(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalY()I
    .locals 2

    .line 311
    iget-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    iget-object v1, p0, Lo/ⅼ;->亠:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/ⅼ$if;->ｰ(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .line 279
    iget-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    iget-object v1, p0, Lo/ⅼ;->亠:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/ⅼ$if;->י(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startScroll(IIIII)V
    .locals 7

    .line 369
    iget-object v0, p0, Lo/ⅼ;->冫:Lo/ⅼ$if;

    iget-object v1, p0, Lo/ⅼ;->亠:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lo/ⅼ$if;->ˊ(Ljava/lang/Object;IIIII)V

    .line 370
    return-void
.end method
