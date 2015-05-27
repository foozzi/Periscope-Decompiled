.class Lo/ᓒ;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ๆ:Lo/ᒃ$ˊ;

.field final synthetic Ꭻ:Lo/ᒃ;


# direct methods
.method constructor <init>(Lo/ᒃ;Lo/ᒃ$ˊ;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lo/ᓒ;->Ꭻ:Lo/ᒃ;

    iput-object p2, p0, Lo/ᓒ;->ๆ:Lo/ᒃ$ˊ;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 15

    .line 314
    iget-object v0, p0, Lo/ᓒ;->Ꭻ:Lo/ᒃ;

    iget-boolean v0, v0, Lo/ᒃ;->จ:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lo/ᓒ;->Ꭻ:Lo/ᒃ;

    iget-object v1, p0, Lo/ᓒ;->ๆ:Lo/ᒃ$ˊ;

    move/from16 v2, p1

    invoke-static {v0, v2, v1}, Lo/ᒃ;->ˊ(Lo/ᒃ;FLo/ᒃ$ˊ;)V

    goto/16 :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lo/ᓒ;->ๆ:Lo/ᒃ$ˊ;

    invoke-virtual {v0}, Lo/ᒃ$ˊ;->getStrokeWidth()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lo/ᓒ;->ๆ:Lo/ᒃ$ˊ;

    invoke-virtual {v2}, Lo/ᒃ$ˊ;->ˢ()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v6, v0

    .line 322
    iget-object v0, p0, Lo/ᓒ;->ๆ:Lo/ᒃ$ˊ;

    invoke-virtual {v0}, Lo/ᒃ$ˊ;->ˀ()F

    move-result v7

    .line 323
    iget-object v0, p0, Lo/ᓒ;->ๆ:Lo/ᒃ$ˊ;

    invoke-virtual {v0}, Lo/ᒃ$ˊ;->ʸ()F

    move-result v8

    .line 324
    iget-object v0, p0, Lo/ᓒ;->ๆ:Lo/ᒃ$ˊ;

    invoke-virtual {v0}, Lo/ᒃ$ˊ;->ˤ()F

    move-result v9

    .line 328
    const v0, 0x3f4ccccd    # 0.8f

    sub-float v10, v0, v6

    .line 329
    invoke-static {}, Lo/ᒃ;->ﹸ()Landroid/view/animation/Interpolator;

    move-result-object v0

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v10

    add-float v11, v7, v0

    .line 331
    iget-object v0, p0, Lo/ᓒ;->ๆ:Lo/ᒃ$ˊ;

    invoke-virtual {v0, v11}, Lo/ᒃ$ˊ;->ˈ(F)V

    .line 333
    invoke-static {}, Lo/ᒃ;->ﹾ()Landroid/view/animation/Interpolator;

    move-result-object v0

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    add-float v12, v8, v0

    .line 335
    iget-object v0, p0, Lo/ᓒ;->ๆ:Lo/ᒃ$ˊ;

    invoke-virtual {v0, v12}, Lo/ᒃ$ˊ;->ʿ(F)V

    .line 337
    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v0, v0, p1

    add-float v13, v9, v0

    .line 338
    iget-object v0, p0, Lo/ᓒ;->ๆ:Lo/ᒃ$ˊ;

    invoke-virtual {v0, v13}, Lo/ᒃ$ˊ;->setRotation(F)V

    .line 340
    const/high16 v0, 0x43100000    # 144.0f

    mul-float v0, v0, p1

    iget-object v1, p0, Lo/ᓒ;->Ꭻ:Lo/ᒃ;

    invoke-static {v1}, Lo/ᒃ;->ˊ(Lo/ᒃ;)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x44340000    # 720.0f

    mul-float/2addr v1, v2

    add-float v14, v0, v1

    .line 342
    iget-object v0, p0, Lo/ᓒ;->Ꭻ:Lo/ᒃ;

    invoke-virtual {v0, v14}, Lo/ᒃ;->setRotation(F)V

    .line 344
    :goto_0
    return-void
.end method
