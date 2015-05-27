.class public Lo/ẍ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᓹ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u14f9<Lo/\uff8c;Landroid/graphics/Bitmap;>;"
    }
.end annotation


# instance fields
.field private final hT:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<Ljava/io/File;Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field

.field private final hV:Lo/ﺪ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufeaa<Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field

.field private final ks:Lo/ẋ;

.field private final kt:Lo/ﾍ;


# direct methods
.method public constructor <init>(Lo/ᓹ;Lo/ᓹ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14f9<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;Lo/\u14f9<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Lo/ᓹ;->ｪ()Lo/ﺪ;

    move-result-object v0

    iput-object v0, p0, Lo/ẍ;->hV:Lo/ﺪ;

    .line 29
    new-instance v0, Lo/ﾍ;

    invoke-interface {p1}, Lo/ᓹ;->ｩ()Lo/ﭥ;

    move-result-object v1

    invoke-interface {p2}, Lo/ᓹ;->ｩ()Lo/ﭥ;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ﾍ;-><init>(Lo/ﭥ;Lo/ﭥ;)V

    iput-object v0, p0, Lo/ẍ;->kt:Lo/ﾍ;

    .line 31
    invoke-interface {p1}, Lo/ᓹ;->ﻩ()Lo/ﺀ;

    move-result-object v0

    iput-object v0, p0, Lo/ẍ;->hT:Lo/ﺀ;

    .line 32
    new-instance v0, Lo/ẋ;

    invoke-interface {p1}, Lo/ᓹ;->ｃ()Lo/ﺀ;

    move-result-object v1

    invoke-interface {p2}, Lo/ᓹ;->ｃ()Lo/ﺀ;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ẋ;-><init>(Lo/ﺀ;Lo/ﺀ;)V

    iput-object v0, p0, Lo/ẍ;->ks:Lo/ẋ;

    .line 34
    return-void
.end method


# virtual methods
.method public ﻩ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Ljava/io/File;Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lo/ẍ;->hT:Lo/ﺀ;

    return-object v0
.end method

.method public ｃ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Lo/\uff8c;Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lo/ẍ;->ks:Lo/ẋ;

    return-object v0
.end method

.method public ｩ()Lo/ﭥ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufb65<Lo/\uff8c;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lo/ẍ;->kt:Lo/ﾍ;

    return-object v0
.end method

.method public ｪ()Lo/ﺪ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufeaa<Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/ẍ;->hV:Lo/ﺪ;

    return-object v0
.end method
