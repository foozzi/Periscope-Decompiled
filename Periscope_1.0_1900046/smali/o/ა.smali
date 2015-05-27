.class abstract Lo/ა;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::Lo/\u14a7;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final iq:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x14

    invoke-static {v0}, Lo/ﾕ;->ᵘ(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lo/ა;->iq:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public ˊ(Lo/ᒧ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lo/ა;->iq:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lo/ა;->iq:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    return-void
.end method

.method protected abstract ᘇ()Lo/ᒧ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected ᙇ()Lo/ᒧ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lo/ა;->iq:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒧ;

    move-object v1, v0

    .line 13
    if-nez v1, :cond_0

    .line 14
    invoke-virtual {p0}, Lo/ა;->ᘇ()Lo/ᒧ;

    move-result-object v1

    .line 16
    :cond_0
    return-object v1
.end method
