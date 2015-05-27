.class public Lo/abo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected bwI:I

.field protected bwJ:Ltv/periscope/android/util/Size;


# direct methods
.method public constructor <init>(Ltv/periscope/android/util/Size;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lo/abo;->bwJ:Ltv/periscope/android/util/Size;

    .line 18
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 19
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 20
    const/4 v0, 0x0

    aget v0, v2, v0

    iput v0, p0, Lo/abo;->bwI:I

    .line 21
    return-void
.end method


# virtual methods
.method vQ()V
    .locals 3

    .line 41
    const/4 v0, 0x1

    new-array v2, v0, [I

    iget v0, p0, Lo/abo;->bwI:I

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 42
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 43
    return-void
.end method

.method public ww()Ltv/periscope/android/util/Size;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/abo;->bwJ:Ltv/periscope/android/util/Size;

    return-object v0
.end method

.method public wx()I
    .locals 1

    .line 28
    iget v0, p0, Lo/abo;->bwI:I

    return v0
.end method

.method public ﹼ(II)I
    .locals 2

    .line 32
    iget v0, p0, Lo/abo;->bwI:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 33
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 34
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 35
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 36
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method
