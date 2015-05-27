.class public Lo/ᵦ;
.super Lo/冫;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u51ab<Lo/\u1d5d;>;"
    }
.end annotation


# instance fields
.field private final eD:Lo/ი;


# direct methods
.method public constructor <init>(Lo/ᵝ;Lo/ი;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/冫;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iput-object p2, p0, Lo/ᵦ;->eD:Lo/ი;

    .line 16
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 20
    iget-object v0, p0, Lo/ᵦ;->kB:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/ᵝ;

    invoke-virtual {v0}, Lo/ᵝ;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lo/ﾕ;->ˉ(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 25
    iget-object v0, p0, Lo/ᵦ;->eD:Lo/ი;

    iget-object v1, p0, Lo/ᵦ;->kB:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lo/ᵝ;

    invoke-virtual {v1}, Lo/ᵝ;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ი;->ʽ(Landroid/graphics/Bitmap;)Z

    .line 26
    return-void
.end method
