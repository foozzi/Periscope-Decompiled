.class Lo/ԇ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ধ;


# instance fields
.field private kJ:Z

.field private final lE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Lo/\u0e23;>;"
        }
    .end annotation
.end field

.field private lF:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/ԇ;->lE:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 3

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ԇ;->lF:Z

    .line 63
    iget-object v0, p0, Lo/ԇ;->lE:Ljava/util/Set;

    invoke-static {v0}, Lo/ﾕ;->ˊ(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ร;

    move-object v2, v0

    .line 64
    invoke-interface {v2}, Lo/ร;->onDestroy()V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method onStart()V
    .locals 3

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ԇ;->kJ:Z

    .line 49
    iget-object v0, p0, Lo/ԇ;->lE:Ljava/util/Set;

    invoke-static {v0}, Lo/ﾕ;->ˊ(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ร;

    move-object v2, v0

    .line 50
    invoke-interface {v2}, Lo/ร;->onStart()V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method onStop()V
    .locals 3

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ԇ;->kJ:Z

    .line 56
    iget-object v0, p0, Lo/ԇ;->lE:Ljava/util/Set;

    invoke-static {v0}, Lo/ﾕ;->ˊ(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ร;

    move-object v2, v0

    .line 57
    invoke-interface {v2}, Lo/ร;->onStop()V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public ˊ(Lo/ร;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lo/ԇ;->lE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    iget-boolean v0, p0, Lo/ԇ;->lF:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p1}, Lo/ร;->onDestroy()V

    goto :goto_0

    .line 40
    :cond_0
    iget-boolean v0, p0, Lo/ԇ;->kJ:Z

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {p1}, Lo/ร;->onStart()V

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {p1}, Lo/ร;->onStop()V

    .line 45
    :goto_0
    return-void
.end method
