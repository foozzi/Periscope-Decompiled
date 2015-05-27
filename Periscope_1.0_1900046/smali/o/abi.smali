.class public Lo/abi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bvF:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1, p2}, Lo/abi;->ι(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x8b31

    invoke-static {v1, v0}, Lo/abi;->ʻ(ILjava/lang/String;)I

    move-result v3

    .line 20
    invoke-static {p1, p3}, Lo/abi;->ι(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x8b30

    invoke-static {v1, v0}, Lo/abi;->ʻ(ILjava/lang/String;)I

    move-result v4

    .line 22
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lo/abi;->bvF:I

    .line 23
    iget v0, p0, Lo/abi;->bvF:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 24
    iget v0, p0, Lo/abi;->bvF:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 25
    iget v0, p0, Lo/abi;->bvF:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 26
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 27
    iget v0, p0, Lo/abi;->bvF:I

    const v1, 0x8b82

    const/4 v2, 0x0

    invoke-static {v0, v1, v5, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 28
    const/4 v0, 0x0

    aget v0, v5, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t link program: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/abi;->bvF:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 33
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 34
    return-void
.end method

.method private static ʻ(ILjava/lang/String;)I
    .locals 5

    .line 61
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    .line 62
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 63
    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 64
    const/4 v0, 0x1

    new-array v4, v0, [I

    .line 65
    const v0, 0x8b81

    const/4 v1, 0x0

    invoke-static {v3, v0, v4, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 66
    const/4 v0, 0x0

    aget v0, v4, v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    return v3
.end method

.method private static ι(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    .line 74
    const/4 v3, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    move-object v3, v0

    .line 77
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 78
    const-string v5, ""

    .line 80
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    goto :goto_0

    .line 83
    :cond_0
    move-object v7, v5

    .line 87
    invoke-static {v3}, Lo/akg;->ˊ(Ljava/io/Closeable;)V

    return-object v7

    .line 84
    :catch_0
    move-exception v4

    .line 85
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load shader from resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :catchall_0
    move-exception v8

    invoke-static {v3}, Lo/akg;->ˊ(Ljava/io/Closeable;)V

    throw v8
.end method


# virtual methods
.method public tQ()V
    .locals 1

    .line 37
    iget v0, p0, Lo/abi;->bvF:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 38
    return-void
.end method

.method public tR()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 42
    return-void
.end method

.method public vQ()V
    .locals 2

    .line 53
    iget v0, p0, Lo/abi;->bvF:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 54
    iget v0, p0, Lo/abi;->bvF:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 56
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lo/abi;->bvF:I

    .line 57
    return-void
.end method

.method public ﹹ(Ljava/lang/String;)I
    .locals 1

    .line 45
    iget v0, p0, Lo/abi;->bvF:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ﹿ(Ljava/lang/String;)I
    .locals 1

    .line 49
    iget v0, p0, Lo/abi;->bvF:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
