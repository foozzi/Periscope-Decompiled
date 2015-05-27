.class abstract Lo/hk$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "\u02cb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Iterator<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic Li:Lo/hk;

.field Ll:Lo/hk$ˎ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/hk$\u02ce<TK;TV;>;"
        }
    .end annotation
.end field

.field Lm:Lo/hk$ˎ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/hk$\u02ce<TK;TV;>;"
        }
    .end annotation
.end field

.field Ln:I


# direct methods
.method private constructor <init>(Lo/hk;)V
    .locals 1

    .line 526
    iput-object p1, p0, Lo/hk$ˋ;->Li:Lo/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lo/hk$ˋ;->Li:Lo/hk;

    iget-object v0, v0, Lo/hk;->Lf:Lo/hk$ˎ;

    iget-object v0, v0, Lo/hk$ˎ;->Ll:Lo/hk$ˎ;

    iput-object v0, p0, Lo/hk$ˋ;->Ll:Lo/hk$ˎ;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lo/hk$ˋ;->Lm:Lo/hk$ˎ;

    .line 529
    iget-object v0, p0, Lo/hk$ˋ;->Li:Lo/hk;

    iget v0, v0, Lo/hk;->modCount:I

    iput v0, p0, Lo/hk$ˋ;->Ln:I

    return-void
.end method

.method synthetic constructor <init>(Lo/hk;Lo/hl;)V
    .locals 0

    .line 526
    invoke-direct {p0, p1}, Lo/hk$ˋ;-><init>(Lo/hk;)V

    return-void
.end method


# virtual methods
.method final E()Lo/hk$ˎ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/hk$\u02ce<TK;TV;>;"
        }
    .end annotation

    .line 536
    iget-object v2, p0, Lo/hk$ˋ;->Ll:Lo/hk$ˎ;

    .line 537
    iget-object v0, p0, Lo/hk$ˋ;->Li:Lo/hk;

    iget-object v0, v0, Lo/hk;->Lf:Lo/hk$ˎ;

    if-ne v2, v0, :cond_0

    .line 538
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 540
    :cond_0
    iget-object v0, p0, Lo/hk$ˋ;->Li:Lo/hk;

    iget v0, v0, Lo/hk;->modCount:I

    iget v1, p0, Lo/hk$ˋ;->Ln:I

    if-eq v0, v1, :cond_1

    .line 541
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 543
    :cond_1
    iget-object v0, v2, Lo/hk$ˎ;->Ll:Lo/hk$ˎ;

    iput-object v0, p0, Lo/hk$ˋ;->Ll:Lo/hk$ˎ;

    .line 544
    iput-object v2, p0, Lo/hk$ˋ;->Lm:Lo/hk$ˎ;

    return-object v2
.end method

.method public final hasNext()Z
    .locals 2

    .line 532
    iget-object v0, p0, Lo/hk$ˋ;->Ll:Lo/hk$ˎ;

    iget-object v1, p0, Lo/hk$ˋ;->Li:Lo/hk;

    iget-object v1, v1, Lo/hk;->Lf:Lo/hk$ˎ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 548
    iget-object v0, p0, Lo/hk$ˋ;->Lm:Lo/hk$ˎ;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lo/hk$ˋ;->Li:Lo/hk;

    iget-object v1, p0, Lo/hk$ˋ;->Lm:Lo/hk$ˎ;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/hk;->ˊ(Lo/hk$ˎ;Z)V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lo/hk$ˋ;->Lm:Lo/hk$ˎ;

    .line 553
    iget-object v0, p0, Lo/hk$ˋ;->Li:Lo/hk;

    iget v0, v0, Lo/hk;->modCount:I

    iput v0, p0, Lo/hk$ˋ;->Ln:I

    .line 554
    return-void
.end method
