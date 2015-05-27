.class Lo/hk$if;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic Li:Lo/hk;


# direct methods
.method constructor <init>(Lo/hk;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lo/hk$if;->Li:Lo/hk;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 588
    iget-object v0, p0, Lo/hk$if;->Li:Lo/hk;

    invoke-virtual {v0}, Lo/hk;->clear()V

    .line 589
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 571
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/hk$if;->Li:Lo/hk;

    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Lo/hk;->ˋ(Ljava/util/Map$Entry;)Lo/hk$ˎ;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
        }
    .end annotation

    .line 563
    new-instance v0, Lo/hm;

    invoke-direct {v0, p0}, Lo/hm;-><init>(Lo/hk$if;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 575
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 576
    const/4 v0, 0x0

    return v0

    .line 579
    :cond_0
    iget-object v0, p0, Lo/hk$if;->Li:Lo/hk;

    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Lo/hk;->ˋ(Ljava/util/Map$Entry;)Lo/hk$ˎ;

    move-result-object v2

    .line 580
    if-nez v2, :cond_1

    .line 581
    const/4 v0, 0x0

    return v0

    .line 583
    :cond_1
    iget-object v0, p0, Lo/hk$if;->Li:Lo/hk;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lo/hk;->ˊ(Lo/hk$ˎ;Z)V

    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 559
    iget-object v0, p0, Lo/hk$if;->Li:Lo/hk;

    iget v0, v0, Lo/hk;->size:I

    return v0
.end method
