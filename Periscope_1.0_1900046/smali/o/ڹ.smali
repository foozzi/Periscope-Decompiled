.class public abstract Lo/ڹ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ʢ$if;


# instance fields
.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final disable()V
    .locals 2

    .line 212
    iget v0, p0, Lo/ڹ;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 213
    const/4 v0, 0x1

    iput v0, p0, Lo/ڹ;->state:I

    .line 214
    invoke-virtual {p0}, Lo/ڹ;->ɜ()V

    .line 215
    return-void
.end method

.method protected final getState()I
    .locals 1

    .line 104
    iget v0, p0, Lo/ڹ;->state:I

    return v0
.end method

.method protected onStopped()V
    .locals 0

    .line 206
    return-void
.end method

.method final release()V
    .locals 2

    .line 232
    iget v0, p0, Lo/ڹ;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lo/ڹ;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lo/ڹ;->state:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 235
    const/4 v0, -0x2

    iput v0, p0, Lo/ڹ;->state:I

    .line 236
    invoke-virtual {p0}, Lo/ڹ;->Ϋ()V

    .line 237
    return-void
.end method

.method protected abstract seekTo(J)V
.end method

.method final start()V
    .locals 2

    .line 172
    iget v0, p0, Lo/ڹ;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 173
    const/4 v0, 0x3

    iput v0, p0, Lo/ڹ;->state:I

    .line 174
    invoke-virtual {p0}, Lo/ڹ;->ɛ()V

    .line 175
    return-void
.end method

.method final stop()V
    .locals 2

    .line 192
    iget v0, p0, Lo/ڹ;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 193
    const/4 v0, 0x2

    iput v0, p0, Lo/ڹ;->state:I

    .line 194
    invoke-virtual {p0}, Lo/ڹ;->onStopped()V

    .line 195
    return-void
.end method

.method protected ƭ()Z
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected ɛ()V
    .locals 0

    .line 186
    return-void
.end method

.method protected ɜ()V
    .locals 0

    .line 226
    return-void
.end method

.method protected abstract ˉ(J)I
.end method

.method protected abstract ˊ(JJ)V
.end method

.method protected ˊ(JZ)V
    .locals 0

    .line 165
    return-void
.end method

.method public ˋ(ILjava/lang/Object;)V
    .locals 0

    .line 351
    return-void
.end method

.method final ˋ(JZ)V
    .locals 2

    .line 147
    iget v0, p0, Lo/ڹ;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 148
    const/4 v0, 0x2

    iput v0, p0, Lo/ڹ;->state:I

    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lo/ڹ;->ˊ(JZ)V

    .line 150
    return-void
.end method

.method protected Ϋ()V
    .locals 0

    .line 248
    return-void
.end method

.method protected abstract ﮈ()Z
.end method

.method protected abstract ﺓ()Z
.end method

.method protected abstract ﻤ()J
.end method

.method protected abstract ﻥ()J
.end method

.method protected abstract ｆ()J
.end method

.method final ﾞ(J)I
    .locals 2

    .line 115
    iget v0, p0, Lo/ڹ;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 116
    invoke-virtual {p0, p1, p2}, Lo/ڹ;->ˉ(J)I

    move-result v0

    iput v0, p0, Lo/ڹ;->state:I

    .line 117
    iget v0, p0, Lo/ڹ;->state:I

    if-eqz v0, :cond_1

    iget v0, p0, Lo/ڹ;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lo/ڹ;->state:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 120
    iget v0, p0, Lo/ڹ;->state:I

    return v0
.end method
