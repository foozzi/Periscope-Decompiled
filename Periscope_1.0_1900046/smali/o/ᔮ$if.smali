.class Lo/ᔮ$if;
.super Lo/qg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔮ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field private final nH:F

.field final synthetic pd:Lo/ᔮ;


# direct methods
.method constructor <init>(Lo/ᔮ;F)V
    .locals 0

    .line 123
    iput-object p1, p0, Lo/ᔮ$if;->pd:Lo/ᔮ;

    invoke-direct {p0}, Lo/qg;-><init>()V

    .line 124
    iput p2, p0, Lo/ᔮ$if;->nH:F

    .line 125
    return-void
.end method

.method private ᘤ()V
    .locals 11

    .line 140
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting report processing in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lo/ᔮ$if;->nH:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " second(s)..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget v0, p0, Lo/ᔮ$if;->nH:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 145
    :try_start_0
    iget v0, p0, Lo/ᔮ$if;->nH:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 146
    :catch_0
    move-exception v4

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 148
    return-void

    .line 152
    :cond_0
    :goto_0
    invoke-static {}, Lo/ɬ;->ｿ()Lo/ɬ;

    move-result-object v4

    .line 153
    invoke-virtual {v4}, Lo/ɬ;->Ľ()Lo/ऽ;

    move-result-object v5

    .line 154
    iget-object v0, p0, Lo/ᔮ$if;->pd:Lo/ᔮ;

    invoke-virtual {v0}, Lo/ᔮ;->ᔩ()Ljava/util/List;

    move-result-object v6

    .line 156
    invoke-virtual {v5}, Lo/ऽ;->ن()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    return-void

    .line 161
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Lo/ɬ;->Т()Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User declined to send. Removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Report(s)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᔪ;

    move-object v8, v0

    .line 166
    invoke-interface {v8}, Lo/ᔪ;->ᔂ()Z

    .line 167
    goto :goto_1

    .line 168
    :cond_2
    return-void

    .line 171
    :cond_3
    const/4 v7, 0x0

    .line 172
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 173
    invoke-static {}, Lo/ɬ;->ｿ()Lo/ɬ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ɬ;->Ľ()Lo/ऽ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ऽ;->ن()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    return-void

    .line 186
    :cond_5
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᔪ;

    move-object v9, v0

    .line 189
    iget-object v0, p0, Lo/ᔮ$if;->pd:Lo/ᔮ;

    invoke-virtual {v0, v9}, Lo/ᔮ;->ˊ(Lo/ᔪ;)Z

    .line 190
    goto :goto_3

    .line 193
    :cond_6
    iget-object v0, p0, Lo/ᔮ$if;->pd:Lo/ᔮ;

    invoke-virtual {v0}, Lo/ᔮ;->ᔩ()Ljava/util/List;

    move-result-object v6

    .line 194
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 195
    invoke-static {}, Lo/ᔮ;->ᔪ()[S

    move-result-object v0

    move v1, v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {}, Lo/ᔮ;->ᔪ()[S

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-short v0, v0, v1

    int-to-long v8, v0

    .line 197
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report submisson: scheduling delayed retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    goto :goto_4

    .line 202
    :catch_1
    move-exception v10

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 204
    return-void

    .line 206
    :goto_4
    goto/16 :goto_2

    .line 208
    :cond_7
    return-void
.end method


# virtual methods
.method public ᔮ()V
    .locals 4

    .line 130
    :try_start_0
    invoke-direct {p0}, Lo/ᔮ$if;->ᘤ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 131
    :catch_0
    move-exception v3

    .line 132
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "An unexpected error occurred while attempting to upload crash reports."

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    :goto_0
    iget-object v0, p0, Lo/ᔮ$if;->pd:Lo/ᔮ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ᔮ;->ˊ(Lo/ᔮ;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 137
    return-void
.end method
