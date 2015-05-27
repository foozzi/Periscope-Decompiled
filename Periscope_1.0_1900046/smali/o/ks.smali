.class Lo/ks;
.super Lo/lu;
.source ""


# direct methods
.method constructor <init>(Ljava/util/Vector;IILjava/util/Hashtable;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lo/lu;-><init>(Ljava/util/Vector;IILjava/util/Hashtable;)V

    .line 91
    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    .line 121
    iget-object v0, p0, Lo/ks;->PQ:Lo/kl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ks;->PQ:Lo/kl;

    invoke-virtual {v0}, Lo/kl;->shutdown()V

    .line 122
    :cond_0
    return-void
.end method

.method ˋ(Lo/kn;)V
    .locals 6

    .line 94
    const/4 v4, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p1}, Lo/kn;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ﹾ(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lo/ks;->PQ:Lo/kl;

    invoke-virtual {p1}, Lo/kn;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/kn;->ap()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/kl;->ˊ(Ljava/lang/String;Ljava/util/Hashtable;)Lo/ko;
    :try_end_0
    .catch Lo/lh; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 108
    goto :goto_0

    .line 98
    :catch_0
    move-exception v5

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pubnub Exception in Fetch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lo/lh;->aE()Lo/lg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ﹾ(Ljava/lang/String;)V

    .line 100
    iget-boolean v0, p0, Lo/ks;->PO:Z

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lo/kn;->ao()Lo/ll;

    move-result-object v0

    invoke-virtual {v5}, Lo/lh;->aE()Lo/lg;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/ll;->ˊ(Lo/kn;Lo/lg;)V

    .line 102
    :cond_0
    return-void

    .line 103
    :catch_1
    move-exception v5

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in Fetch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ﹾ(Ljava/lang/String;)V

    .line 105
    iget-boolean v0, p0, Lo/ks;->PO:Z

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p1}, Lo/kn;->ao()Lo/ll;

    move-result-object v0

    sget-object v1, Lo/lg;->OY:Lo/lg;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/ll;->ˊ(Lo/kn;Lo/lg;)V

    .line 107
    :cond_1
    return-void

    .line 110
    :goto_0
    iget-boolean v0, p0, Lo/ks;->PO:Z

    if-nez v0, :cond_3

    .line 111
    if-nez v4, :cond_2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in fetching url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lo/kn;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ﹾ(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lo/kn;->ao()Lo/ll;

    move-result-object v0

    sget-object v1, Lo/lg;->OY:Lo/lg;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lo/lg;->ˊ(Lo/lg;I)Lo/lg;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/ll;->ˊ(Lo/kn;Lo/lg;)V

    .line 114
    return-void

    .line 116
    :cond_2
    invoke-virtual {p1}, Lo/kn;->ao()Lo/ll;

    move-result-object v0

    invoke-virtual {v4}, Lo/ko;->aq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/ll;->ˊ(Lo/kn;Ljava/lang/String;)V

    .line 118
    :cond_3
    return-void
.end method
