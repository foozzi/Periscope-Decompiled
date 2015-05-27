.class public Lo/ｃ;
.super Lo/冫;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u51ab<Lo/\ufee0;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/ﻠ;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lo/冫;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .line 16
    iget-object v0, p0, Lo/ｃ;->kB:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/ﻠ;

    invoke-virtual {v0}, Lo/ﻠ;->getData()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lo/ｃ;->kB:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lo/ﻠ;

    invoke-virtual {v1}, Lo/ﻠ;->ʇ()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lo/ﾕ;->ˉ(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 21
    iget-object v0, p0, Lo/ｃ;->kB:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/ﻠ;

    invoke-virtual {v0}, Lo/ﻠ;->stop()V

    .line 22
    iget-object v0, p0, Lo/ｃ;->kB:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/ﻠ;

    invoke-virtual {v0}, Lo/ﻠ;->recycle()V

    .line 23
    return-void
.end method
