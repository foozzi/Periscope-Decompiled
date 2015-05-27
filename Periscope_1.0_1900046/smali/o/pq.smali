.class public abstract Lo/pq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:Ljava/lang/Object;>Ljava/lang/Object;Ljava/lang/Comparable<Lo/pq;>;"
    }
.end annotation


# instance fields
.field UO:Lo/pn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/pn<TResult;>;"
        }
    .end annotation
.end field

.field Vf:Lo/pj;

.field Vg:Lo/pp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/pp<TResult;>;"
        }
    .end annotation
.end field

.field dV:Landroid/content/Context;

.field ok:Lo/qr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lo/pp;

    invoke-direct {v0, p0}, Lo/pp;-><init>(Lo/pq;)V

    iput-object v0, p0, Lo/pq;->Vg:Lo/pp;

    .line 27
    return-void
.end method


# virtual methods
.method protected cg()Lo/qr;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/pq;->ok:Lo/qr;

    return-object v0
.end method

.method public ch()Lo/pj;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/pq;->Vf:Lo/pj;

    return-object v0
.end method

.method ci()Z
    .locals 3

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lo/rg;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lo/rg;

    move-object v2, v0

    .line 159
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected cj()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Collection<Lo/rp;>;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lo/pq;->Vg:Lo/pp;

    invoke-virtual {v0}, Lo/pp;->cj()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 16
    move-object v0, p1

    check-cast v0, Lo/pq;

    invoke-virtual {p0, v0}, Lo/pq;->ˊ(Lo/pq;)I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/pq;->dV:Landroid/content/Context;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".Fabric"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/pq;->ｯ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method final initialize()V
    .locals 5

    .line 49
    iget-object v0, p0, Lo/pq;->Vg:Lo/pp;

    iget-object v1, p0, Lo/pq;->Vf:Lo/pj;

    invoke-virtual {v1}, Lo/pj;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lo/pp;->ˊ(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 81
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 74
    return-void
.end method

.method public ˊ(Lo/pq;)I
    .locals 1

    .line 123
    invoke-virtual {p0, p1}, Lo/pq;->ˋ(Lo/pq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    invoke-virtual {p1, p0}, Lo/pq;->ˋ(Lo/pq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, -0x1

    return v0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lo/pq;->ci()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lo/pq;->ci()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_2
    invoke-virtual {p0}, Lo/pq;->ci()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lo/pq;->ci()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    const/4 v0, -0x1

    return v0

    .line 132
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method ˊ(Landroid/content/Context;Lo/pj;Lo/pn;Lo/qr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/pj;Lo/pn<TResult;>;Lo/qr;)V"
        }
    .end annotation

    .line 39
    iput-object p2, p0, Lo/pq;->Vf:Lo/pj;

    .line 40
    new-instance v0, Lo/pm;

    invoke-virtual {p0}, Lo/pq;->ｯ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/pq;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lo/pm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/pq;->dV:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lo/pq;->UO:Lo/pn;

    .line 42
    iput-object p4, p0, Lo/pq;->ok:Lo/qr;

    .line 43
    return-void
.end method

.method ˋ(Lo/pq;)Z
    .locals 8

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lo/rg;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lo/rg;

    move-object v2, v0

    .line 142
    if-eqz v2, :cond_1

    .line 143
    invoke-interface {v2}, Lo/rg;->cV()[Ljava/lang/Class;

    move-result-object v3

    .line 144
    move-object v4, v3

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract э()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected ﺰ()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public abstract ｯ()Ljava/lang/String;
.end method
