.class Lo/ゝ;
.super Lo/Ị;
.source ""


# direct methods
.method public constructor <init>(Lo/ー;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lo/Ị;-><init>(Lo/ー;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lo/ゝ;->ƒ:Lo/ー;

    iget-boolean v0, v0, Lo/ー;->ʢ:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lo/ゝ;->ƒ:Lo/ー;

    iget-object v0, v0, Lo/ー;->ʡ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lo/ゝ;->ƒ:Lo/ー;

    iget-object v0, v0, Lo/ー;->ʡ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lo/ゝ;->ƒ:Lo/ー;

    iget-object v0, v0, Lo/ー;->ɬ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lo/ゝ;->ƒ:Lo/ー;

    iget-object v0, v0, Lo/ー;->ɬ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 25
    :cond_1
    :goto_0
    return-void
.end method
