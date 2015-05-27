.class Lo/ɪ;
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

    .line 874
    iput-object p1, p0, Lo/ɪ;->ғ:Lo/ﺩ;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    .line 877
    const/4 v2, 0x0

    .line 878
    const/4 v3, 0x0

    .line 879
    iget-object v0, p0, Lo/ɪ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ʽ(Lo/ﺩ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 880
    iget-object v0, p0, Lo/ɪ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ͺ(Lo/ﺩ;)F

    move-result v0

    iget-object v1, p0, Lo/ɪ;->ғ:Lo/ﺩ;

    iget v1, v1, Lo/ﺩ;->ĵ:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v3, v0

    goto :goto_0

    .line 882
    :cond_0
    iget-object v0, p0, Lo/ɪ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ͺ(Lo/ﺩ;)F

    move-result v0

    float-to-int v3, v0

    .line 884
    :goto_0
    iget-object v0, p0, Lo/ɪ;->ғ:Lo/ﺩ;

    iget v0, v0, Lo/ﺩ;->ﾅ:I

    iget-object v1, p0, Lo/ɪ;->ғ:Lo/ﺩ;

    iget v1, v1, Lo/ﺩ;->ﾅ:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int v2, v0, v1

    .line 885
    iget-object v0, p0, Lo/ɪ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ᐝ(Lo/ﺩ;)Lo/ר;

    move-result-object v0

    invoke-virtual {v0}, Lo/ר;->getTop()I

    move-result v0

    sub-int v4, v2, v0

    .line 886
    iget-object v0, p0, Lo/ɪ;->ғ:Lo/ﺩ;

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Lo/ﺩ;->ˊ(Lo/ﺩ;IZ)V

    .line 887
    iget-object v0, p0, Lo/ɪ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ˋ(Lo/ﺩ;)Lo/ᒃ;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lo/ᒃ;->ι(F)V

    .line 888
    return-void
.end method
