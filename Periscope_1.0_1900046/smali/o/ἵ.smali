.class public Lo/ἵ;
.super Lo/ῖ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u1fd6<Lo/\ufb3c;>;"
    }
.end annotation


# instance fields
.field private kL:I

.field private mM:Lo/לּ;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    .line 24
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lo/ἵ;-><init>(Landroid/widget/ImageView;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lo/ῖ;-><init>(Landroid/widget/ImageView;)V

    .line 38
    iput p2, p0, Lo/ἵ;->kL:I

    .line 39
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .line 85
    iget-object v0, p0, Lo/ἵ;->mM:Lo/לּ;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lo/ἵ;->mM:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->start()V

    .line 88
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/ἵ;->mM:Lo/לּ;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lo/ἵ;->mM:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->stop()V

    .line 95
    :cond_0
    return-void
.end method

.method public bridge synthetic ˊ(Ljava/lang/Object;Lo/ḟ;)V
    .locals 1

    .line 12
    move-object v0, p1

    check-cast v0, Lo/לּ;

    invoke-virtual {p0, v0, p2}, Lo/ἵ;->ˊ(Lo/לּ;Lo/ḟ;)V

    return-void
.end method

.method protected ˊ(Lo/לּ;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/ἵ;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public ˊ(Lo/לּ;Lo/ḟ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb3c;Lo/\u1e1f<-Lo/\ufb3c;>;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lo/לּ;->ﾃ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lo/ἵ;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lo/ἵ;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 60
    invoke-virtual {p1}, Lo/לּ;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lo/לּ;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 63
    new-instance v0, Lo/בּ;

    iget-object v1, p0, Lo/ἵ;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lo/בּ;-><init>(Lo/לּ;I)V

    move-object p1, v0

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ῖ;->ˊ(Ljava/lang/Object;Lo/ḟ;)V

    .line 67
    iput-object p1, p0, Lo/ἵ;->mM:Lo/לּ;

    .line 68
    iget v0, p0, Lo/ἵ;->kL:I

    invoke-virtual {p1, v0}, Lo/לּ;->ᑋ(I)V

    .line 69
    invoke-virtual {p1}, Lo/לּ;->start()V

    .line 70
    return-void
.end method

.method protected synthetic ᐩ(Ljava/lang/Object;)V
    .locals 1

    .line 12
    move-object v0, p1

    check-cast v0, Lo/לּ;

    invoke-virtual {p0, v0}, Lo/ἵ;->ˊ(Lo/לּ;)V

    return-void
.end method
