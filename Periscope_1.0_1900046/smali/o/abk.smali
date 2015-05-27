.class public Lo/abk;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bvI:Lo/abo;

.field private bvJ:I

.field private bvd:I

.field private γ:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lo/abk;->bvd:I

    .line 40
    iput p2, p0, Lo/abk;->γ:I

    .line 41
    iput p3, p0, Lo/abk;->bvJ:I

    .line 42
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 11

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lo/abk;->bvd:I

    .line 15
    iput p2, p0, Lo/abk;->γ:I

    .line 17
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 18
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 19
    const/4 v0, 0x0

    aget v0, v9, v0

    iput v0, p0, Lo/abk;->bvJ:I

    .line 21
    const/4 v0, 0x1

    new-array v10, v0, [I

    .line 22
    const v0, 0x8ca6

    const/4 v1, 0x0

    invoke-static {v0, v10, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 23
    iget v0, p0, Lo/abk;->bvJ:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 25
    new-instance v0, Lo/abo;

    invoke-static {p1, p2}, Ltv/periscope/android/util/Size;->ﻧ(II)Ltv/periscope/android/util/Size;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/abo;-><init>(Ltv/periscope/android/util/Size;)V

    iput-object v0, p0, Lo/abk;->bvI:Lo/abo;

    .line 27
    iget-object v0, p0, Lo/abk;->bvI:Lo/abo;

    invoke-virtual {v0}, Lo/abo;->wx()I

    move-result v0

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 28
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 29
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 30
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 31
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 32
    move v2, p3

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 33
    iget-object v0, p0, Lo/abk;->bvI:Lo/abo;

    invoke-virtual {v0}, Lo/abo;->wx()I

    move-result v0

    const v1, 0x8d40

    const v2, 0x8ce0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 34
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 35
    const/4 v0, 0x0

    aget v0, v10, v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 36
    return-void
.end method


# virtual methods
.method public tQ()V
    .locals 4

    .line 59
    iget v0, p0, Lo/abk;->bvJ:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 60
    iget v0, p0, Lo/abk;->bvd:I

    iget v1, p0, Lo/abk;->γ:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 61
    return-void
.end method

.method public vQ()V
    .locals 3

    .line 45
    iget-object v0, p0, Lo/abk;->bvI:Lo/abo;

    invoke-virtual {v0}, Lo/abo;->vQ()V

    .line 46
    const/4 v0, 0x1

    new-array v2, v0, [I

    iget v0, p0, Lo/abk;->bvJ:I

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 47
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 48
    return-void
.end method

.method public vY()Lo/abo;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/abk;->bvI:Lo/abo;

    return-object v0
.end method
