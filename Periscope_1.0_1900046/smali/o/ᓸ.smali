.class public Lo/ᓸ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lo/ᔁ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u1501<TA;TT;TZ;TR;>;Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private hT:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<Ljava/io/File;TZ;>;"
        }
    .end annotation
.end field

.field private hV:Lo/ﺪ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufeaa<TZ;>;"
        }
    .end annotation
.end field

.field private hW:Lo/ﭥ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufb65<TT;>;"
        }
    .end annotation
.end field

.field private hg:Lo/ғ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0493<TZ;TR;>;"
        }
    .end annotation
.end field

.field private lz:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<TT;TZ;>;"
        }
    .end annotation
.end field

.field private final ma:Lo/ᔁ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1501<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ᔁ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u1501<TA;TT;TZ;TR;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/ᓸ;->ma:Lo/ᔁ;

    .line 31
    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/ᓸ;->ᒩ()Lo/ᓸ;

    move-result-object v0

    return-object v0
.end method

.method public ˎ(Lo/ﭥ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb65<TT;>;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lo/ᓸ;->hW:Lo/ﭥ;

    .line 83
    return-void
.end method

.method public ˎ(Lo/ﺀ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufe80<TT;TZ;>;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lo/ᓸ;->lz:Lo/ﺀ;

    .line 54
    return-void
.end method

.method public Ꮠ()Lo/ɽ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u027d<TA;TT;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/ᓸ;->ma:Lo/ᔁ;

    invoke-interface {v0}, Lo/ᔁ;->Ꮠ()Lo/ɽ;

    move-result-object v0

    return-object v0
.end method

.method public ᐜ()Lo/ғ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0493<TZ;TR;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lo/ᓸ;->hg:Lo/ғ;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lo/ᓸ;->hg:Lo/ғ;

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lo/ᓸ;->ma:Lo/ᔁ;

    invoke-interface {v0}, Lo/ᔁ;->ᐜ()Lo/ғ;

    move-result-object v0

    return-object v0
.end method

.method public ᒩ()Lo/ᓸ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u14f8<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 149
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᓸ;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ﻩ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Ljava/io/File;TZ;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lo/ᓸ;->hT:Lo/ﺀ;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lo/ᓸ;->hT:Lo/ﺀ;

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lo/ᓸ;->ma:Lo/ᔁ;

    invoke-interface {v0}, Lo/ᔁ;->ﻩ()Lo/ﺀ;

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

    .line 102
    iget-object v0, p0, Lo/ᓸ;->lz:Lo/ﺀ;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lo/ᓸ;->lz:Lo/ﺀ;

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lo/ᓸ;->ma:Lo/ᔁ;

    invoke-interface {v0}, Lo/ᔁ;->ｃ()Lo/ﺀ;

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

    .line 114
    iget-object v0, p0, Lo/ᓸ;->hW:Lo/ﭥ;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lo/ᓸ;->hW:Lo/ﭥ;

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lo/ᓸ;->ma:Lo/ᔁ;

    invoke-interface {v0}, Lo/ᔁ;->ｩ()Lo/ﭥ;

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

    .line 126
    iget-object v0, p0, Lo/ᓸ;->hV:Lo/ﺪ;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lo/ᓸ;->hV:Lo/ﺪ;

    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lo/ᓸ;->ma:Lo/ᔁ;

    invoke-interface {v0}, Lo/ᔁ;->ｪ()Lo/ﺪ;

    move-result-object v0

    return-object v0
.end method
