.class public Lo/abm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected bwC:Lo/abi;

.field protected bwD:I

.field protected bwE:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<Lo/abk;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lo/abm;->bwE:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public wr()V
    .locals 3

    .line 21
    iget-object v0, p0, Lo/abm;->bwC:Lo/abi;

    invoke-virtual {v0}, Lo/abi;->tR()V

    .line 22
    const v0, 0x8892

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 23
    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lo/abm;->bwD:I

    if-ge v2, v0, :cond_0

    .line 24
    const v0, 0x84c0

    add-int/2addr v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 25
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 26
    const v0, 0x8d65

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method ws()V
    .locals 2

    .line 43
    iget-object v0, p0, Lo/abm;->bwE:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lo/abm;->bwE:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abk;

    invoke-virtual {v0}, Lo/abk;->tQ()V

    .line 45
    iget-object v0, p0, Lo/abm;->bwE:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lo/abm;->bwE:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 48
    :cond_0
    return-void
.end method

.method public ˊ(Ljava/lang/String;Lo/abo;II)V
    .locals 4

    .line 51
    iget-object v0, p0, Lo/abm;->bwC:Lo/abi;

    invoke-virtual {v0, p1}, Lo/abi;->ﹿ(Ljava/lang/String;)I

    move-result v2

    .line 52
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    .line 53
    iget v0, p0, Lo/abm;->bwD:I

    const v1, 0x84c0

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 54
    invoke-virtual {p2, p3, p4}, Lo/abo;->ﹼ(II)I

    move-result v3

    .line 55
    iget v0, p0, Lo/abm;->bwD:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 56
    iget v0, p0, Lo/abm;->bwD:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/abm;->bwD:I

    .line 58
    :cond_0
    return-void
.end method

.method public ˊ(Lo/abi;)V
    .locals 1

    .line 15
    iput-object p1, p0, Lo/abm;->bwC:Lo/abi;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lo/abm;->bwD:I

    .line 17
    iget-object v0, p0, Lo/abm;->bwC:Lo/abi;

    invoke-virtual {v0}, Lo/abi;->tQ()V

    .line 18
    return-void
.end method

.method ˊ(Lo/abk;)V
    .locals 7

    .line 31
    iget-object v0, p0, Lo/abm;->bwE:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x4

    new-array v5, v0, [I

    .line 33
    const/16 v0, 0xba2

    const/4 v1, 0x0

    invoke-static {v0, v5, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 34
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 35
    const v0, 0x8ca6

    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 36
    iget-object v0, p0, Lo/abm;->bwE:Ljava/util/Stack;

    new-instance v1, Lo/abk;

    const/4 v2, 0x2

    aget v2, v5, v2

    const/4 v3, 0x3

    aget v3, v5, v3

    const/4 v4, 0x0

    aget v4, v6, v4

    invoke-direct {v1, v2, v3, v4}, Lo/abk;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    iget-object v0, p0, Lo/abm;->bwE:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Lo/abk;->tQ()V

    .line 40
    return-void
.end method
