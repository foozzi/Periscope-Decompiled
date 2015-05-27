.class public Lorg/spongycastle/util/CollectionStore;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/util/Store;


# instance fields
.field private bkb:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/util/CollectionStore;->bkb:Ljava/util/Collection;

    .line 25
    return-void
.end method


# virtual methods
.method public ˋ(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;
    .locals 5

    .line 35
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/util/CollectionStore;->bkb:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 41
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v0, p0, Lorg/spongycastle/util/CollectionStore;->bkb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 44
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 48
    invoke-interface {p1, v4}, Lorg/spongycastle/util/Selector;->ɨ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    goto :goto_0

    .line 54
    :cond_2
    return-object v2
.end method
