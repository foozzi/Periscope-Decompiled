.class final Lo/hk$ˊ;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic Li:Lo/hk;


# direct methods
.method constructor <init>(Lo/hk;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lo/hk$ˊ;->Li:Lo/hk;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 614
    iget-object v0, p0, Lo/hk$ˊ;->Li:Lo/hk;

    invoke-virtual {v0}, Lo/hk;->clear()V

    .line 615
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 606
    iget-object v0, p0, Lo/hk$ˊ;->Li:Lo/hk;

    invoke-virtual {v0, p1}, Lo/hk;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Iterator<TK;>;"
        }
    .end annotation

    .line 598
    new-instance v0, Lo/hn;

    invoke-direct {v0, p0}, Lo/hn;-><init>(Lo/hk$ˊ;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 610
    iget-object v0, p0, Lo/hk$ˊ;->Li:Lo/hk;

    invoke-virtual {v0, p1}, Lo/hk;->ﾟ(Ljava/lang/Object;)Lo/hk$ˎ;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 594
    iget-object v0, p0, Lo/hk$ˊ;->Li:Lo/hk;

    iget v0, v0, Lo/hk;->size:I

    return v0
.end method
