.class public Lo/〵;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᓹ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u14f9<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"
    }
.end annotation


# instance fields
.field private final kb:Lo/ᒫ;

.field private final ku:Lo/ノ;

.field private final kv:Lo/Ξ;

.field private final kw:Lo/ﱠ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufc60<Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ი;Lo/ﭝ;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lo/Ξ;

    invoke-direct {v0}, Lo/Ξ;-><init>()V

    iput-object v0, p0, Lo/〵;->kv:Lo/Ξ;

    .line 29
    new-instance v0, Lo/ノ;

    invoke-direct {v0, p1, p2}, Lo/ノ;-><init>(Lo/ი;Lo/ﭝ;)V

    iput-object v0, p0, Lo/〵;->ku:Lo/ノ;

    .line 30
    new-instance v0, Lo/ᒫ;

    invoke-direct {v0}, Lo/ᒫ;-><init>()V

    iput-object v0, p0, Lo/〵;->kb:Lo/ᒫ;

    .line 31
    new-instance v0, Lo/ﱠ;

    iget-object v1, p0, Lo/〵;->ku:Lo/ノ;

    invoke-direct {v0, v1}, Lo/ﱠ;-><init>(Lo/ﺀ;)V

    iput-object v0, p0, Lo/〵;->kw:Lo/ﱠ;

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
    iget-object v0, p0, Lo/〵;->kw:Lo/ﱠ;

    return-object v0
.end method

.method public ｃ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/〵;->ku:Lo/ノ;

    return-object v0
.end method

.method public ｩ()Lo/ﭥ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufb65<Ljava/io/InputStream;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/〵;->kv:Lo/Ξ;

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
    iget-object v0, p0, Lo/〵;->kb:Lo/ᒫ;

    return-object v0
.end method
