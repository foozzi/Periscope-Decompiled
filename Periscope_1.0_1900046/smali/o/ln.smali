.class Lo/ln;
.super Lo/kg;
.source ""


# instance fields
.field private PD:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/util/Vector;IIIIILjava/util/Hashtable;)V
    .locals 1

    .line 15
    invoke-direct/range {p0 .. p7}, Lo/kg;-><init>(Ljava/util/Vector;IIIIILjava/util/Hashtable;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ln;->PD:Ljava/lang/Exception;

    .line 17
    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    .line 113
    iget-object v0, p0, Lo/ln;->PQ:Lo/kl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ln;->PQ:Lo/kl;

    invoke-virtual {v0}, Lo/kl;->shutdown()V

    .line 114
    :cond_0
    return-void
.end method

.method ˋ(Lo/kn;)V
    .locals 7

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p1}, Lo/kn;->an()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lo/ln;->NI:I

    .line 22
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectAndResubscribe is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lo/kn;->an()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lo/kn;->al()Lo/lu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request placed by worker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lo/kn;->al()Lo/lu;

    move-result-object v1

    invoke-virtual {v1}, Lo/lu;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lo/kn;->al()Lo/lu;

    move-result-object v0

    iget-boolean v0, v0, Lo/lu;->PO:Z

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The thread which placed the request has died, so ignore the request : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lo/kn;->al()Lo/lu;

    move-result-object v1

    invoke-virtual {v1}, Lo/lu;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_1
    invoke-virtual {p1, p0}, Lo/kn;->ˊ(Lo/lu;)V

    .line 31
    invoke-virtual {p1}, Lo/kn;->am()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lo/ln;->NK:I

    if-eqz v0, :cond_2

    .line 33
    :try_start_0
    iget v0, p0, Lo/ln;->NK:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_1

    .line 34
    :catch_0
    move-exception v5

    .line 37
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 38
    :goto_2
    iget-boolean v0, p0, Lo/ln;->PO:Z

    if-nez v0, :cond_9

    iget v0, p0, Lo/ln;->NI:I

    if-gt v4, v0, :cond_9

    .line 39
    if-eqz v5, :cond_3

    .line 41
    :try_start_1
    iget v0, p0, Lo/ln;->NJ:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    goto :goto_3

    .line 42
    :catch_1
    move-exception v6

    .line 45
    :cond_3
    :goto_3
    const/4 v5, 0x1

    .line 47
    :try_start_2
    invoke-virtual {p1}, Lo/kn;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ﹾ(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lo/ln;->PQ:Lo/kl;

    invoke-virtual {p1}, Lo/kn;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/kn;->ap()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/kl;->ˊ(Ljava/lang/String;Ljava/util/Hashtable;)Lo/ko;

    move-result-object v0

    move-object v3, v0

    .line 49
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lo/ko;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lo/kp;->ṙ(I)Z
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lo/lh; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    const/4 v4, 0x1

    .line 53
    goto/16 :goto_8

    .line 88
    :cond_4
    goto :goto_2

    .line 55
    :catch_2
    move-exception v6

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Traffic , Read Timeout Exception in Fetch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lo/ln;->PO:Z

    if-eqz v0, :cond_5

    .line 58
    const-string v0, "Asked to Die, Don\'t do back from DAR processing"

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 59
    goto/16 :goto_8

    .line 61
    :cond_5
    invoke-virtual {p1}, Lo/kn;->an()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    invoke-virtual {p1}, Lo/kn;->ao()Lo/ll;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ll;->ˏ(Lo/kn;)V

    .line 63
    return-void

    .line 65
    :cond_6
    invoke-virtual {p1}, Lo/kn;->ao()Lo/ll;

    move-result-object v0

    sget-object v1, Lo/lg;->Pn:Lo/lg;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/lg;->ˊ(Lo/lg;I)Lo/lg;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/ll;->ˊ(Lo/kn;Lo/lg;)V

    .line 66
    return-void

    .line 68
    :catch_3
    move-exception v6

    .line 69
    iput-object v6, p0, Lo/ln;->PD:Ljava/lang/Exception;

    .line 70
    invoke-virtual {v6}, Lo/lh;->aE()Lo/lg;

    move-result-object v0

    iget v0, v0, Lo/lg;->tB:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    .line 73
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authentication Failure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lo/lh;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lo/ln;->NI:I

    add-int/lit8 v4, v0, 0x1

    .line 75
    goto :goto_6

    .line 77
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry Attempt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ln;->NI:I

    if-ne v4, v1, :cond_7

    const-string v1, "last"

    goto :goto_5

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Exception in Fetch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lo/lh;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 88
    :goto_6
    goto/16 :goto_2

    .line 83
    :catch_4
    move-exception v6

    .line 84
    iput-object v6, p0, Lo/ln;->PD:Ljava/lang/Exception;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry Attempt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ln;->NI:I

    if-ne v4, v1, :cond_8

    const-string v1, "last"

    goto :goto_7

    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Exception in Fetch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    goto/16 :goto_2

    .line 91
    :cond_9
    :goto_8
    iget-boolean v0, p0, Lo/ln;->PO:Z

    if-nez v0, :cond_d

    .line 92
    if-nez v3, :cond_c

    .line 93
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

    .line 94
    invoke-virtual {p1}, Lo/kn;->an()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 95
    const-string v0, "Exhausted number of retries"

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lo/kn;->ao()Lo/ll;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ll;->ᐝ(Lo/kn;)V

    goto :goto_9

    .line 98
    :cond_a
    iget-object v0, p0, Lo/ln;->PD:Ljava/lang/Exception;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lo/ln;->PD:Ljava/lang/Exception;

    instance-of v0, v0, Lo/lh;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lo/ln;->PD:Ljava/lang/Exception;

    check-cast v0, Lo/lh;

    invoke-virtual {v0}, Lo/lh;->aE()Lo/lg;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 99
    invoke-virtual {p1}, Lo/kn;->ao()Lo/ll;

    move-result-object v0

    iget-object v1, p0, Lo/ln;->PD:Ljava/lang/Exception;

    check-cast v1, Lo/lh;

    invoke-virtual {v1}, Lo/lh;->aE()Lo/lg;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/ll;->ˊ(Lo/kn;Lo/lg;)V

    goto :goto_9

    .line 101
    :cond_b
    invoke-virtual {p1}, Lo/kn;->ao()Lo/ll;

    move-result-object v0

    sget-object v1, Lo/lg;->OY:Lo/lg;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/lg;->ˊ(Lo/lg;I)Lo/lg;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/ll;->ˊ(Lo/kn;Lo/lg;)V

    .line 104
    :goto_9
    return-void

    .line 106
    :cond_c
    invoke-virtual {v3}, Lo/ko;->aq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ﹾ(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lo/kn;->ao()Lo/ll;

    move-result-object v0

    invoke-virtual {v3}, Lo/ko;->aq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/ll;->ˊ(Lo/kn;Ljava/lang/String;)V

    .line 110
    :cond_d
    return-void

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
    .end sparse-switch
.end method
