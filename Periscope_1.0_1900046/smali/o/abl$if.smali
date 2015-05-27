.class abstract Lo/abl$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abl$ˏ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "if"
.end annotation


# instance fields
.field protected bvU:[I

.field final synthetic bvV:Lo/abl;


# direct methods
.method public constructor <init>(Lo/abl;[I)V
    .locals 1

    .line 737
    iput-object p1, p0, Lo/abl$if;->bvV:Lo/abl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    invoke-direct {p0, p2}, Lo/abl$if;->ﹶ([I)[I

    move-result-object v0

    iput-object v0, p0, Lo/abl$if;->bvU:[I

    .line 739
    return-void
.end method

.method private ﹶ([I)[I
    .locals 5

    .line 772
    iget-object v0, p0, Lo/abl$if;->bvV:Lo/abl;

    invoke-static {v0}, Lo/abl;->ˋ(Lo/abl;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/abl$if;->bvV:Lo/abl;

    invoke-static {v0}, Lo/abl;->ˋ(Lo/abl;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 773
    return-object p1

    .line 778
    :cond_0
    array-length v3, p1

    .line 779
    add-int/lit8 v0, v3, 0x2

    new-array v4, v0, [I

    .line 780
    add-int/lit8 v0, v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    add-int/lit8 v0, v3, -0x1

    const/16 v1, 0x3040

    aput v1, v4, v0

    .line 782
    iget-object v0, p0, Lo/abl$if;->bvV:Lo/abl;

    invoke-static {v0}, Lo/abl;->ˋ(Lo/abl;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 783
    const/4 v0, 0x4

    aput v0, v4, v3

    goto :goto_0

    .line 785
    :cond_1
    const/16 v0, 0x40

    aput v0, v4, v3

    .line 787
    :goto_0
    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0x3038

    aput v1, v4, v0

    .line 788
    return-object v4
.end method


# virtual methods
.method public ˊ(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 12

    .line 742
    const/4 v0, 0x1

    new-array v8, v0, [I

    .line 743
    move-object v0, p1

    iget-object v1, p0, Lo/abl$if;->bvU:[I

    move-object v6, v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_0
    const/4 v0, 0x0

    aget v9, v8, v0

    .line 749
    if-gtz v9, :cond_1

    .line 750
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_1
    new-array v10, v9, [Landroid/opengl/EGLConfig;

    .line 755
    move-object v0, p1

    iget-object v1, p0, Lo/abl$if;->bvU:[I

    move-object v3, v10

    move v5, v9

    move-object v6, v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 757
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_2
    invoke-virtual {p0, p1, v10}, Lo/abl$if;->ˊ(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;)Landroid/opengl/EGLConfig;

    move-result-object v11

    .line 760
    if-nez v11, :cond_3

    .line 761
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_3
    return-object v11
.end method

.method abstract ˊ(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;)Landroid/opengl/EGLConfig;
.end method
