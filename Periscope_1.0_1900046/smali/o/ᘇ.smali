.class public abstract Lo/ᘇ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺭ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufead<Landroid/graphics/Bitmap;>;"
    }
.end annotation


# instance fields
.field private eD:Lo/ი;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-static {p1}, Lo/ᓲ;->ˉ(Landroid/content/Context;)Lo/ᓲ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᓲ;->Ꮀ()Lo/ი;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ᘇ;-><init>(Lo/ი;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lo/ი;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lo/ᘇ;->eD:Lo/ი;

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract ˊ(Lo/ი;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public final ˊ(Lo/ڔ;II)Lo/ڔ;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<Landroid/graphics/Bitmap;>;II)Lo/\u0694<Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 47
    invoke-static {p2, p3}, Lo/ﾕ;->ᵀ(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot apply transformation on width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v0

    .line 52
    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, p2

    .line 53
    :goto_0
    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, p3

    .line 54
    :goto_1
    iget-object v0, p0, Lo/ᘇ;->eD:Lo/ი;

    invoke-virtual {p0, v0, v3, v4, v5}, Lo/ᘇ;->ˊ(Lo/ი;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 57
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    move-object v7, p1

    goto :goto_2

    .line 60
    :cond_3
    iget-object v0, p0, Lo/ᘇ;->eD:Lo/ი;

    invoke-static {v6, v0}, Lo/ᖟ;->ˊ(Landroid/graphics/Bitmap;Lo/ი;)Lo/ᖟ;

    move-result-object v7

    .line 63
    :goto_2
    return-object v7
.end method
