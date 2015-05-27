.class public Lo/ᵍ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᓹ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u14f9<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
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

.field private final hW:Lo/ﭥ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufb65<Landroid/os/ParcelFileDescriptor;>;"
        }
    .end annotation
.end field

.field private final ka:Lo/ᵐ;

.field private final kb:Lo/ᒫ;


# direct methods
.method public constructor <init>(Lo/ი;Lo/ﭝ;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lo/ﱠ;

    new-instance v1, Lo/ノ;

    invoke-direct {v1, p1, p2}, Lo/ノ;-><init>(Lo/ი;Lo/ﭝ;)V

    invoke-direct {v0, v1}, Lo/ﱠ;-><init>(Lo/ﺀ;)V

    iput-object v0, p0, Lo/ᵍ;->hT:Lo/ﺀ;

    .line 29
    new-instance v0, Lo/ᵐ;

    invoke-direct {v0, p1, p2}, Lo/ᵐ;-><init>(Lo/ი;Lo/ﭝ;)V

    iput-object v0, p0, Lo/ᵍ;->ka:Lo/ᵐ;

    .line 30
    new-instance v0, Lo/ᒫ;

    invoke-direct {v0}, Lo/ᒫ;-><init>()V

    iput-object v0, p0, Lo/ᵍ;->kb:Lo/ᒫ;

    .line 31
    invoke-static {}, Lo/Ꭻ;->ﮅ()Lo/ﭥ;

    move-result-object v0

    iput-object v0, p0, Lo/ᵍ;->hW:Lo/ﭥ;

    .line 32
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

    .line 36
    iget-object v0, p0, Lo/ᵍ;->hT:Lo/ﺀ;

    return-object v0
.end method

.method public ｃ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/ᵍ;->ka:Lo/ᵐ;

    return-object v0
.end method

.method public ｩ()Lo/ﭥ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufb65<Landroid/os/ParcelFileDescriptor;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/ᵍ;->hW:Lo/ﭥ;

    return-object v0
.end method

.method public ｪ()Lo/ﺪ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufeaa<Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lo/ᵍ;->kb:Lo/ᒫ;

    return-object v0
.end method
