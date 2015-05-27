.class Lo/ȋ;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ғ:Lo/ﺩ;

.field final synthetic ҭ:I

.field final synthetic Ү:I


# direct methods
.method constructor <init>(Lo/ﺩ;II)V
    .locals 0

    .line 434
    iput-object p1, p0, Lo/ȋ;->ғ:Lo/ﺩ;

    iput p2, p0, Lo/ȋ;->ҭ:I

    iput p3, p0, Lo/ȋ;->Ү:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .line 437
    iget-object v0, p0, Lo/ȋ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ˋ(Lo/ﺩ;)Lo/ᒃ;

    move-result-object v0

    iget v1, p0, Lo/ȋ;->ҭ:I

    int-to-float v1, v1

    iget v2, p0, Lo/ȋ;->Ү:I

    iget v3, p0, Lo/ȋ;->ҭ:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lo/ᒃ;->setAlpha(I)V

    .line 440
    return-void
.end method
