.class Lo/ŀ$if;
.super Lo/ܙ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ŀ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private ᴠ:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 341
    invoke-direct {p0, p1}, Lo/ܙ;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ŀ$if;->ᴠ:Z

    .line 343
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 359
    iget-boolean v0, p0, Lo/ŀ$if;->ᴠ:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-super {p0, p1}, Lo/ܙ;->draw(Landroid/graphics/Canvas;)V

    .line 362
    :cond_0
    return-void
.end method

.method setEnabled(Z)V
    .locals 0

    .line 346
    iput-boolean p1, p0, Lo/ŀ$if;->ᴠ:Z

    .line 347
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 366
    iget-boolean v0, p0, Lo/ŀ$if;->ᴠ:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-super {p0, p1, p2}, Lo/ܙ;->setHotspot(FF)V

    .line 369
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 373
    iget-boolean v0, p0, Lo/ŀ$if;->ᴠ:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-super {p0, p1, p2, p3, p4}, Lo/ܙ;->setHotspotBounds(IIII)V

    .line 376
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lo/ŀ$if;->ᴠ:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-super {p0, p1}, Lo/ܙ;->setState([I)Z

    move-result v0

    return v0

    .line 354
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 380
    iget-boolean v0, p0, Lo/ŀ$if;->ᴠ:Z

    if-eqz v0, :cond_0

    .line 381
    invoke-super {p0, p1, p2}, Lo/ܙ;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 383
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
