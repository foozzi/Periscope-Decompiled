.class public Lo/יּ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/יּ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field Ȉ:Z

.field ȋ:Z

.field ɨ:Z

.field ɪ:Z

.field וֹ:Z

.field ﹷ:I

.field ｨ:Lo/יּ$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufb39$if<TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/יּ;->וֹ:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/יּ;->Ȉ:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/יּ;->ȋ:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/יּ;->ɨ:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/יּ;->ɪ:Z

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/יּ;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/יּ;->Ȉ:Z

    .line 263
    invoke-virtual {p0}, Lo/יּ;->onAbandon()V

    .line 264
    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Ljava/lang/String;"
        }
    .end annotation

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 369
    invoke-static {p1, v1}, Lo/ᵓ;->ˊ(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 370
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lo/יּ;->ｨ:Lo/יּ$if;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lo/יּ;->ｨ:Lo/יּ$if;

    invoke-interface {v0, p0, p1}, Lo/יּ$if;->ˋ(Lo/יּ;Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 393
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lo/יּ;->ﹷ:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 394
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lo/יּ;->ｨ:Lo/יּ$if;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 395
    iget-boolean v0, p0, Lo/יּ;->וֹ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/יּ;->ɨ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/יּ;->ɪ:Z

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lo/יּ;->וֹ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 397
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lo/יּ;->ɨ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 398
    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lo/יּ;->ɪ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 400
    :cond_1
    iget-boolean v0, p0, Lo/יּ;->Ȉ:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lo/יּ;->ȋ:Z

    if-eqz v0, :cond_3

    .line 401
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lo/יּ;->Ȉ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 402
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lo/יּ;->ȋ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 404
    :cond_3
    return-void
.end method

.method public getId()I
    .locals 1

    .line 119
    iget v0, p0, Lo/יּ;->ﹷ:I

    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lo/יּ;->Ȉ:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lo/יּ;->וֹ:Z

    return v0
.end method

.method protected onAbandon()V
    .locals 0

    .line 276
    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 306
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .line 207
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 254
    return-void
.end method

.method public reset()V
    .locals 1

    .line 291
    invoke-virtual {p0}, Lo/יּ;->onReset()V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/יּ;->ȋ:Z

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/יּ;->וֹ:Z

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/יּ;->Ȉ:Z

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/יּ;->ɨ:Z

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/יּ;->ɪ:Z

    .line 297
    return-void
.end method

.method public final startLoading()V
    .locals 1

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/יּ;->וֹ:Z

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/יּ;->ȋ:Z

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/יּ;->Ȉ:Z

    .line 198
    invoke-virtual {p0}, Lo/יּ;->onStartLoading()V

    .line 199
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/יּ;->וֹ:Z

    .line 244
    invoke-virtual {p0}, Lo/יּ;->onStopLoading()V

    .line 245
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 377
    invoke-static {p0, v1}, Lo/ᵓ;->ˊ(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 378
    const-string v0, " id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget v0, p0, Lo/יּ;->ﹷ:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(ILo/יּ$if;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILo/\ufb39$if<TD;>;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lo/יּ;->ｨ:Lo/יּ$if;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput-object p2, p0, Lo/יּ;->ｨ:Lo/יּ$if;

    .line 134
    iput p1, p0, Lo/יּ;->ﹷ:I

    .line 135
    return-void
.end method

.method public ˊ(Lo/יּ$if;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb39$if<TD;>;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lo/יּ;->ｨ:Lo/יּ$if;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lo/יּ;->ｨ:Lo/יּ$if;

    if-eq v0, p1, :cond_1

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lo/יּ;->ｨ:Lo/יּ$if;

    .line 150
    return-void
.end method
