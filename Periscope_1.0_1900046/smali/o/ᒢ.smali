.class public Lo/ᒢ;
.super Lo/ﹴ;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Lo/\ufe74<TK;TV;>;Ljava/util/Map<TK;TV;>;"
    }
.end annotation


# instance fields
.field ᒼ:Lo/ᵥ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1d65<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/ﹴ;-><init>()V

    .line 55
    return-void
.end method

.method private ʳ()Lo/ᵥ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u1d65<TK;TV;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lo/ᒢ;->ᒼ:Lo/ᵥ;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lo/ᖮ;

    invoke-direct {v0, p0}, Lo/ᖮ;-><init>(Lo/ᒢ;)V

    iput-object v0, p0, Lo/ᒢ;->ᒼ:Lo/ᵥ;

    .line 120
    :cond_0
    iget-object v0, p0, Lo/ᒢ;->ᒼ:Lo/ᵥ;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lo/ᒢ;->ʳ()Lo/ᵥ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵥ;->ˮ()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<TK;>;"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lo/ᒢ;->ʳ()Lo/ᵥ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵥ;->ۥ()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<+TK;+TV;>;)V"
        }
    .end annotation

    .line 139
    iget v0, p0, Lo/ᒢ;->Ị:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lo/ᒢ;->ensureCapacity(I)V

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 141
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/ᒢ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Collection<*>;)Z"
        }
    .end annotation

    .line 161
    invoke-static {p0, p1}, Lo/ᵥ;->ˎ(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Collection<TV;>;"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lo/ᒢ;->ʳ()Lo/ᵥ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵥ;->ᐠ()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
