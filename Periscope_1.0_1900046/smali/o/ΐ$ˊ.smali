.class Lo/ΐ$ˊ;
.super Ljava/util/concurrent/FutureTask;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ΐ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/util/concurrent/FutureTask<TT;>;Ljava/lang/Comparable<Lo/\u1fd3$\u02ca<*>;>;"
    }
.end annotation


# instance fields
.field private final order:I

.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Runnable;TT;I)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 133
    instance-of v0, p1, Lo/כּ;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    move-object v0, p1

    check-cast v0, Lo/כּ;

    invoke-interface {v0}, Lo/כּ;->getPriority()I

    move-result v0

    iput v0, p0, Lo/ΐ$ˊ;->priority:I

    .line 138
    iput p3, p0, Lo/ΐ$ˊ;->order:I

    .line 139
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 127
    move-object v0, p1

    check-cast v0, Lo/ΐ$ˊ;

    invoke-virtual {p0, v0}, Lo/ΐ$ˊ;->ˊ(Lo/ΐ$ˊ;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 144
    instance-of v0, p1, Lo/ΐ$ˊ;

    if-eqz v0, :cond_1

    .line 145
    move-object v0, p1

    check-cast v0, Lo/ΐ$ˊ;

    move-object v2, v0

    .line 146
    iget v0, p0, Lo/ΐ$ˊ;->order:I

    iget v1, v2, Lo/ΐ$ˊ;->order:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/ΐ$ˊ;->priority:I

    iget v1, v2, Lo/ΐ$ˊ;->priority:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 148
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 153
    iget v2, p0, Lo/ΐ$ˊ;->priority:I

    .line 154
    mul-int/lit8 v0, v2, 0x1f

    iget v1, p0, Lo/ΐ$ˊ;->order:I

    add-int v2, v0, v1

    .line 155
    return v2
.end method

.method public ˊ(Lo/ΐ$ˊ;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u1fd3$\u02ca<*>;)I"
        }
    .end annotation

    .line 160
    iget v0, p0, Lo/ΐ$ˊ;->priority:I

    iget v1, p1, Lo/ΐ$ˊ;->priority:I

    sub-int v2, v0, v1

    .line 161
    if-nez v2, :cond_0

    .line 162
    iget v0, p0, Lo/ΐ$ˊ;->order:I

    iget v1, p1, Lo/ΐ$ˊ;->order:I

    sub-int v2, v0, v1

    .line 164
    :cond_0
    return v2
.end method
