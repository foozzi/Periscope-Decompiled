.class Lo/pp;
.super Lo/ri;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:Ljava/lang/Object;>Lo/ri<Ljava/lang/Void;Ljava/lang/Void;TResult;>;"
    }
.end annotation


# instance fields
.field final Rw:Lo/pq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/pq<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/pq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/pq<TResult;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lo/ri;-><init>()V

    .line 17
    iput-object p1, p0, Lo/pp;->Rw:Lo/pq;

    .line 18
    return-void
.end method

.method private ʺ(Ljava/lang/String;)Lo/qy;
    .locals 3

    .line 75
    new-instance v2, Lo/qy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/pp;->Rw:Lo/pq;

    invoke-virtual {v1}, Lo/pq;->ｯ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KitInitialization"

    invoke-direct {v2, v0, v1}, Lo/qy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Lo/qy;->cL()V

    .line 78
    return-object v2
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    move-object v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lo/pp;->ˊ([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lo/pp;->Rw:Lo/pq;

    invoke-virtual {v0, p1}, Lo/pq;->onCancelled(Ljava/lang/Object;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/pp;->Rw:Lo/pq;

    invoke-virtual {v1}, Lo/pq;->ｯ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Initialization was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    new-instance v3, Lo/po;

    invoke-direct {v3, v2}, Lo/po;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lo/pp;->Rw:Lo/pq;

    iget-object v0, v0, Lo/pq;->UO:Lo/pn;

    invoke-interface {v0, v3}, Lo/pn;->ˏ(Ljava/lang/Exception;)V

    .line 66
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lo/pp;->Rw:Lo/pq;

    invoke-virtual {v0, p1}, Lo/pq;->onPostExecute(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lo/pp;->Rw:Lo/pq;

    iget-object v0, v0, Lo/pq;->UO:Lo/pn;

    invoke-interface {v0, p1}, Lo/pn;->ו(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .line 22
    invoke-super {p0}, Lo/ri;->onPreExecute()V

    .line 24
    const-string v0, "onPreExecute"

    invoke-direct {p0, v0}, Lo/pp;->ʺ(Ljava/lang/String;)Lo/qy;

    move-result-object v3

    .line 25
    const/4 v4, 0x0

    .line 27
    :try_start_0
    iget-object v0, p0, Lo/pp;->Rw:Lo/pq;

    invoke-virtual {v0}, Lo/pq;->ﺰ()Z
    :try_end_0
    .catch Lo/rq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v4, v0

    .line 34
    invoke-virtual {v3}, Lo/qy;->cM()V

    .line 35
    if-nez v4, :cond_1

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/pp;->cancel(Z)Z

    goto :goto_0

    .line 28
    :catch_0
    move-exception v5

    .line 30
    :try_start_1
    throw v5

    .line 31
    :catch_1
    move-exception v5

    .line 32
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failure onPreExecute()"

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-virtual {v3}, Lo/qy;->cM()V

    .line 35
    if-nez v4, :cond_1

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/pp;->cancel(Z)Z

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Lo/qy;->cM()V

    .line 35
    if-nez v4, :cond_0

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/pp;->cancel(Z)Z

    :cond_0
    throw v6

    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method protected varargs ˊ([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Ljava/lang/Void;)TResult;"
        }
    .end annotation

    .line 43
    const-string v0, "doInBackground"

    invoke-direct {p0, v0}, Lo/pp;->ʺ(Ljava/lang/String;)Lo/qy;

    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p0}, Lo/pp;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lo/pp;->Rw:Lo/pq;

    invoke-virtual {v0}, Lo/pq;->э()Ljava/lang/Object;

    move-result-object v2

    .line 49
    :cond_0
    invoke-virtual {v1}, Lo/qy;->cM()V

    .line 50
    return-object v2
.end method

.method public є()Lo/rh;
    .locals 1

    .line 70
    sget-object v0, Lo/rh;->Xg:Lo/rh;

    return-object v0
.end method
