.class Lo/ɿ;
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

    .line 913
    iput-object p1, p0, Lo/ɿ;->ғ:Lo/ﺩ;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 916
    iget-object v0, p0, Lo/ɿ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ι(Lo/ﺩ;)F

    move-result v0

    iget-object v1, p0, Lo/ɿ;->ғ:Lo/ﺩ;

    invoke-static {v1}, Lo/ﺩ;->ι(Lo/ﺩ;)F

    move-result v1

    neg-float v1, v1

    mul-float/2addr v1, p1

    add-float v2, v0, v1

    .line 917
    iget-object v0, p0, Lo/ɿ;->ғ:Lo/ﺩ;

    invoke-static {v0, v2}, Lo/ﺩ;->ˊ(Lo/ﺩ;F)V

    .line 918
    iget-object v0, p0, Lo/ɿ;->ғ:Lo/ﺩ;

    invoke-static {v0, p1}, Lo/ﺩ;->ˋ(Lo/ﺩ;F)V

    .line 919
    return-void
.end method
