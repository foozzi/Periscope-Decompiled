.class public Lo/abj;
.super Lo/abm;
.source ""


# static fields
.field private static bvG:[F


# instance fields
.field private bvH:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lo/abj;->bvG:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lo/abm;-><init>()V

    .line 24
    sget-object v0, Lo/abj;->bvG:[F

    invoke-static {v0}, Lo/abj;->ˊ([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {v0}, Lo/abj;->ˊ(Ljava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Lo/abj;->bvH:I

    .line 25
    return-void
.end method

.method private static ˊ(Ljava/nio/Buffer;)I
    .locals 4

    .line 56
    const/4 v0, 0x1

    new-array v3, v0, [I

    .line 57
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 58
    const/4 v0, 0x0

    aget v0, v3, v0

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 59
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x8892

    const v2, 0x88e4

    invoke-static {v1, v0, p0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 60
    const/4 v0, 0x0

    aget v0, v3, v0

    return v0
.end method

.method private static ˊ([F)Ljava/nio/FloatBuffer;
    .locals 3

    .line 64
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 66
    invoke-virtual {v2, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 67
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    return-object v2
.end method


# virtual methods
.method public vQ()V
    .locals 3

    .line 28
    const/4 v0, 0x1

    new-array v2, v0, [I

    iget v0, p0, Lo/abj;->bvH:I

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 29
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 30
    return-void
.end method

.method public vX()V
    .locals 7

    .line 33
    invoke-static {}, Lo/abp;->wy()Ltv/periscope/android/util/Size;

    move-result-object v6

    .line 34
    move-object v0, p0

    invoke-virtual {v6}, Ltv/periscope/android/util/Size;->width()I

    move-result v3

    invoke-virtual {v6}, Ltv/periscope/android/util/Size;->height()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/abj;->ʼ(IIIII)V

    .line 35
    return-void
.end method

.method public ʼ(IIIII)V
    .locals 8

    .line 38
    iget v0, p0, Lo/abj;->bvH:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 39
    iget-object v0, p0, Lo/abj;->bwC:Lo/abi;

    const-string v1, "Position"

    invoke-virtual {v0, v1}, Lo/abi;->ﹹ(Ljava/lang/String;)I

    move-result v6

    .line 40
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 41
    move v0, v6

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 43
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 44
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 45
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 46
    const/16 v0, 0x207

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 48
    invoke-static {}, Lo/abp;->wy()Ltv/periscope/android/util/Size;

    move-result-object v7

    .line 49
    iget-object v0, p0, Lo/abj;->bwC:Lo/abi;

    const-string v1, "OffsetScale"

    invoke-virtual {v0, v1}, Lo/abi;->ﹿ(Ljava/lang/String;)I

    move-result v0

    int-to-float v1, p1

    invoke-virtual {v7}, Ltv/periscope/android/util/Size;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v7}, Ltv/periscope/android/util/Size;->height()I

    move-result v2

    div-int v2, p2, v2

    int-to-float v2, v2

    int-to-float v3, p3

    invoke-virtual {v7}, Ltv/periscope/android/util/Size;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p4

    invoke-virtual {v7}, Ltv/periscope/android/util/Size;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 51
    iget-object v0, p0, Lo/abj;->bwC:Lo/abi;

    const-string v1, "Rotation"

    invoke-virtual {v0, v1}, Lo/abi;->ﹿ(Ljava/lang/String;)I

    move-result v0

    int-to-float v1, p5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 52
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 53
    return-void
.end method
