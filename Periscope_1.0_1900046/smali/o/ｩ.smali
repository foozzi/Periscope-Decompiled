.class public Lo/ｩ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺭ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufead<Lo/\ufee0;>;"
    }
.end annotation


# instance fields
.field private final eD:Lo/ი;

.field private final kT:Lo/ﺭ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufead<Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ﺭ;Lo/ი;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufead<Landroid/graphics/Bitmap;>;Lo/\u10d8;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/ｩ;->kT:Lo/ﺭ;

    .line 20
    iput-object p2, p0, Lo/ｩ;->eD:Lo/ი;

    .line 21
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/ｩ;->kT:Lo/ﺭ;

    invoke-interface {v0}, Lo/ﺭ;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/ڔ;II)Lo/ڔ;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<Lo/\ufee0;>;II)Lo/\u0694<Lo/\ufee0;>;"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﻠ;

    move-object v1, v0

    .line 31
    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﻠ;

    invoke-virtual {v0}, Lo/ﻠ;->ʇ()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 32
    new-instance v3, Lo/ᖟ;

    iget-object v0, p0, Lo/ｩ;->eD:Lo/ი;

    invoke-direct {v3, v2, v0}, Lo/ᖟ;-><init>(Landroid/graphics/Bitmap;Lo/ი;)V

    .line 33
    iget-object v0, p0, Lo/ｩ;->kT:Lo/ﺭ;

    invoke-interface {v0, v3, p2, p3}, Lo/ﺭ;->ˊ(Lo/ڔ;II)Lo/ڔ;

    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-interface {v3}, Lo/ڔ;->recycle()V

    .line 37
    :cond_0
    invoke-interface {v4}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 39
    iget-object v0, p0, Lo/ｩ;->kT:Lo/ﺭ;

    invoke-virtual {v1, v0, v5}, Lo/ﻠ;->ˊ(Lo/ﺭ;Landroid/graphics/Bitmap;)V

    .line 40
    return-object p1
.end method
