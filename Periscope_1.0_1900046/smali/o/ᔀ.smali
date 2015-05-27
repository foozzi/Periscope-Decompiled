.class public Lo/ᔀ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᔁ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u1501<TA;TT;TZ;TR;>;"
    }
.end annotation


# instance fields
.field private final ey:Lo/ɽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u027d<TA;TT;>;"
        }
    .end annotation
.end field

.field private final hg:Lo/ғ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0493<TZ;TR;>;"
        }
    .end annotation
.end field

.field private final md:Lo/ᓹ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14f9<TT;TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ɽ;Lo/ғ;Lo/ᓹ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u027d<TA;TT;>;Lo/\u0493<TZ;TR;>;Lo/\u14f9<TT;TZ;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ModelLoader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lo/ᔀ;->ey:Lo/ɽ;

    .line 32
    if-nez p2, :cond_1

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transcoder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    iput-object p2, p0, Lo/ᔀ;->hg:Lo/ғ;

    .line 37
    if-nez p3, :cond_2

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DataLoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    iput-object p3, p0, Lo/ᔀ;->md:Lo/ᓹ;

    .line 41
    return-void
.end method


# virtual methods
.method public Ꮠ()Lo/ɽ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u027d<TA;TT;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lo/ᔀ;->ey:Lo/ɽ;

    return-object v0
.end method

.method public ᐜ()Lo/ғ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0493<TZ;TR;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lo/ᔀ;->hg:Lo/ғ;

    return-object v0
.end method

.method public ﻩ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Ljava/io/File;TZ;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lo/ᔀ;->md:Lo/ᓹ;

    invoke-interface {v0}, Lo/ᓹ;->ﻩ()Lo/ﺀ;

    move-result-object v0

    return-object v0
.end method

.method public ｃ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<TT;TZ;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lo/ᔀ;->md:Lo/ᓹ;

    invoke-interface {v0}, Lo/ᓹ;->ｃ()Lo/ﺀ;

    move-result-object v0

    return-object v0
.end method

.method public ｩ()Lo/ﭥ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufb65<TT;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lo/ᔀ;->md:Lo/ᓹ;

    invoke-interface {v0}, Lo/ᓹ;->ｩ()Lo/ﭥ;

    move-result-object v0

    return-object v0
.end method

.method public ｪ()Lo/ﺪ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufeaa<TZ;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lo/ᔀ;->md:Lo/ᓹ;

    invoke-interface {v0}, Lo/ᓹ;->ｪ()Lo/ﺪ;

    move-result-object v0

    return-object v0
.end method
