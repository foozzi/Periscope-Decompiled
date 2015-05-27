.class public Lo/Υ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᓹ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u14f9<Lo/\uff8c;Lo/\u0138;>;"
    }
.end annotation


# instance fields
.field private final hT:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<Ljava/io/File;Lo/\u0138;>;"
        }
    .end annotation
.end field

.field private final hV:Lo/ﺪ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufeaa<Lo/\u0138;>;"
        }
    .end annotation
.end field

.field private final hW:Lo/ﭥ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufb65<Lo/\uff8c;>;"
        }
    .end annotation
.end field

.field private final lz:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<Lo/\uff8c;Lo/\u0138;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ᓹ;Lo/ᓹ;Lo/ი;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14f9<Lo/\uff8c;Landroid/graphics/Bitmap;>;Lo/\u14f9<Ljava/io/InputStream;Lo/\ufee0;>;Lo/\u10d8;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v3, Lo/ǰ;

    invoke-interface {p1}, Lo/ᓹ;->ｃ()Lo/ﺀ;

    move-result-object v0

    invoke-interface {p2}, Lo/ᓹ;->ｃ()Lo/ﺀ;

    move-result-object v1

    invoke-direct {v3, v0, v1, p3}, Lo/ǰ;-><init>(Lo/ﺀ;Lo/ﺀ;Lo/ი;)V

    .line 36
    new-instance v0, Lo/ﱠ;

    new-instance v1, Lo/ʇ;

    invoke-direct {v1, v3}, Lo/ʇ;-><init>(Lo/ﺀ;)V

    invoke-direct {v0, v1}, Lo/ﱠ;-><init>(Lo/ﺀ;)V

    iput-object v0, p0, Lo/Υ;->hT:Lo/ﺀ;

    .line 37
    iput-object v3, p0, Lo/Υ;->lz:Lo/ﺀ;

    .line 38
    new-instance v0, Lo/ɫ;

    invoke-interface {p1}, Lo/ᓹ;->ｪ()Lo/ﺪ;

    move-result-object v1

    invoke-interface {p2}, Lo/ᓹ;->ｪ()Lo/ﺪ;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ɫ;-><init>(Lo/ﺪ;Lo/ﺪ;)V

    iput-object v0, p0, Lo/Υ;->hV:Lo/ﺪ;

    .line 41
    invoke-interface {p1}, Lo/ᓹ;->ｩ()Lo/ﭥ;

    move-result-object v0

    iput-object v0, p0, Lo/Υ;->hW:Lo/ﭥ;

    .line 42
    return-void
.end method


# virtual methods
.method public ﻩ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Ljava/io/File;Lo/\u0138;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/Υ;->hT:Lo/ﺀ;

    return-object v0
.end method

.method public ｃ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Lo/\uff8c;Lo/\u0138;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lo/Υ;->lz:Lo/ﺀ;

    return-object v0
.end method

.method public ｩ()Lo/ﭥ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufb65<Lo/\uff8c;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lo/Υ;->hW:Lo/ﭥ;

    return-object v0
.end method

.method public ｪ()Lo/ﺪ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufeaa<Lo/\u0138;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lo/Υ;->hV:Lo/ﺪ;

    return-object v0
.end method
