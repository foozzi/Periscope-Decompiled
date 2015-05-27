.class Lo/Ȉ;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ғ:Lo/ﺩ;


# direct methods
.method constructor <init>(Lo/ﺩ;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lo/Ȉ;->ғ:Lo/ﺩ;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 411
    iget-object v0, p0, Lo/Ȉ;->ғ:Lo/ﺩ;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lo/ﺩ;->ˊ(Lo/ﺩ;F)V

    .line 412
    return-void
.end method
